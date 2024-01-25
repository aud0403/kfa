select a.stdr_year 
     , u_13
     , u_14
     , u_15
     , u_16
     , u_17
     , u_18
     , g_uv
     , g_K5
     , coalesce(g_K4,0) as  g_K4
     , g_K3
     , g_K2
     , g_K1
  from (select a.stdr_year
		     , count(distinct a.player_id ) as ms
		     , count(distinct b.player_id ) as u_13
		     , count(distinct c.player_id ) as u_14
		     , count(distinct d.player_id ) as u_15
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('MS','U5')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0 ) a 
			   left outer join
		       (select distinct stdr_year 
		             , player_id 
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '15'
		           ) D
		     on a.player_id = D.player_id
		    and a.stdr_year = D.stdr_year
			   left outer join
		       (select distinct  stdr_year 
		             , player_id  
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '14'
		           ) c
		     on a.player_id = c.player_id
		    and a.stdr_year = c.stdr_year
		    and d.player_id is null
			   left outer join
		       (select distinct stdr_year 
		             , player_id  
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '13'
		           ) b
		     on a.player_id = b.player_id 
		    and a.stdr_year = b.stdr_year
		    and d.player_id is null
		    and c.player_id is null
		   group by a.stdr_year ) a
        left outer join 
       (select a.stdr_year 
		     , count(distinct a.player_id ) as hs
		     , count(distinct b.player_id ) as u_16
		     , count(distinct c.player_id ) as u_17
		     , count(distinct d.player_id ) as u_18
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('HS','U8')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0  ) a 
			   left outer join
		       (select distinct stdr_year 
		             , player_id 
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '18'
		           ) D
		     on a.player_id = D.player_id
		    and a.stdr_year = D.stdr_year
			   left outer join
		       (select distinct  stdr_year 
		             , player_id  
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '17'
		           ) c
		     on a.player_id = c.player_id
		    and a.stdr_year = c.stdr_year
		    and d.player_id is null
			   left outer join
		       (select distinct stdr_year 
		             , player_id  
		          from kfadm.wf_golden_age_player
		         where cnvc_team_grad_cde = '16'
		           ) b
		     on a.player_id = b.player_id 
		    and a.stdr_year = b.stdr_year
		    and d.player_id is null
		    and c.player_id is null
		  group by a.stdr_year ) b
	on a.stdr_year = b.stdr_year
       left outer join 
       (select a.stdr_year 
		     , count(distinct a.player_id) as uv
		     , count(distinct b.player_id) as g_uv
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('UV')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0  ) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		 group by a.stdr_year ) c
    on a.stdr_year = c.stdr_year 
       left outer join
       (select a.stdr_year 
		     , count(distinct a.player_id) as K5
		     , count(distinct b.player_id) as g_K5
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('UC1','UC2','UC3')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		 group by a.stdr_year ) d 
    on a.stdr_year = d.stdr_year 
       left outer join 
       (select a.stdr_year 
		     , count(distinct a.player_id) as K4
		     , count(distinct b.player_id) as g_K4
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('K4')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		 group by a.stdr_year ) e 
    on a.stdr_year = e.stdr_year 
       left outer join
       (select a.stdr_year 
		     , count(distinct a.player_id) as K3
		     , count(distinct b.player_id) as g_K3
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('K3')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		 group by a.stdr_year ) f
	on a.stdr_year = f.stdr_year
       left outer join 
       (select a.stdr_year 
		     , count(distinct a.player_id) as K2
		     , count(distinct b.player_id) as g_K2
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('K0')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		group by a.stdr_year ) g 
    on a.stdr_year = g.stdr_year
	   left outer join 
	   (select a.stdr_year 
		     , count(distinct a.player_id) as K1
		     , count(distinct b.player_id) as g_K1
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}' 
						   and confm_step_cde = '2'
						   and UPPER(psitn_team_grad_cde) in  ('K1')
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0 ) a
			    left outer join 
			    (select distinct  player_id 
			       from kfadm.wf_golden_age_player
			      where stdr_year <= '${year}' ) b
			 on a.player_id = b.player_id
		group by a.stdr_year ) h
    on a.stdr_year = h.stdr_year
 where a.stdr_year = '${year}'
;   