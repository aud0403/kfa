---------------------------wd_rwrpns_se

insert into KFADW.wd_rwrpns_se VALUES('W','상',1);
insert into KFADW.wd_rwrpns_se VALUES('D','벌',2);


----------------------------wd_rwrpns_trget_se

select rwrpns_trget_se_cde
     , rwrpns_trget_se_nm
     , (ROW_NUMBER() over(ORDER BY rwrpns_trget_se_cde)) AS sort_ordr
from (
select wnpz_trget_se_cde as rwrpns_trget_se_cde
     , wnpz_trget_se_nm  as rwrpns_trget_se_nm
 from wd_wnpz_trget_se 
 union  ALL
select dscpl_trget_se_cde as rwrpns_trget_se_cde
     , dscpl_trget_nm   as rwrpns_trget_se_nm
  from wd_dscpl_trget_se )A
 group by rwrpns_trget_se_cde, rwrpns_trget_se_nm
  ;


 
 
 
---------------------wd_rwrpns_trget

select rwrpns_trget_id  
     , rwrpns_trget_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select rwrpns_trget_id
		     , rwrpns_trget_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY rwrpns_trget_id  ) AS row_num
		     , sort_ordr
		  from (
				 select rwrpns_trget_id 
					 , rwrpns_trget_nm
					 , brthdy
					 --, rwrpns_trget_nm||'/'||brthdy as hmnm_se_nm
					 , case when brthdy = '팀' 
				            then rwrpns_trget_nm 
				            else
							 concat(rwrpns_trget_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
							    CASE WHEN SUBSTRING(split_part(rwrpns_trget_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
						            THEN '(남)'
						            WHEN SUBSTRING(split_part(rwrpns_trget_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
						            then case when SUBSTRING(split_part(rwrpns_trget_id ::varchar, '-', 1),1,6) = '000000' 
						                      THEN '(미입력)' else '(여)' end
						            ELSE '(미입력)' end 
						     end
					     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(rwrpns_trget_nm,1,1), substring(rwrpns_trget_nm,2,1),substring(rwrpns_trget_nm,3,1),rwrpns_trget_id )) AS sort_ordr 
				 from (select rwrpns_trget_id
						     , rwrpns_trget_nm
						     , case when rwrpns_trget_id ~ '^\d{6}-'
						            then case
							             when SUBSTRING(split_part(rwrpns_trget_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(rwrpns_trget_id ::varchar, '-', 1) 
								         when SUBSTRING(split_part(rwrpns_trget_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(rwrpns_trget_id ::varchar, '-', 1)
								         else '19'||split_part(rwrpns_trget_id ::varchar, '-', 1)
								         end  
								     when rwrpns_trget_id ~ '^[a-zA-Z]' then '팀' 
							  else '99991231' end brthdy
					from (select * from (
										select rwrpns_trget_id
										      , rwrpns_trget_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY rwrpns_trget_id ORDER BY ROW_NUM DESC ) as index
										  from (
										  select rwrpns_trget_id
										, rwrpns_trget_nm
										, ROW_NUMBER() OVER( PARTITION BY rwrpns_trget_id ORDER BY stdr_year ) AS ROW_NUM
										from(
										select stdr_year
										     , wnpz_trget_id as rwrpns_trget_id
										     , case  when wnpz_trget_id = '^' then '미입력' else wnpz_trget_nm end as rwrpns_trget_nm
										  from kfadm.wf_wnpz
										union all
										select wf.stdr_year
										     , wf.dscpl_trget_id as rwrpns_trget_id
										     , case when wf.dscpl_trget_id = '^' then '미입력' else wd.dscpl_trget_nm end as rwrpns_trget_nm
										  from kfadm.wf_dscpl_sttus wf 
										  join kfadm.wd_dscpl_trget wd on wf.dscpl_trget_id = wd.dscpl_trget_id  ) a
										group by stdr_year , rwrpns_trget_id,rwrpns_trget_nm
										  ) B ) C
										where index = 1 ) D) a
						)a)b
						;





-------------------------wd_rwrpns
 
select rwrpns_cde
     , rwrpns_nm
     , (ROW_NUMBER() over(ORDER BY rwrpns_cde)) AS sort_ordr
from (
 select 'W'||wnpz_cde as rwrpns_cde
      , wnpz_nm as rwrpns_nm
   from wd_wnpz
union ALL
 select 'D'||dscpl_stdr_cde as rwrpns_cde 
      , dscpl_stdr_nm as rwrpns_nm 
   from wd_dscpl_stdr ) A
  where rwrpns_nm != '미입력'
  group by rwrpns_cde, rwrpns_nm
   ;


 
 
 
