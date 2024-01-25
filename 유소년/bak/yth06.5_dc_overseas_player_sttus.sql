-- 해외진출 선수현황
select a.stdr_year
     , 'M' as player_sexdstn
     , count(distinct a.player_id) as ITC
     , count(distinct b.player_id) as U_12
     , count(distinct c.player_id) as CL_12
     , count(distinct d.player_id) as U_15
     , count(distinct e.player_id) as CL_15
     , count(distinct f.player_id) as U_18
     , count(distinct g.player_id) as CL_18
     , count(distinct h.player_id) as UV
     , count(distinct i.player_id) as K5
     , count(distinct J.player_id) as K3
     , count(distinct k.player_id) as K
  from (select stdr_year   
		     , player_id 
		     , team_regist_de
		     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
		  from (select distinct  stdr_year 
				     , player_id 
				     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
				     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
				  from kfadm.wf_player_sttus 
				 where  psitn_team_id LIKE '%ITC%'
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a 
	    left outer join 
	    (select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN   ('ES','U2')
		    and psitn_team_class_cde = 'AC'
		    and confm_step_cde = '2') b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN   ('ES','U2')
		    and psitn_team_class_cde = 'CL'
		    and confm_step_cde = '2') C
	 on a.player_id = C.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = C.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN  ('MS','U5') 
		    and psitn_team_class_cde = 'AC'
		    and confm_step_cde = '2') D
	 on a.player_id = D.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = D.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN  ('MS','U5') 
		    and psitn_team_class_cde = 'CL'
		    and confm_step_cde = '2') E
	 on a.player_id = E.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = E.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('HS','U8')
		    and psitn_team_class_cde = 'AC'
		    and confm_step_cde = '2') F
	 on a.player_id = F.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = F.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('HS','U8')
		    and psitn_team_class_cde = 'CL'
		    and confm_step_cde = '2') G
	 on a.player_id = G.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = G.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')
		    and confm_step_cde = '2' ) H
	 on a.player_id = H.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = H.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UC1','UC2','UC3')
		    and confm_step_cde = '2' ) I
	 on a.player_id = I.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = I.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('K3', 'K4')
		    and psitn_team_id not LIKE '%ITC%'
		    and confm_step_cde = '2' ) J
	 on a.player_id = J.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = J.stdr_year
	    left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('K1', 'K0')
		    and confm_step_cde = '2' ) K
	 on a.player_id = K.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = K.stdr_year
   group by a.stdr_year
;