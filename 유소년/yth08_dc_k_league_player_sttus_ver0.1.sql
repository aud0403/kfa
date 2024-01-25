
select '${year}' as stdr_year 
     , 'K'AS team_grad 
     , A.*
     , (tot_co-uv_co-hs_co-cl_co) as gen_co
     , round((cast((tot_co-uv_co-hs_co-cl_co)as double precision)/tot_co*100)::numeric, 2 ) as gen_rate
     , round((cast(uv_co as double precision)/tot_co*100)::numeric, 2 ) as uv_rate
     , round((cast(hs_co as double precision)/tot_co*100)::numeric, 2 ) as hs_rate
     , round((cast(cl_co as double precision)/tot_co*100)::numeric, 2 ) as cl_rate
     , 1 as RN
  from (select COUNT(distinct  a.player_id ) as tot_co
		     , COUNT(distinct  b.player_id ) as uv_co
			 , COUNT(distinct  c.player_id ) as hs_co
			 , COUNT(distinct  d.player_id ) as cl_co
		  from (select A.stdr_year   
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
								   and UPPER(psitn_team_grad_cde) in  ('K1','K0')
								  group by stdr_year, player_id, psitn_team_id
						        ) A
							    where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
							    ) a 
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('UV')
								    and confm_step_cde = '2') b
							 on a.player_id = b.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('HS','U8')
								    and confm_step_cde = '2') C
							 on a.player_id = C.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
							and b.player_id is null
							    left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde not IN  ('HS','U8','UV')
								    and psitn_team_class_cde = 'CL'
								    and confm_step_cde = '2') D
							 on a.player_id = D.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = D.stdr_year
							and b.player_id is null
							and c.player_id is null
		 ) A
union ALL
select '${year}' as stdr_year 
     , 'K3'AS team_grad 
     , A.*
     , (tot_co-uv_co-hs_co-cl_co) as gen_co
     , round((cast((tot_co-uv_co-hs_co-cl_co)as double precision)/tot_co*100)::numeric, 2 ) as gen_rate
     , round((cast(uv_co as double precision)/tot_co*100)::numeric, 2 ) as uv_rate
     , round((cast(hs_co as double precision)/tot_co*100)::numeric, 2 ) as hs_rate
     , round((cast(cl_co as double precision)/tot_co*100)::numeric, 2 ) as cl_rate
     , 1 as RN
  from (select COUNT(distinct  a.player_id ) as tot_co
		     , COUNT(distinct  b.player_id ) as uv_co
			 , COUNT(distinct  c.player_id ) as hs_co
			 , COUNT(distinct  d.player_id ) as cl_co
		  from (select A.stdr_year   
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
								   and UPPER(psitn_team_grad_cde) in  ('K3','K4')
								  group by stdr_year, player_id, psitn_team_id
						        ) A
							    where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
							    ) a 
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('UV')
								    and confm_step_cde = '2') b
							 on a.player_id = b.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('HS','U8')
								    and confm_step_cde = '2') C
							 on a.player_id = C.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
							and b.player_id is null
							    left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde not IN  ('HS','U8','UV')
								    and psitn_team_class_cde = 'CL'
								    and confm_step_cde = '2') D
							 on a.player_id = D.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = D.stdr_year
							and b.player_id is null
							and c.player_id is null
		 ) A
union ALL
select '${year}' as stdr_year 
     , 'K5' as  team_grad 
     , A.*
     , (tot_co-uv_co-hs_co-cl_co) as gen_co
     , round((cast((tot_co-uv_co-hs_co-cl_co)as double precision)/tot_co*100)::numeric, 2 ) as gen_rate
     , round((cast(uv_co as double precision)/tot_co*100)::numeric, 2 ) as uv_rate
     , round((cast(hs_co as double precision)/tot_co*100)::numeric, 2 ) as hs_rate
     , round((cast(cl_co as double precision)/tot_co*100)::numeric, 2 ) as cl_rate
     , 1 as RN
  from (select COUNT(distinct  a.player_id ) as tot_co
		     , COUNT(distinct  b.player_id ) as uv_co
			 , COUNT(distinct  c.player_id ) as hs_co
			 , COUNT(distinct  d.player_id ) as cl_co
		  from (select A.stdr_year   
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
							    where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
							    ) a 
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('UV')
								    and confm_step_cde = '2') b
							 on a.player_id = b.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
						        left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde IN  ('HS','U8')
								    and confm_step_cde = '2') C
							 on a.player_id = C.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
							and b.player_id is null
							    left outer join 
							    (select distinct stdr_year
								      , player_id
								   from kfadm.wf_player_sttus
								  where psitn_team_grad_cde not IN  ('HS','U8','UV')
								    and psitn_team_class_cde = 'CL'
								    and confm_step_cde = '2') D
							 on a.player_id = D.player_id 
							and cast(cast(a.stdr_year as numeric) -1  as varchar) = D.stdr_year
							and b.player_id is null
							and c.player_id is null
		 ) A;
		