---------골든 에이지 

----------골든 에이지 지도자


-----------------------wd_golden_age_cnvc

---골든에이지 소집 명 확인 필요
select * from g_age_summons_info;
 
select g_summons_idx as cnvc_no
     , ''||activity||'_'||case when summons_center_cd = '1' then '지역'
	                           when summons_center_cd = '2' then '광역'
	                           when summons_center_cd = '3' then 'KFA센터'
	                           when summons_center_cd = '4' then '합동광역'
	                           when summons_center_cd = '5' then '퓨쳐'
	                           else'미등록' end ||
	                '_'|| case when summons_wide_area_cd = '1' then '서울/인천'
	                           when summons_wide_area_cd = '2' then '경기'
	                           when summons_wide_area_cd = '3' then '중부'
	                           when summons_wide_area_cd = '4' then '영남'
	                           when summons_wide_area_cd = '5' then '호남'
	                           when summons_wide_area_cd = '6' then '기타'
	                           else'미등록' end ||
	                '_'||summons_place ||'' as cnvc_nm
	  , (ROW_NUMBER() over(ORDER BY g_summons_idx )) AS sort_ordr
  from g_age_summons_info
;



-------------wd_golden_age_cnvc_coach_se

select thrd_gb as cnvc_coach_se_cde
     , kor_cd_nm as  cnvc_coach_se_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
from comcm010
 where scnd_gb = 'CO0128'
   and thrd_gb != '*'
 ;
 
----------wd_golden_age_cnter_se

select thrd_gb as cnvc_cnter_se_cde
     , kor_cd_nm as  cnvc_cnter_se_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'GD0309'
   and thrd_gb != '*' 
 ;
 
---------wd_golden_age_wdr
select SCND_GB as cnvc_wdr_cde
     , KOR_CD_NM AS cnvc_wdr_nm
     , (ROW_NUMBER() over(ORDER BY SCND_GB )) AS sort_ordr
from comcm010 
 where frst_gb = 'GD01'
   and scnd_gb  != '*'
 ;
 

------------wd_cnvc_charger
insert into kfadw.wd_cnvc_charger values ('Y','담당자 존재',1);
insert into kfadw.wd_cnvc_charger values ('N','담당자 부재',2);


-------------wd_atend
insert into kfadw.wd_atend values ('Y','출석',1);
insert into kfadw.wd_atend values ('N','미출석',2);


--------------------------wd_golden_age_grad


select thrd_gb as cnvc_team_grad_cde
     , kor_cd_nm as team_grad_nm
     ,(ROW_NUMBER() over(ORDER BY char_length(thrd_gb) , thrd_gb  )) AS sort_ordr
  from comcm010 
 where scnd_gb = 'GD0308' 
   and thrd_gb != '*'
;


--------------------골든에이지 선수

------------wd_golden_age_player

    
select  ftkey,player_hname, count(*) from "g_age_summons_player#"
 where --ftkey = '060915-81793D269219C1BC855CB58B9269B368C'
   player_hname ~ '[a-zA-Z]'
 group by ftkey, player_hname 
;
select * from "g_age_summons_player#"
 where ftkey in(
'060616-7566D2237FB8860CBD01CAC7FC9B88654'
,'060915-81793D269219C1BC855CB58B9269B368C'
,'070115-7DEA571BF9BF7D9215BAC6BB3095750A6'
,'080222-72E664F3DA34B8AFB090460DA3E785802'
,'090418-745F7B5C50FD050A93E40930A591610E2'
,'100215-7C53E5EC831179E62E7A360881BA1D428'
,'100701-744944945168D907FFB19167959DADE81'
,'100819-7CED0E7D0E2EEB0B91EBAE038B086CE57'
,'100925-777B7B96297CE40F71B8DC8AC6ECE9355'
,'101008-7A1449A74C98CD9F2EC22FA1F8AE0D7E0')
;
    

select player_id  
     , player_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select player_id
		     , player_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY player_id  ) AS row_num
		     , sort_ordr
		  from (  
				select player_id
				     , player_nm
				     , brthdy
					 --, player_nm||'/'||brthdy as hmnm_se_nm
				     , concat(player_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2)) ||
				       CASE WHEN SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(player_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end   
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(player_nm,1,1), substring(player_nm,2,1),substring(player_nm,3,1),player_id )) AS sort_ordr
				  from (
						select player_id
						     , player_nm
						     , case when player_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
									     when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(player_id ::varchar, '-', 1) 
									     when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(player_id ::varchar, '-', 1)
										 else split_part(player_id ::varchar, '-', 1)
										 end  
				                    else '99991231' end brthdy
						  from (
								select *
								  from (
										select player_id
										      , player_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY ROW_NUM DESC ) as index
										  from (
												SELECT
												   player_id
												  , player_nm
												  ,ROW_NUMBER() OVER( PARTITION BY player_id ORDER BY created_dt ) AS ROW_NUM
												FROM(select ftkey as player_id 
										   				  , player_hname as player_nm 
										  			      , created_dt
										  			   from "g_age_summons_player#") A 
												group by player_id, player_nm, created_dt) B ) C
						where index = 1 ) D
				      ) E
				    )a )b
;




-----------------------wd_act_at

truncate table kfadm.wd_act_at;

insert into kfadm.wd_act_at values ('Y','활동',1);
insert into kfadm.wd_act_at values ('N','미활동',2);
insert into kfadm.wd_act_at values ('^','미입력',999999999);


----------------------wd_golden_age_evl_opinion


select g_summons_idx||'_'||player_idx as evl_opinion_cde
 --  , REPLACE(evl_opinion_nm, CHR(13)||CHR(10)||CHR(13)||CHR(10),'')
     , case when player_grade_cmt is null then '미입력' 
            when char_length(player_grade_cmt)/20 >= 9 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,101,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,121,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,141,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,161,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,181,20)
            when char_length(player_grade_cmt)/20 >= 8 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,101,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,121,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,141,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,161,20)
            when char_length(player_grade_cmt)/20 >= 7 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,101,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,121,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,141,20)
            when char_length(player_grade_cmt)/20 >= 6 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,101,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,121,20)
            when char_length(player_grade_cmt)/20 >= 5 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,101,20)
            when char_length(player_grade_cmt)/20 >= 4 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,81,20)
            when char_length(player_grade_cmt)/20 >= 3 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,61,20)
            when char_length(player_grade_cmt)/20 >= 2 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,41,20)     
            when char_length(player_grade_cmt)/20 >= 1 then substring(player_grade_cmt,1,20)||CHR(13) || CHR(10)||CHR(13) || CHR(10)||
            												substring(player_grade_cmt,21,20)   
            else player_grade_cmt
     end as evl_opinion_nm
     , (ROW_NUMBER() over(ORDER BY  g_summons_idx||'_'||player_idx )) AS sort_ordr
 from "g_age_player_rating#"
 --where char_length(player_grade_cmt) > 190
 ;







-----------------------wd_golden_age_traing_place


select summons_place as traing_place_nm
     , (ROW_NUMBER() over(ORDER BY  summons_place )) AS sort_ordr
  from g_age_summons_info
 group by summons_place
 order by summons_place 
;

------------------------------wd_golden_age_cnvc_sttus

truncate table kfadm.wd_golden_age_cnvc_sttus;

insert into kfadm.wd_golden_age_cnvc_sttus values('0','작성중',1);
insert into kfadm.wd_golden_age_cnvc_sttus values('1','소집확정',2);
insert into kfadm.wd_golden_age_cnvc_sttus values('2','소집확정(평가중)',3);
insert into kfadm.wd_golden_age_cnvc_sttus values('3','소집확정(평가완료)',4);
insert into kfadm.wd_golden_age_cnvc_sttus values('^','미입력',999999999);





