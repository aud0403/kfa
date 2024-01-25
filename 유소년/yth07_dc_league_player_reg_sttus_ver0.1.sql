--리그별 선수 등록현황
select a.stdr_year
     , 'ES' as team_grad
     , COALESCE(a.tot_player_ac , 0) as tot_player_ac
     , COALESCE(a.tot_team_ac   , 0) as tot_team_ac
     , COALESCE(b.tot_player_cl   , 0) as tot_player_cl
     , COALESCE(b.tot_team_cl     , 0) as tot_team_cl
  from (select '${year}' as stdr_year 
		      , count(distinct player_id) as tot_player_ac
		      , count(distinct psitn_team_id) as tot_team_ac
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('ES','U2')
						   and UPPER(psitn_team_class_cde) = 'AC'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) A
	   left outer join 
       (select '${year}' as stdr_year 
		      , count(distinct player_id)  as tot_player_cl
		      , count(distinct psitn_team_id) as tot_team_cl
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('ES','U2')
						   and UPPER(psitn_team_class_cde) = 'CL'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) B
	  on A.stdr_year = b.stdr_year
union all
select a.stdr_year
     , 'MS' as team_grad
     , COALESCE(a.tot_player_ac   , 0)   as tot_player_ac  
     , COALESCE(a.tot_team_ac     , 0)   as tot_team_cl    
     , COALESCE(b.tot_player_cl   , 0)   as tot_player_cl  
     , COALESCE(b.tot_team_cl     , 0)   as tot_team_cl    
  from (select '${year}' as stdr_year 
		      , count(distinct player_id) as tot_player_ac
		      , count(distinct psitn_team_id) as tot_team_ac
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('MS','U5')
						   and UPPER(psitn_team_class_cde) = 'AC'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) A
	   left outer join 
        (select '${year}' as stdr_year 
		      , count(distinct player_id)  as tot_player_cl
		      , count(distinct psitn_team_id) as tot_team_cl
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('MS','U5')
						   and UPPER(psitn_team_class_cde) = 'CL'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) B
	  on A.stdr_year = b.stdr_year
union all
select a.stdr_year
     , 'HS' as team_grad
     , COALESCE(a.tot_player_ac   , 0)   as tot_player_ac  
     , COALESCE(a.tot_team_ac     , 0)   as tot_team_ac    
     , COALESCE(b.tot_player_cl   , 0)   as tot_player_cl  
     , COALESCE(b.tot_team_cl     , 0)   as tot_team_cl    
  from (select '${year}' as stdr_year 
		      , count(distinct player_id) as tot_player_ac
		      , count(distinct psitn_team_id) as tot_team_ac
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('HS','U8')
						   and UPPER(psitn_team_class_cde) = 'AC'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) A
	   left outer join 
       (select '${year}' as stdr_year 
		      , count(distinct player_id) as tot_player_cl
		      , count(distinct psitn_team_id) as tot_team_cl
		  from (select stdr_year   
				     , player_id 
				     , psitn_team_id
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('HS','U8')
						   and UPPER(psitn_team_class_cde) = 'CL'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a ) B
	  on A.stdr_year = b.stdr_year
;








