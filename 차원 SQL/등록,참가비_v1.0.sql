

-----------------------wd_pay

select ms_cd from itg_stl;

select thrd_gb as pay_cde
     , kor_cd_nm as pay_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr 
  from comcm010
 where scnd_gb = 'MG01'
   and thrd_gb != '*'
 ;
 
---------------------wd_store ???????????? 이름을 어디서...

select distinct  stor_id from itg_stl
 order by stor_id 
;

select store_id
     , store_nm
     , (ROW_NUMBER() over(ORDER BY store_id )) AS sort_ordr 
  from (
		select distinct  stor_id as store_id
		     , stor_id as store_nm
		  from itg_stl
         where stor_id is not null   
       ) a;


---------------------wd_pay_mth
is_stl_mthd
;
select distinct  is_stl_mthd from itg_stl;

select thrd_gb as pay_mth_cde
      , kor_cd_nm as pay_mth_nm
      , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr 
  from comcm010
 where scnd_gb  ='CE0203'
   and thrd_gb  != '*'
;


----------------------------wd_pay_mby

select distinct  is_stl_cptr from itg_stl;

select thrd_gb as pay_mby_cde
     , kor_cd_nm  as pay_mby_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr 
from comcm010 
 where scnd_gb = 'VI0105'
   and thrd_gb != '*'
 ;

--------------------------wd_pay_compt

select distinct  is_stl_yn from itg_stl;

truncate  table kfadm.wd_pay_compt;

insert into kfadm.wd_pay_compt values('Y','결제 완료',1);
insert into kfadm.wd_pay_compt values('N','결제 미완료',2);
insert into kfadm.wd_pay_compt values('^','미입력',999999999);


---------------------------wd_regist

select distinct ftkey, team_id  from itg_stl;

select jumin , hname, lastupdate  from "player_info#" union all 
select jumin , hname, lastupdate  from "coach_info#" union all
select id, "NAME", lastupdate  from "teamtbl#"  ;



select regist_id  
     , regist_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select regist_id
		     , regist_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY regist_id  ) AS row_num
		     , sort_ordr
		  from (  
				select regist_id
				     , regist_nm
				     , brthdy
				     --, regist_nm||'/'||brthdy as hmnm_se_nm
				     , case when brthdy = '팀' 
				            then regist_nm 
				            else
						       concat(regist_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
						       CASE WHEN SUBSTRING(split_part(regist_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
						            THEN '(남)'
						            WHEN SUBSTRING(split_part(regist_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
						            then case when SUBSTRING(split_part(regist_id ::varchar, '-', 1),1,6) = '000000' 
						                      THEN '(미입력)' else '(여)' end
						            ELSE '(미입력)'  end
						    end
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(regist_nm,1,1), substring(regist_nm,2,1),substring(regist_nm,3,1),regist_id )) AS sort_ordr
				  from (       
						select regist_id 
						     , regist_nm 
						     , case when regist_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
										        when SUBSTRING(split_part(regist_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(regist_id ::varchar, '-', 1) 
											    when SUBSTRING(split_part(regist_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(regist_id ::varchar, '-', 1)
								    else '19'||split_part(regist_id ::varchar, '-', 1)
								    end  
							        when regist_id ~ '^[a-zA-Z]' then '팀'     
				               else '99991231'
				               end brthdy    
						from (
								select * from (
												select regist_id
												      , regist_nm
												      , ROW_NUM 
												      , ROW_NUMBER() OVER(PARTITION BY regist_id ORDER BY ROW_NUM DESC ) as index
												  from (
														SELECT
														   regist_id
														  , regist_nm
														  ,ROW_NUMBER() OVER( PARTITION BY regist_id ORDER BY lastupdate ) AS ROW_NUM
														FROM(select jumin as regist_id , hname as regist_nm , lastupdate  from "player_info#" union all 
															 select jumin  as regist_id , hname as regist_nm, lastupdate  from "coach_info#" union all
															 select id as regist_id , "NAME"as regist_nm, lastupdate  from "teamtbl#" ) A 
														group by regist_id, regist_nm, lastupdate) B ) C
								where index = 1 ) D ) d
					)a )b
				;


select id as regist_id ,char_length(id) , "NAME"as regist_nm, lastupdate  from "teamtbl#";
