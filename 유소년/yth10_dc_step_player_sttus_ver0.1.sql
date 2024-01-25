

select a.stdr_year
     , u12_ac_co
     , u12_cl_co
     , u12_ac_u15_co
     , u12_cl_u15_co
     , u15_ac_co 
     , u15_cl_co 
     , u18_ac_co 
     , u18_cl_co 
     , u15_ac_u18_co  
     , u15_cl_u18_co  
     , u18_ac_uv_co
     , u18_cl_uv_co
     , uv_co           
     , k5_co           
     , k3_co           
	 , k5_k4_co
	 , k5_k3_co
	 , uv_k4_co
	 , uv_k3_co
	 , u18_ac_k4_co
	 , u18_ac_k3_co
	 , u18_cl_k4_co
	 , u18_cl_k3_co
	 , k3_k2_co
	 , k3_k1_co
	 , k5_k2_co
	 , k5_k1_co
	 , uv_k2_co
	 , uv_k1_co
	 , u18_ac_k2_co
	 , u18_ac_k1_co
	 , u18_cl_k2_co
	 , u18_cl_k1_co
  from (select a.stdr_year
		     , SUM (case when psitn_team_class_cde = 'AC'then 1 else 0 end ) as u12_ac_co
		     , SUM (case when psitn_team_class_cde = 'CL'then 1 else 0 end ) as u12_cl_co
		   from (select stdr_year 
				      , player_id
				      , player_sexdstn_cde 
				      , team_regist_de
				      , psitn_team_class_cde
				      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
				   from ( select stdr_year 
							   , player_id 
							   , player_sexdstn_cde
							   , psitn_team_class_cde
							   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
							   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
					        from kfadm.wf_player_sttus
						   where psitn_team_grad_cde IN ('ES','U2')
						     and stdr_year BETWEEN TO_CHAR(CURRENT_TIMESTAMP - INTERVAL '4 YEAR', 'YYYY') AND TO_CHAR(CURRENT_TIMESTAMP,'YYYY')
						     and confm_step_cde = '2'
						   group by stdr_year 
							   , player_id 
							   , player_sexdstn_cde
							   , psitn_team_class_cde
				        ) a 
		         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 ) A
		   group by a.stdr_year
		   ) a
		   left outer join
   		  (select a.stdr_year
			     , count(distinct A.player_id)
			     , sum(case when b.psitn_team_class_cde = 'AC' then 1 else 0 end) as u12_ac_u15_co
			     , sum(case when b.psitn_team_class_cde = 'CL' then 1 else 0 end) as u12_cl_u15_co
			   from (select stdr_year 
					      , player_id
					      , player_sexdstn_cde
					      , psitn_team_class_cde
					      , team_regist_de
					      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
					   from ( select stdr_year 
								   , player_id 
								   , player_sexdstn_cde
								   , psitn_team_class_cde
								   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
								   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						        from kfadm.wf_player_sttus
							   where psitn_team_grad_cde IN ('MS','U5')
							     and confm_step_cde = '2'
							     and psitn_team_class_cde = 'AC'
							   group by stdr_year 
								   , player_id 
								   , player_sexdstn_cde
								   , psitn_team_class_cde
					        ) a 
			         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
			         ) A
			         left outer join
			       	(select distinct stdr_year 
						   , player_id 
						   , psitn_team_class_cde
						from kfadm.wf_player_sttus 
					   where confm_step_cde = '2'
						 and UPPER(psitn_team_grad_cde) in  ('ES','U2') 
						 --and UPPER(psitn_team_class_cde) = 'CL'
					   group by stdr_year, player_id, psitn_team_class_cde
					  ) b 
				  on A.player_id= b.player_id
				 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
			   group by a.stdr_year
			 ) b 
		 on a.stdr_year = b.stdr_year
            left outer join 
            (select a.stdr_year
			      , SUM (case when psitn_team_class_cde = 'AC'then 1 else 0 end ) as u15_ac_co
			      , SUM (case when psitn_team_class_cde = 'CL'then 1 else 0 end ) as u15_cl_co
			   from (select stdr_year 
					      , player_id
					      , player_sexdstn_cde
					      , psitn_team_class_cde
					      , team_regist_de
					      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
					   from ( select stdr_year 
								   , player_id 
								   , player_sexdstn_cde
								   , psitn_team_class_cde
								   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
								   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						        from kfadm.wf_player_sttus
							   where psitn_team_grad_cde IN ('MS','U5')
							     and confm_step_cde = '2'
							   group by stdr_year 
								   , player_id 
								   , player_sexdstn_cde
								   , psitn_team_class_cde
					        ) a 
			         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 ) A
			   group by a.stdr_year
			   ) c 
			on a.stdr_year = c.stdr_year
			  left outer join 
			  (select a.stdr_year
				    , SUM (case when psitn_team_class_cde = 'AC'then 1 else 0 end ) as u18_ac_co
				    , SUM (case when psitn_team_class_cde = 'CL'then 1 else 0 end ) as u18_cl_co
				  from (select stdr_year 
						      , player_id
						      , player_sexdstn_cde
						      , psitn_team_class_cde
						      , team_regist_de
						      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
						   from ( select stdr_year 
									   , player_id 
									   , player_sexdstn_cde
									   , psitn_team_class_cde
									   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
									   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
							        from kfadm.wf_player_sttus
								   where psitn_team_grad_cde IN ('HS','U8')
								     and confm_step_cde = '2'
								   group by stdr_year 
									   , player_id 
									   , player_sexdstn_cde
									   , psitn_team_class_cde
						        ) a 
				         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 ) A
				   group by a.stdr_year
				   ) d 
				on a.stdr_year = d.stdr_year
				   left outer join 
				   (select a.stdr_year
					     , count(distinct A.player_id)
					     , sum(case when  b.psitn_team_class_cde = 'AC' then 1 else 0 end) as u15_ac_u18_co
					     , sum(case when b.psitn_team_class_cde = 'CL' then 1 else 0 end) as  u15_cl_u18_co
					   from (select stdr_year 
							      , player_id
							      , player_sexdstn_cde
							      , psitn_team_class_cde
							      , team_regist_de
							      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
							   from ( select stdr_year 
										   , player_id 
										   , player_sexdstn_cde
										   , psitn_team_class_cde
										   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
										   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
								        from kfadm.wf_player_sttus
									   where psitn_team_grad_cde IN ('HS','U8')
									     and confm_step_cde = '2'
									     and psitn_team_class_cde = 'AC'
									    -- and stdr_year = '2022'
									   group by stdr_year 
										   , player_id 
										   , player_sexdstn_cde
										   , psitn_team_class_cde
							        ) a 
					         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
					         ) A
					         left outer join
					       		 (select distinct stdr_year 
								   , player_id 
								   , psitn_team_class_cde
								from kfadm.wf_player_sttus 
							   where confm_step_cde = '2'
								 and UPPER(psitn_team_grad_cde) in  ('MS','U5') 
								 --and UPPER(psitn_team_class_cde) = 'CL'
							   group by stdr_year, player_id, psitn_team_class_cde
							  ) b 
						  on A.player_id= b.player_id
						 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
					   group by a.stdr_year
					   ) e
					on a.stdr_year = e.stdr_year
					   left outer join 
				      (select a.stdr_year
					     , count(distinct A.player_id)
					     , sum(case when  b.psitn_team_class_cde = 'AC' then 1 else 0 end) as u18_ac_uv_co
					     , sum(case when b.psitn_team_class_cde = 'CL' then 1 else 0 end) as  u18_cl_uv_co
					   from (select stdr_year 
							      , player_id
							      , player_sexdstn_cde
							      , psitn_team_class_cde
							      , team_regist_de
							      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
							   from ( select stdr_year 
										   , player_id 
										   , player_sexdstn_cde
										   , psitn_team_class_cde
										   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
										   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
								        from kfadm.wf_player_sttus
									   where psitn_team_grad_cde IN ('UV')
									     and confm_step_cde = '2'
									     --and psitn_team_class_cde = 'AC'
									    -- and stdr_year = '2022'
									   group by stdr_year 
										   , player_id 
										   , player_sexdstn_cde
										   , psitn_team_class_cde
							        ) a 
					         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
					         ) A
					         left outer join
					       		 (select distinct stdr_year 
								   , player_id 
								   , psitn_team_class_cde
								from kfadm.wf_player_sttus 
							   where confm_step_cde = '2'
								 and UPPER(psitn_team_grad_cde) in  ('HS','U8') 
								 --and UPPER(psitn_team_class_cde) = 'CL'
							   group by stdr_year, player_id, psitn_team_class_cde
							  ) b 
						  on A.player_id= b.player_id
						 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
					   group by a.stdr_year
					   ) k
				    on a.stdr_year = k.stdr_year   
                       left outer join 
                       (select a.stdr_year
						       , count(distinct case when psitn_team_grad_cde= 'UV'then player_id else null end ) as uv_co
						       , count(distinct case when psitn_team_grad_cde in ('UC1','UC2','UC3') then player_id else null end ) as k5_co
						       , count(distinct case when psitn_team_grad_cde in ('K3','K4') and psitn_team_id not like '%ITC%'then player_id else null end ) as k3_co
						   from (select stdr_year 
								      , player_id
								      , psitn_team_id
								      , player_sexdstn_cde
								      , psitn_team_grad_cde
								      , team_regist_de
								      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
								   from ( select stdr_year 
											   , player_id 
											   , psitn_team_id
											   , player_sexdstn_cde
											   , psitn_team_grad_cde
											   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
											   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
									        from kfadm.wf_player_sttus
										   where psitn_team_grad_cde IN ('UV','UC1','UC2','UC3','K3','K4')
										     and confm_step_cde = '2'
										   group by stdr_year 
											   , player_id 
											   , psitn_team_id
											   , player_sexdstn_cde
											   , psitn_team_grad_cde
								        ) a 
						         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 ) A
						   group by a.stdr_year
						 ) f
				      on a.stdr_year = f.stdr_year
				         left outer join 
				         (select a.stdr_year
							     , count(distinct A.player_id)
							     , sum(case when b.psitn_team_grad_cde = 'UV' and a.psitn_team_grad_cde ='K4' then 1 else 0 end) as uv_k4_co
							     , sum(case when b.psitn_team_grad_cde = 'UV' and a.psitn_team_grad_cde ='K3' then 1 else 0 end) as uv_k3_co
							     , sum(case when b.psitn_team_grad_cde in ('UC1','UC2','UC3') and a.psitn_team_grad_cde ='K4' then 1 else 0 end) as k5_k4_co
							     , sum(case when b.psitn_team_grad_cde in ('UC1','UC2','UC3') and a.psitn_team_grad_cde ='K3' then 1 else 0 end) as k5_k3_co
							   from (select stdr_year 
									      , player_id
									      , player_sexdstn_cde
									      , psitn_team_grad_cde
									      , team_regist_de
									      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
									   from ( select stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
												   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
												   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
										        from kfadm.wf_player_sttus
											   where psitn_team_grad_cde IN ('K3','K4')
											     and confm_step_cde = '2'
											     and psitn_team_id not like '%ITC%'
											     --and psitn_team_class_cde = 'AC'
											    -- and stdr_year = '2022'
											   group by stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
									        ) a 
							         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
							         ) A
							         left outer join
							       		 (select distinct stdr_year 
										   , player_id 
										   , psitn_team_grad_cde
										from kfadm.wf_player_sttus 
									   where confm_step_cde = '2'
										 and UPPER(psitn_team_grad_cde) in  ('UV','UC1','UC2','UC3') 
										 --and UPPER(psitn_team_class_cde) = 'CL'
									   group by stdr_year, player_id, psitn_team_grad_cde
									  ) b 
								  on A.player_id= b.player_id
								 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
							   group by a.stdr_year
					      ) g
					   on a.stdr_year = g.stdr_year
					      left outer join 
					      (select a.stdr_year
							     , count(distinct A.player_id)
							     , sum(case when b.psitn_team_class_cde = 'AC' and a.psitn_team_grad_cde ='K4' then 1 else 0 end) as u18_ac_k4_co
							     , sum(case when b.psitn_team_class_cde = 'AC' and a.psitn_team_grad_cde ='K3' then 1 else 0 end) as u18_ac_k3_co
							     , sum(case when b.psitn_team_class_cde = 'CL' and a.psitn_team_grad_cde ='K4' then 1 else 0 end) as u18_cl_k4_co
							     , sum(case when b.psitn_team_class_cde = 'CL' and a.psitn_team_grad_cde ='K3' then 1 else 0 end) as u18_cl_k3_co
							   from (select stdr_year 
									      , player_id
									      , player_sexdstn_cde
									      , psitn_team_grad_cde
									      , team_regist_de
									      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
									   from ( select stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
												   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
												   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
										        from kfadm.wf_player_sttus
											   where psitn_team_grad_cde IN ('K3','K4')
											     and confm_step_cde = '2'
											     and psitn_team_id not like '%ITC%'
											     --and psitn_team_class_cde = 'AC'
											     --and stdr_year = '2022'
											   group by stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
									        ) a 
							         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
							         ) A
							         left outer join
							       		 (select distinct stdr_year 
										   , player_id 
										   , psitn_team_class_cde
										from kfadm.wf_player_sttus 
									   where confm_step_cde = '2'
										 and UPPER(psitn_team_grad_cde) in  ('HS','U8') 
										 --and UPPER(psitn_team_class_cde) = 'CL'
									   group by stdr_year, player_id, psitn_team_class_cde
									  ) b 
								  on A.player_id= b.player_id
								 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
							   group by a.stdr_year
						 ) h 
					on a.stdr_year = h.stdr_year
                       left outer join 
                       (select a.stdr_year
						     , count(distinct A.player_id)
						     , sum(case when b.psitn_team_grad_cde in ('K3','K4') and a.psitn_team_grad_cde ='K0' then 1 else 0 end) as k3_k2_co
						     , sum(case when b.psitn_team_grad_cde in ('K3','K4') and a.psitn_team_grad_cde ='K1' then 1 else 0 end) as k3_k1_co
						     , sum(case when b.psitn_team_grad_cde in ('UC1','UC2','UC3') and a.psitn_team_grad_cde ='K0' then 1 else 0 end) as k5_k2_co
						     , sum(case when b.psitn_team_grad_cde in ('UC1','UC2','UC3') and a.psitn_team_grad_cde ='K1' then 1 else 0 end) as k5_k1_co
						     , sum(case when b.psitn_team_grad_cde in ('UV') and a.psitn_team_grad_cde ='K0' then 1 else 0 end) as uv_k2_co
						     , sum(case when b.psitn_team_grad_cde in ('UV') and a.psitn_team_grad_cde ='K1' then 1 else 0 end) as uv_k1_co
						   from (select stdr_year 
								      , player_id
								      , player_sexdstn_cde
								      , psitn_team_grad_cde
								      , team_regist_de
								      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
								   from ( select stdr_year 
											   , player_id 
											   , player_sexdstn_cde
											   , psitn_team_grad_cde
											   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
											   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
									        from kfadm.wf_player_sttus
										   where psitn_team_grad_cde IN ('K1','K0')
										     and confm_step_cde = '2'
										   --  and psitn_team_id not like '%ITC%'
										     --and psitn_team_class_cde = 'AC'
										    -- and stdr_year = '2022'
										   group by stdr_year 
											   , player_id 
											   , player_sexdstn_cde
											   , psitn_team_grad_cde
								        ) a 
						         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
						         ) A
						         left outer join
						       		 (select distinct stdr_year 
									   , player_id 
									   , psitn_team_grad_cde
									from kfadm.wf_player_sttus 
								   where confm_step_cde = '2'
									 and UPPER(psitn_team_grad_cde) in  ('K3','K4','UC1','UC2','UC2','UV') 
									 --and UPPER(psitn_team_class_cde) = 'CL'
								   group by stdr_year, player_id, psitn_team_grad_cde
								  ) b 
							  on A.player_id= b.player_id
							 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
						   group by a.stdr_year
						   ) i
						on a.stdr_year = i.stdr_year
                           left outer join 
                           (select a.stdr_year
							     , count(distinct A.player_id)
							     , sum(case when b.psitn_team_class_cde = 'AC' and a.psitn_team_grad_cde ='K0' then 1 else 0 end) as u18_ac_k2_co
							     , sum(case when b.psitn_team_class_cde = 'AC' and a.psitn_team_grad_cde ='K1' then 1 else 0 end) as u18_ac_k1_co
							     , sum(case when b.psitn_team_class_cde = 'CL' and a.psitn_team_grad_cde ='K0' then 1 else 0 end) as u18_cl_k2_co
							     , sum(case when b.psitn_team_class_cde = 'CL' and a.psitn_team_grad_cde ='K1' then 1 else 0 end) as u18_cl_k1_co
							   from (select stdr_year 
									      , player_id
									      , player_sexdstn_cde
									      , psitn_team_grad_cde
									      , team_regist_de
									      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
									   from ( select stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
												   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
												   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
										        from kfadm.wf_player_sttus
											   where psitn_team_grad_cde IN ('K1','K0')
											     and confm_step_cde = '2'
							      			   --and psitn_team_id not like '%ITC%'
											   --and psitn_team_class_cde = 'AC'
											     --and stdr_year = '2022'
											   group by stdr_year 
												   , player_id 
												   , player_sexdstn_cde
												   , psitn_team_grad_cde
									        ) a 
							         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0 
							         ) A
							         left outer join
							       		 (select distinct stdr_year 
										   , player_id 
										   , psitn_team_class_cde
										from kfadm.wf_player_sttus 
									   where confm_step_cde = '2'
										 and UPPER(psitn_team_grad_cde) in  ('HS','U8') 
										 --and UPPER(psitn_team_class_cde) = 'CL'
									   group by stdr_year, player_id, psitn_team_class_cde
									  ) b 
								  on A.player_id= b.player_id
								 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
							   group by a.stdr_year
							 ) j 
						  on a.stdr_year = j.stdr_year
  ; 