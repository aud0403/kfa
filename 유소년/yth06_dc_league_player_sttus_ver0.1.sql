-- 리그별 선수현황
select a.stdr_year 
     , team_co_1 
     , player_co_1
     , team_co_2 
     , player_co_2
     , team_co_3 
     , player_co_3
     , team_co_4 
     , player_co_4
     , team_co_5 
     , player_co_5
     , team_co_6 
     , player_co_6
     , team_co_7 
     , player_co_7
  from (select '${year}' as stdr_year 
		     , count (distinct psitn_team_id) as team_co_1
		     , count( distinct player_id )  as player_co_1 
  from (select stdr_year   
		     , player_id 
		     , team_regist_de
		     , psitn_team_id
		     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
		  from (select distinct  stdr_year 
				     , player_id 
				     , psitn_team_id
				     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
				     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
				  from kfadm.wf_player_sttus 
				 where stdr_year = '${year}'
				   and psitn_team_grad_cde IN ('ES','U2')
				   and confm_step_cde = '2'
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a ) a
        left outer join
        (select '${year}' as stdr_year 
		     , count (distinct psitn_team_id) as team_co_2
		     , count( distinct player_id )  as player_co_2 
          from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('MS','U5')
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
				) a ) b
     on a.stdr_year= b.stdr_year
        left outer join 
        (select '${year}' as stdr_year 
		      , count (distinct psitn_team_id) as team_co_3
		      , count( distinct player_id )  as player_co_3 
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('HS','U8')
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a) c
	 on a.stdr_year = c.stdr_year
        left outer join 
        (select '${year}' as stdr_year 
		      , count (distinct psitn_team_id) as team_co_4
		      , count( distinct player_id )  as player_co_4 
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('UV')
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a ) d 
     on a.stdr_year = d.stdr_year    
        left outer join 
        (select '${year}' as stdr_year 
		      , count (distinct psitn_team_id) as team_co_5
		      , count( distinct player_id )  as player_co_5 
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('UC1','UC2','UC3')
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a ) e
	 on a.stdr_year = e.stdr_year 
        left outer join 
        (select '${year}' as stdr_year 
		      , count (distinct psitn_team_id) as team_co_6
		      , count( distinct player_id )  as player_co_6 
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('K3','K4')
						   and psitn_team_id not like '%ITC%'
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a ) f
	 on a.stdr_year = f.stdr_year 
        left outer join
        (select '${year}' as stdr_year 
		      , count (distinct psitn_team_id) as team_co_7
		      , count( distinct player_id )  as player_co_7 
		  from (select stdr_year   
				     , player_id 
				     , team_regist_de
				     , psitn_team_id
				     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
				  from (select distinct  stdr_year 
						     , player_id 
						     , psitn_team_id
						     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
						     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
						  from kfadm.wf_player_sttus 
						 where stdr_year = '${year}'
						   and psitn_team_grad_cde IN ('K1','K0')
						   and confm_step_cde = '2'
						  group by stdr_year, player_id, psitn_team_id
				       ) A
				 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		) a ) g 
	 on a.stdr_year = g.stdr_year 

;