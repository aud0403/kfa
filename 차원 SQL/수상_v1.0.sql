--------상벌,징계

---------------수상현황



-------------------wd_wnpz_trget

select wnpz_trget_id
     , wnpz_trget_nm
     , (ROW_NUMBER() over(ORDER BY wnpz_trget_id )) AS sort_ordr
from(
select jumin as wnpz_trget_id
     , hname  as wnpz_trget_nm
  from "match_award#"
union all
select teamid  as wnpz_trget_id
     , teamname  as wnpz_trget_nm
  from match_award_team)a;

 
 
 
 
 select wnpz_trget_id
     , wnpz_trget_nm
     , (ROW_NUMBER() over(ORDER BY wnpz_trget_id )) AS sort_ordr
from (
select * from (
select wnpz_trget_id
      , wnpz_trget_nm
      , ROW_NUM 
      , ROW_NUMBER() OVER(PARTITION BY wnpz_trget_id ORDER BY ROW_NUM DESC ) as index
  from (
		SELECT
		   wnpz_trget_id
		  , wnpz_trget_nm
		  --,(ROW_NUMBER() over(ORDER BY wnpz_trget_id )) AS sort_ordr
		  ,ROW_NUMBER() OVER( PARTITION BY wnpz_trget_id ORDER BY regdate ) AS ROW_NUM
		FROM(select jumin as wnpz_trget_id
     		   	  , hname  as wnpz_trget_nm
     		   	  , regdate
  			   from "match_award#"
			union all
			  select teamid  as wnpz_trget_id
                   , teamname  as wnpz_trget_nm
                   , regdate
  			    from match_award_team) A 
		group by wnpz_trget_id, wnpz_trget_nm, regdate) B ) C
where index = 1 ) D
where wnpz_trget_id is not null
;


 
 

------------------wd_wnpz_trget_se
 

 insert into kfadw.wd_wnpz_trget_se values ('P','선수',1);
 insert into kfadw.wd_wnpz_trget_se values ('C','지도자',2);
 insert into kfadw.wd_wnpz_trget_se values ('R','심판',3);
 insert into kfadw.wd_wnpz_trget_se values ('T','팀',4);

 select *from "match_award#";

-----------------wd_wnpz

select thrd_gb as wnpz_cde
, kor_cd_nm  as wnpz_nm
, (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
from comcm010 
 where scnd_gb in ('A01','T01')
   and frst_gb = 'MA01'
   and thrd_gb != '*'
 ;
