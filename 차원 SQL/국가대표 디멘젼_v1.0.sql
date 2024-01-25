----국가대표 지도자


------wd_nl_team_cnvc
selec --split_part(summons_start::VARCHAR, '-',1) as STDR_YEAR ,
      IDX as nl_team_cnvc_no
     , title as nl_team_cnvc_nm
     , (ROW_NUMBER() over(ORDER BY IDX )) AS sort_ordr
  from national_summons_info
 order by IDX
 ; 
 

-------wd_nl_team_cmpet
select  --split_part(match_start ::VARCHAR, '-',1) as STDR_YEAR ,
      IDX as nl_team_cmpet_no
     , MATCH_TITLE as nl_team_cmpet_nm
     , (ROW_NUMBER() over(ORDER BY IDX )) AS sort_ordr
  from national_match_info;
  
------wd_nl_team_game

select  -- split_part(game_time ::VARCHAR, '-',1) as STDR_YEAR ,
      a.idx as nl_team_game_no
     , ''||c.kor_cd_nm ||' vs '||vs_team||'' as nl_team_game_nm
     , (ROW_NUMBER() over(ORDER BY a.IDX )) AS sort_ordr
  from (select nmsi.idx, nmi.match_grade, nmsi.game_time, nmsi.vs_team  
          from national_match_single_info nmsi 
          left join national_match_info nmi 
                 on nmsi.match_idx = nmi.idx) a 
  left  outer join comcm010 c
         on a.match_grade = c.thrd_gb 
 where c.scnd_gb = 'A06'
           ;
                
---------------wd_amatch
insert into wd_amatch values('Y','A매치',1);
insert into wd_amatch values('N','A매치아님',2);


-------------  wd_nl_team_grad
select match_grade  from national_match_info;


select thrd_gb as nl_team_grad_cde
     , kor_cd_nm  as nl_team_grad_nm
     , (ROW_NUMBER() over(ORDER by substring(thrd_gb,1,1) desc ,substring(eng_cd_nm,16,1), thrd_gb desc)) AS sort_ordr
  from comcm010
 where scnd_gb = 'A06'
   and thrd_gb != '*'
;



--------------------국가대표대회

----------------wd_nl_team_cmpet_knd
select match_type from national_match_info nmi;

select thrd_gb as nl_team_cmpet_knd_cde
     , kor_cd_nm as nl_team_cmpet_knd_nm
     , (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
from comcm010 
 where frst_gb = 'NA01'
   and scnd_gb in ('A02','A03')
   and thrd_gb != '*'
;




----------------wd_home_away_se

select summons_section  from national_match_single_info;

select thrd_gb  as home_away_se_cde
     , kor_cd_nm  ashome_away_se_nm
     , (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
  from comcm010 
 where scnd_gb  = 'A13'
   and thrd_gb  != '*'
;



--------------wd_victry_ty
select distinct  victorytype from national_match_single_result;


select thrd_gb   as victry_ty_cde
     , kor_cd_nm as victry_ty_nm
     , (ROW_NUMBER() over(ORDER by char_length(thrd_gb),thrd_gb)) AS sort_ordr
     from comcm010 
 where scnd_gb = 'MA0407'
   and thrd_gb != '*'
 ;


------------------wd_game_result
select distinct  gameresult from national_match_single_result;
truncate table wd_game_result;

insert into wd_game_result values ('1','승',1);
insert into wd_game_result values ('2','패',2);
insert into wd_game_result values ('3','무승부',3);



--------------------국가대표 팀


------------wd_nl_team_mbr

select a.mbr_id
     , a.mbr_nm
     ,(ROW_NUMBER() over(ORDER by a.mbr_id)) AS sort_ordr
from (
select jn as mbr_id
     , hname as mbr_nm
from "national_coach_staff#"
union all
select usrkey as mbr_id 
     , hname as mbr_nm
from  national_summons_player) a;


select * from joinkfa."national_coach_staff#";


select mbr_id
     , mbr_nm
     ,(ROW_NUMBER() over(ORDER by a.mbr_id)) AS sort_ordr    
from(
	select coach_idx || '_' || jn AS mbr_id
	     , hname as mbr_nm
	     , lastupdate
	  from joinkfa."national_coach_staff#"
	 union all
	select usrkey as mbr_id 
	     , hname as mbr_nm
	     , lastupdate
	from  joinkfa.national_summons_player
) a
where mbr_id is not null
  --and mbr_nm = '최주영'
 group by mbr_id
        , mbr_nm
;
select mbr_id  
     , mbr_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select mbr_id
		     , mbr_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY mbr_id  ) AS row_num
		     , sort_ordr
		  from (        
				select mbr_id
				     , mbr_nm
				     , brthdy
					-- , mbr_nm||'/'||brthdy as hmnm_se_nm
				     , concat(mbr_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				       CASE WHEN SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(mbr_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(mbr_nm,1,1), substring(mbr_nm,2,1),substring(mbr_nm,3,1),mbr_id )) AS sort_ordr
				  from (       
						select mbr_id 
						     , case when mbr_nm is null then '미입력' else mbr_nm end as mbr_nm
						     , case when mbr_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							        when SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(mbr_id ::varchar, '-', 1) 
								    when SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(mbr_id ::varchar, '-', 1)
								    else '19'||split_part(mbr_id ::varchar, '-', 1)
								    end  
							  else '99991231' end brthdy
						from (
								select * from (
												select mbr_id
												      , mbr_nm
												      , ROW_NUM 
												      , ROW_NUMBER() OVER(PARTITION BY mbr_id ORDER BY ROW_NUM DESC ) as index
												  from (
														SELECT
														   mbr_id
														  , mbr_nm
														  ,ROW_NUMBER() OVER( PARTITION BY mbr_id ORDER BY lastupdate ) AS ROW_NUM
														FROM(select coach_idx || '_' || jn AS mbr_id
															      , hname as mbr_nm
														          , lastupdate
															   from joinkfa."national_coach_staff#"
														      union all
														    select usrkey as mbr_id 
														         , hname as mbr_nm
														         , lastupdate
														     from  joinkfa.national_summons_player) A 
														group by mbr_id, mbr_nm, lastupdate) B ) C
								where index = 1 ) D) d
						where d.mbr_id is not null
				)a )b
;
	
 
		      
       
       
 
select * from joinkfa."national_coach_staff#"
-- where jn = '000000-0D84678C95ADC9623C5D32546CCCD9A1D'
 --where jn = '590118-10E429F1B41B521091C1900EBE75CAC81'
 where hname like '%1'
;

select * from joinkfa.national_summons_player 
;


----------------wd_nl_team_mbr_se

select A.mbr_se_cde
     , A.mbr_se_nm
     ,(ROW_NUMBER() over(ORDER by mbr_se_cde)) AS sort_ordr
from (
select kor_cd_nm as mbr_se_cde
     , kor_cd_nm  as mbr_se_nm
  from comcm010
 where scnd_gb ='DG01' 
   and thrd_gb !='*'
union all 
select '코치' as mbr_se_cde
     , '코치' as mbr_se_nm
union all 
select '감독대행' as mbr_se_cde
     , '감독대행' as mbr_se_nm
union all 
select '감독' as mbr_se_cde
     , '감독' as mbr_se_nm
union all 
select 'GK' as mbr_se_cde
     , 'GK' as mbr_se_nm
union all 
select 'MF' as mbr_se_cde
     , 'MF' as mbr_se_nm
union all 
select 'FW' as mbr_se_cde
     , 'FW' as mbr_se_nm
union all 
select 'DF' as mbr_se_cde
     , 'DF' as mbr_se_nm
union all 
select 'playing 코치' as mbr_se_cde
     , 'playing 코치' as mbr_se_nm
     ) A
;


 insert into kfadm.wd_nl_team_mbr_se values('^','미입력',999999999);



select * from "national_coach_staff#";


------------국가대표 선수



select char_length(height) ,char_length(bdwgh)  from test_wf_golden_age_player 
  where stdr_year = '2019'
    and cnvc_no  = '3601'
    and player_id ='060120-3985EC30159EBF198DF5503EB00C5A05E' 
;


----------wd_nl_team_player

select * from (
select nl_team_player_id, count (*) cnt from (
select nl_team_player_id  
     , nl_team_player_nm
     , (ROW_NUMBER() over(ORDER by nl_team_player_id)) AS sort_ordr
  from (
select  CASE WHEN usrkey IS NULL THEN '^' ELSE usrkey END AS nl_team_player_id
     , case when usrkey is null then '미입력' else hname end as nl_team_player_nm 
     --, (ROW_NUMBER() over(ORDER by usrkey)) AS sort_ordr
  from national_summons_player 
 --where usrkey = '721010-13991EF3F8E9EC9DA9ACF5EAF2BA9902C'
 -- and hname != '곽경근1'
  ) a
 --where char_length( nl_team_player_id) = 6
  --where nl_team_player_id ='590412'
 group by nl_team_player_id , nl_team_player_nm )a
 group by nl_team_player_id ) b 
 where cnt = 2
 order by nl_team_player_id 
;


select usrkey, hname from national_summons_player 
 where usrkey  in('721010-13991EF3F8E9EC9DA9ACF5EAF2BA9902C',
'731225',
'761017-103138009EA50EC4AF0C52E4B0FEDCAF8',
'770329',
'770617',
'800605-1B8328AA80168F6ADA06EA70A7A05AC89',
'830425-1B404FF35D2DC4D9DAEF0D2A0DBB3BA1C',
'880904-1F6609456D45E4CFFD3D44800DD5EF04B',
'950523-1724FDF96EBA730207F254F03CB0E5F63',
'990308-14D21D5F0D409DC63BC0C2C7BE2D96A29')
group by usrkey, hname
order by usrkey, hname 
;

select nl_team_player_id  
     , nl_team_player_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select nl_team_player_id
		     , nl_team_player_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY nl_team_player_id  ) AS row_num
		     , sort_ordr
		  from (       
				select nl_team_player_id
				     , nl_team_player_nm
				     , brthdy
					-- , nl_team_player_nm||'/'||brthdy as hmnm_se_nm
				     , concat(nl_team_player_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				        CASE WHEN SUBSTRING(split_part(nl_team_player_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(nl_team_player_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(nl_team_player_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(nl_team_player_nm,1,1), substring(nl_team_player_nm,2,1),substring(nl_team_player_nm,3,1),nl_team_player_id )) AS sort_ordr
				  from (
						 select player_id as nl_team_player_id
						     ,  case when player_nm  is null then '미입력' else player_nm end as nl_team_player_nm
						     , case when player_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							        when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(player_id ::varchar, '-', 1) 
								    when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(player_id ::varchar, '-', 1)
								    else '19'||split_part(player_id ::varchar, '-', 1)
								    end  
				               else '99991231' end brthdy
						from (
						select * from (
						select player_id
						      , player_nm
						      , ROW_NUM 
						      , ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY ROW_NUM DESC ) as index
						  from (
								SELECT
								   player_id
								  , player_nm
								  , ROW_NUMBER() OVER( PARTITION BY player_id ORDER BY upd_reg_dt ) AS ROW_NUM
								FROM(select usrkey as player_id
										   , hname  as player_nm
										   , upd_reg_dt 
										from national_summons_player) A 
								group by player_id, player_nm, upd_reg_dt) B ) C
						where index = 1 ) D ) a
				where nl_team_player_id is not null
				) a) b
;


--------------------wd_shot_on_target
 
select esyn from "national_match_score#" ;

insert into wd_shot_on_target values('Y','유효슈팅',1);
insert into wd_shot_on_target values('N','유효슈팅아님',2);


 ---------------------wd_nl_team_coach


 
select jn, hname  from  "national_coach_staff#";
'1108_590118-10E429F1B41B521091C1900EBE75CAC81'

 
select * from kfadw.wf_nl_coach ;
select distinct coach_cnvc_end_dat from kfadw.wf_nl_coach ;


select nl_team_coach_id  
     , nl_team_coach_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select nl_team_coach_id
		     , nl_team_coach_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY nl_team_coach_id  ) AS row_num
		     , sort_ordr
		  from (  
				select coach_mapng_id  as nl_team_coach_id
					 , coach_nm as nl_team_coach_nm
					 , brthdy
				--	 , coach_nm||'/'||brthdy as hmnm_se_nm
				 	 , concat(coach_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				 	    CASE WHEN SUBSTRING(split_part(coach_mapng_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(coach_mapng_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(coach_mapng_id ::varchar, '_', 2),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				 	 as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(coach_nm,1,1), substring(coach_nm,2,1),substring(coach_nm,3,1),coach_mapng_id )) AS sort_ordr 
				 from (select coach_mapng_id
						     , case when coach_nm is null then '미입력' else coach_nm end as coach_nm
						     , case when SUBSTRING(split_part(coach_mapng_id ::varchar, '_', 2),1,6) = '000000'
				              		then '99991231'
							        when coach_mapng_id ~ '_\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							        	 when SUBSTRING(split_part(coach_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(coach_id ::varchar, '-', 1) 
								    	 when SUBSTRING(split_part(coach_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(coach_id ::varchar, '-', 1)
								      	 else '19'||split_part(coach_id ::varchar, '-', 1)
								     	 end  
				              	 	 else '99991231' end brthdy
					from (select * from (select coach_mapng_id
					                          , coach_id
										      , coach_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY coach_mapng_id ORDER BY ROW_NUM DESC ) as index
										  from (SELECT coach_mapng_id
										             , coach_id
													 , coach_nm
													 , ROW_NUMBER() OVER( PARTITION BY coach_mapng_id ORDER BY coach_cnvc_end_dat ) AS ROW_NUM
												 from (select coach_mapng_id 
												            , coach_id
											   			    , coach_nm 
											  			    , coach_cnvc_end_dat
											  			 from kfadm.wf_nl_coach ) A 
												group by coach_mapng_id, coach_nm, coach_cnvc_end_dat, coach_id) B ) C
								where index = 1 ) D) a
					)c)d
				;

			
			
-------------------wd_nl_game_place

select game_area  as game_place_nm
     , (ROW_NUMBER() over(ORDER by game_area)) AS sort_ordr
  from national_match_single_info
 group by game_area
  ;
			
-------------------------wd_nl_at

 truncate table kfadm.wd_nl_at;

			
insert into kfadm.wd_nl_at values('Y','Y',1);
insert into kfadm.wd_nl_at values('N','N',2);
insert into kfadm.wd_nl_at values('^','미입력',999999999);
			
			
			
			
