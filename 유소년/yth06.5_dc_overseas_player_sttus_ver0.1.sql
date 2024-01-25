-- 해외진출 선수현황
select a.stdr_year
     , 'M' as player_sexdstn
     , COUNT( distinct A.player_id) as itc
     , sum ( case when b.psitn_team_grad_cde IN ('ES','U2') and b.psitn_team_class_cde = 'AC' then 1 else 0 end ) as u_12
     , sum ( case when b.psitn_team_grad_cde IN ('ES','U2') and b.psitn_team_class_cde = 'CL' then 1 else 0 end ) as cl_12
     , sum ( case when b.psitn_team_grad_cde IN ('MS','U5') and b.psitn_team_class_cde = 'AC' then 1 else 0 end ) as u_15
     , sum ( case when b.psitn_team_grad_cde IN ('MS','U5') and b.psitn_team_class_cde = 'CL' then 1 else 0 end ) as cl_15
     , sum ( case when b.psitn_team_grad_cde IN ('HS','U8') and b.psitn_team_class_cde = 'AC' then 1 else 0 end ) as u_18
     , sum ( case when b.psitn_team_grad_cde IN ('HS','U8') and b.psitn_team_class_cde = 'CL' then 1 else 0 end ) as cl_18
     , COUNT( distinct C.player_id) as uv
     , COUNT( distinct d.player_id) as k5
     , COUNT( distinct E.player_id) as k3
     , COUNT( distinct f.player_id) as k1
  from (select distinct  stdr_year   
		     ,  player_id
		     --, team_regist_de
		     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
		  from (select distinct  stdr_year 
				     , player_id 
				     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
				     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
				  from kfadm.wf_player_sttus 
				 where  psitn_team_id LIKE '%ITC%'
				   and  stdr_year = '${year}'
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a 
	    left outer join 
	    (select distinct  stdr_year
		      , player_id
		      , psitn_team_grad_cde
		      , psitn_team_class_cde
		   from kfadm.wf_player_sttus
		  where confm_step_cde = '2'
		  ) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and psitn_team_grad_cde in  ('UV') 
					  group by stdr_year, player_id
		  ) C
	  on A.player_id= C.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = C.stdr_year
	     left outer join 
	    (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and psitn_team_grad_cde in  ('UC1','UC2','UC3') 
					  group by stdr_year, player_id
		  ) d
	  on A.player_id= d.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = d.stdr_year
	     left outer join 
	    (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and psitn_team_grad_cde in  ('K3','K4') 
					   and psitn_team_id not like 'ITC%'
					   and  stdr_year = cast(cast('${year}' as numeric) -1  as varchar) 
					  group by stdr_year, player_id
		  ) E
	  on A.player_id= E.player_id
	     left outer join 
	    (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and psitn_team_grad_cde in  ('K0','K1') 
					  -- and psitn_team_id not like 'ITC%'
					   and  stdr_year = cast(cast('${year}' as numeric) -1  as varchar) 
					  group by stdr_year, player_id
		  ) f
	  on A.player_id= f.player_id
  group by a.stdr_year
	   