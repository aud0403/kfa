
----------------------------------wd_confm_sttus


select  distinct status from "trade_request#";


select thrd_gb  as confm_sttus_cde
     , kor_cd_nm  as confm_sttus_nm
     , (ROW_NUMBER() over(ORDER BY char_length (thrd_gb), thrd_gb )) AS sort_ordr
  from comcm010 
 where scnd_gb = 'PR0102'
   and thrd_gb != '*'
  order by char_length (thrd_gb), thrd_gb 
;

------------------------------------wd_confm_result

truncate table kfadm.wd_confm_result;

insert into kfadm.wd_confm_result values('C','완료',1);
insert into kfadm.wd_confm_result values('R','반려',2);
insert into kfadm.wd_confm_result values('P','진행',3);
insert into kfadm.wd_confm_result values('^','미입력',999999999);


---------------------------------wd_agent

select ausrkey 
     , hname
     , fst_reg_dt 
  from "agent_info#"
;

select agent_id  
     , agent_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select agent_id
		     , agent_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY agent_id  ) AS row_num
		     , sort_ordr
		  from (        
				select agent_id
				     , agent_nm
				     , brthdy
					-- , agent_nm||'/'||brthdy as hmnm_se_nm
				     , concat(agent_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				            CASE WHEN SUBSTRING(split_part(agent_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(agent_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(agent_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(agent_nm,1,1), substring(agent_nm,2,1),substring(agent_nm,3,1),agent_id )) AS sort_ordr
				  from (       
						select agent_id 
						     , case when agent_nm is null then '미입력' else agent_nm END as agent_nm
						     , case when agent_id ~ '\d{6}'
						            then case
								         when SUBSTRING(split_part(agent_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(agent_id ::varchar, '-', 1) 
									     when SUBSTRING(split_part(agent_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(agent_id ::varchar, '-', 1)
									     else '19'||split_part(agent_id ::varchar, '-', 1)
								         end  
				                    else '99991231' end brthdy
						from (
								select * from (
												select agent_id
												      , agent_nm
												      , ROW_NUM 
												      , ROW_NUMBER() OVER(PARTITION BY agent_id ORDER BY ROW_NUM DESC ) as index
												  from (
														SELECT
														   agent_id
														  , agent_nm
														  ,ROW_NUMBER() OVER( PARTITION BY agent_id ORDER BY fst_reg_dt ) AS ROW_NUM
														FROM(select ausrkey as agent_id
															     , hname as agent_nm
															     , fst_reg_dt 
															  from joinkfa."agent_info#"
															  ) A 
														group by agent_id, agent_nm, fst_reg_dt) B ) C
								where index = 1 ) D) d
				)a)b

;
	

--------------------------------------wd_native

truncate table kfadm.wd_native;

insert into kfadm.wd_native values('Y','내국인',1);
insert into kfadm.wd_native values('N','외국인',2);
insert into kfadm.wd_native values('^','미입력',999999999);

--------------------------------------wd_agent_act_se


truncate table kfadm.wd_agent_act_se;

insert into kfadm.wd_agent_act_se values('C','생성',1);
insert into kfadm.wd_agent_act_se values('A','활동',2);
insert into kfadm.wd_agent_act_se values('J','징계',3);
insert into kfadm.wd_agent_act_se values('S','정지',4);
insert into kfadm.wd_agent_act_se values('^','미입력',999999999);


-----------------------------------------wd_agent_apply_se


select * from "agent_approval#";


truncate table kfadm.wd_agent_apply_se;

insert into kfadm.wd_agent_apply_se values('C','신규신청',1);
insert into kfadm.wd_agent_apply_se values('R','갱신',2);
insert into kfadm.wd_agent_apply_se values('^','미입력',999999999);


------------------------------------------wd_agent_confm_step

select distinct  step from "agent_approval#";

truncate table kfadm.wd_agent_confm_step;

insert into kfadm.wd_agent_confm_step values('0','신규신청',1);
insert into kfadm.wd_agent_confm_step values('1','1차승인',2);
insert into kfadm.wd_agent_confm_step values('2','2차승인',3);
insert into kfadm.wd_agent_confm_step values('8','반려',4);
insert into kfadm.wd_agent_confm_step values('^','미입력',999999999);


---------------------wd_agent_cmpny


select company  as psitn_cmpny_nm
     , (ROW_NUMBER() over(ORDER BY company)) AS sort_ordr
  from "agent_info#"
 group by company
  ;



