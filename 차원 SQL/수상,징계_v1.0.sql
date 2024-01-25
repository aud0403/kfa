--------상벌,징계


 
 -----------wd_dscpl_trget_se

 select distinct  disciplinary_type from "match_disciplinary#";
 
select scnd_gb as dscpl_trget_se_cde
     , kor_cd_nm  as dscpl_trget_nm
     , (ROW_NUMBER() over(ORDER BY scnd_gb )) AS sort_ordr
      from comcm010 
 where frst_gb  = 'F12'
  -- and thrd_gb != '*'
   and scnd_nm is not NULL
 ;
 

---------wd_dscpl_trget



select dscpl_trget_id  
     , dscpl_trget_NM
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select dscpl_trget_id
		     , dscpl_trget_NM
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY dscpl_trget_id  ) AS row_num
		     , sort_ordr
		  from ( 
				select dscpl_trget_id 
					 , dscpl_trget_NM
					 , brthdy
					-- , dscpl_trget_NM||'/'||brthdy as hmnm_se_nm
					 , case when brthdy = '팀' 
				            then dscpl_trget_NM 
				            else
								 concat(dscpl_trget_NM,'.',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
								   CASE WHEN SUBSTRING(split_part(dscpl_trget_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
							            THEN '(남)'
							            WHEN SUBSTRING(split_part(dscpl_trget_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
							            then case when SUBSTRING(split_part(dscpl_trget_id ::varchar, '-', 1),1,6) = '000000' 
							                      THEN '(미입력)' else '(여)' end
							            ELSE '(미입력)' end 
						     end as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(dscpl_trget_NM,1,1), substring(dscpl_trget_NM,2,1),substring(dscpl_trget_NM,3,1),dscpl_trget_id )) AS sort_ordr 
				 from (select dscpl_trget_id
						     , dscpl_trget_NM
						     , case when dscpl_trget_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							             when SUBSTRING(split_part(dscpl_trget_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(dscpl_trget_id ::varchar, '-', 1) 
								         when SUBSTRING(split_part(dscpl_trget_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(dscpl_trget_id ::varchar, '-', 1)
								         else '19'||split_part(dscpl_trget_id ::varchar, '-', 1)
								         end  
								    when dscpl_trget_id ~ '^[a-zA-Z]' then '팀' 
				               else '99991231' end brthdy
						from (
						select * from (
										select dscpl_trget_id
										      , dscpl_trget_NM
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY dscpl_trget_id ORDER BY ROW_NUM DESC ) as index
										  from (
												SELECT
												   dscpl_trget_id
												  , dscpl_trget_NM
												  ,ROW_NUMBER() OVER( PARTITION BY dscpl_trget_id ORDER BY regdate ) AS ROW_NUM
												FROM(select CASE WHEN disciplinary_type = 'T' THEN teamid
												                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN ftkey
												                    ELSE '^' END AS dscpl_trget_id 
												             , CASE WHEN disciplinary_type = 'T' THEN TEAMNAME
												                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN HNAME
												                    ELSE '미입력' END AS dscpl_trget_NM
												             , regdate
												          from "match_disciplinary#") A 
												group by dscpl_trget_id, dscpl_trget_nm, regdate) B ) C
										where index = 1 
						)D) a
				)a)b
;



---------------wd_dscpl_stdr

select distinct  disciplinary_code from "match_disciplinary#";


select thrd_gb  as dscpl_stdr_cde
     , kor_cd_nm  as dscpl_stdr_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 
 where frst_gb in ('F11','F12')
   and thrd_gb != '*'
 group by thrd_gb , kor_cd_nm 
 ;


----------------wd_dscpl_mby

select thrd_gb as dscpl_mby_cde
     , kor_cd_nm  as dscpl_mby_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 
 where scnd_gb = 'DS0103'
   and thrd_gb != '*'
 ;

-----------wd_dscpl_ty_1

select distinct  d_kind_code1  from "match_disciplinary#";

select thrd_gb as dscpl_ty_1_cde
     , kor_cd_nm  as dscpl_ty_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where frst_gb = 'FD01'
   and char_length(thrd_gb) = '4'
 ;

-----------wd_dscpl_ty_2

select thrd_gb as dscpl_ty_2_cde
     , kor_cd_nm  as dscpl_ty_nm
     ,(ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'F20'
   and char_length(thrd_gb) = '6' 
 ;

-----------wd_dscpl_ty_3

select thrd_gb as dscpl_ty_3_cde
     , kor_cd_nm  as dscpl_ty_nm
     ,(ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'F20'
   and char_length(thrd_gb) = '8' 
 ;

----------wd_dscpl_knd

select distinct  mdd_knd  from "match_disciplinary#";

select thrd_gb as dscpl_knd_cde
     , kor_cd_nm as dscpl_knd_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0106'
   and thrd_gb != '*'
;

-----------------wd_dscpl_pd

select distinct  mdd_dscp_wm  from "match_disciplinary#";

insert into wd_dscpl_pd values ('1','개월',1);
insert into wd_dscpl_pd values ('2','주',2);


-----------------wd_expans_requst

insert into wd_expans_requst values ('Y','확정요청',1);
insert into wd_expans_requst values ('N','요청안함',2);




-------------------wd_dscpl_qualf_scope


select thrd_gb as dscpl_qualf_scope_cde
     , kor_cd_nm as dscpl_qualf_scope_nm
     , (ROW_NUMBER() over(ORDER BY char_length(thrd_gb),thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0102'
   and thrd_gb != '*'
;

-------------------wd_playng_imprty_scope

select distinct  d_bound_ml  from "match_disciplinary#";


select thrd_gb as playng_imprty_scope_cde
     , kor_cd_nm  as playng_imprty_scope_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0101'
  and thrd_gb != '*'
 ;

--------------------wd_dscpl_end
insert into KFADW.wd_dscpl_end values ('Y','종료',1);
insert into KFADW.wd_dscpl_end values ('N','미종료',2);

---------------수상현황



-------------------wd_wnpz_trget






select wnpz_trget_id  
     , wnpz_trget_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select wnpz_trget_id
		     , wnpz_trget_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY wnpz_trget_id  ) AS row_num
		     , sort_ordr
		  from ( 
				select wnpz_trget_id 
					 , wnpz_trget_nm
					 , brthdy
					-- , wnpz_trget_nm||'/'||brthdy as hmnm_se_nm
					 ,  case when brthdy = '팀' 
				            then wnpz_trget_nm 
				            else
								 concat(wnpz_trget_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
								    CASE WHEN SUBSTRING(split_part(wnpz_trget_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
							            THEN '(남)'
							            WHEN SUBSTRING(split_part(wnpz_trget_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
							            then case when SUBSTRING(split_part(wnpz_trget_id ::varchar, '-', 1),1,6) = '000000' 
							                      THEN '(미입력)' else '(여)' end
							            ELSE '(미입력)' end  
							 end
				 	  as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(wnpz_trget_nm,1,1), substring(wnpz_trget_nm,2,1),substring(wnpz_trget_nm,3,1),wnpz_trget_id )) AS sort_ordr 
				 from (select wnpz_trget_id
						     , wnpz_trget_nm
						     , case when wnpz_trget_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							        when SUBSTRING(split_part(wnpz_trget_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(wnpz_trget_id ::varchar, '-', 1) 
								    when SUBSTRING(split_part(wnpz_trget_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(wnpz_trget_id ::varchar, '-', 1)
								    else '19'||split_part(wnpz_trget_id ::varchar, '-', 1)
								    end  
								    when wnpz_trget_id ~ '^[a-zA-Z]' then '팀'
							   else '99991231' end brthdy
					from (select * from (
										select wnpz_trget_id
										      , wnpz_trget_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY wnpz_trget_id ORDER BY ROW_NUM DESC ) as index
										  from (
										  select wnpz_trget_id
										, wnpz_trget_nm
										, ROW_NUMBER() OVER( PARTITION BY wnpz_trget_id ORDER BY regdate ) AS ROW_NUM
										from(
										select wnpz_trget_id
										     , wnpz_trget_nm
										     , regdate
										from(
										select jumin as wnpz_trget_id
										     , hname  as wnpz_trget_nm
										     , regdate
										  from "match_award#"
										union all
										select teamid  as wnpz_trget_id
										     , teamname  as wnpz_trget_nm
										     , regdate
										  from match_award_team)a ) a
										group by wnpz_trget_id,wnpz_trget_nm , regdate
										  ) B ) C
										where index = 1 ) D) a
					where wnpz_trget_id is not null
			)a)b
;

------------------wd_wnpz_trget_se
 
 select *from "match_award#";
 insert into kfadw.wd_wnpz_trget_se values ('P','선수',1);
 insert into kfadw.wd_wnpz_trget_se values ('C','지도자',2);
 insert into kfadw.wd_wnpz_trget_se values ('R','심판',3);
 insert into kfadw.wd_wnpz_trget_se values ('T','팀',4);



-----------------wd_wnpz
 
select thrd_gb as wnpz_cde
, kor_cd_nm  as wnpz_nm
, (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
from comcm010 
 where scnd_gb in ('A01','T01','A02','A03')
   and frst_gb = 'MA01'
   and thrd_gb != '*'
 ;
insert into kfadm.wd_wnpz values('N','해당없음',999999998);









