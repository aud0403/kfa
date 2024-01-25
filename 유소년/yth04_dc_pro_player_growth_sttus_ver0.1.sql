
 
select to_char(current_date,'YYYYMMDD')  AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'Overseas' AS psitn_team_grad_cde
      , COUNT(a.player_id)  as tot_co_1
      , COUNT(b.player_id)  as tot_co_2
      , COUNT(c.player_id)  as tot_co_3
      , COUNT(d.player_id)  as tot_co_4
      , COUNT(E.player_id)  as tot_co_5
      , round((cast(count(f.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) as  g_co_1  
      , 0 as  g_co_2
      , 16 as rn
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
				   and psitn_team_id LIKE '%ITC%'
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a 
		 left outer join 
		 (select distinct  stdr_year 
		       , player_id 
	        from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
		     and UPPER(psitn_team_grad_cde) in  ('K0', 'K1') 
		   group by stdr_year, player_id
	      ) B
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
		 (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and UPPER(psitn_team_grad_cde) in  ('K3', 'K4') 
					   and psitn_team_id not like '%ITC%'
					  group by stdr_year, player_id
		  ) C 
	  on A.player_id= C.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = C.stdr_year
	     left outer join 
		 (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and UPPER(psitn_team_grad_cde) in  ('UV') 
					  group by stdr_year, player_id
		  ) D 
	  on A.player_id= D.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = D.stdr_year
	 	     left outer join 
		 (select distinct  stdr_year 
					     , player_id 
					  from kfadm.wf_player_sttus 
					 where confm_step_cde = '2'
					   and UPPER(psitn_team_grad_cde) in  ('U8') 
					  group by stdr_year, player_id
		  ) E 
	  on A.player_id= E.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = E.stdr_year
	 left outer join 
	 (select distinct player_id
	       from kfadm.wf_golden_age_player 
	       where stdr_year <= '${year}') f
	 on a.player_id = f.player_id
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'K' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , count(C.player_id)
      , 0, 0
      , round((cast(count(d.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 15 AS rn
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
				   and UPPER(psitn_team_grad_cde) in  ('K0', 'K1') 
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
 		 (select distinct  stdr_year 
			     , player_id 
			  from kfadm.wf_player_sttus 
			 where confm_step_cde = '2'
			   and UPPER(psitn_team_grad_cde) in  ('UV') 
			  group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year 
	 	 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U8') 
		   group by stdr_year, player_id
		  ) c 
	  on A.player_id= c.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	  on a.player_id = d.player_id
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'K3' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , count(C.player_id)
      , 0, 0
      , round((cast(count(d.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 14 AS rn
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
				   and UPPER(psitn_team_grad_cde) in  ('K3', 'K4') 
				   and psitn_team_id not like '%ITC%'
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
 		 (select distinct  stdr_year 
			     , player_id 
			  from kfadm.wf_player_sttus 
			 where confm_step_cde = '2'
			   and UPPER(psitn_team_grad_cde) in  ('UV') 
			  group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year 
	 	 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U8') 
		   group by stdr_year, player_id
		  ) c 
	  on A.player_id= c.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	  on a.player_id = d.player_id
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'K5' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , count(C.player_id)
      , 0, 0
      , round((cast(count(d.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 13 AS rn
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
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
 		 (select distinct  stdr_year 
			     , player_id 
			  from kfadm.wf_player_sttus 
			 where confm_step_cde = '2'
			   and UPPER(psitn_team_grad_cde) in  ('UV') 
			  group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year 
	 	 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U8') 
		   group by stdr_year, player_id
		  ) c 
	  on A.player_id= c.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	  on a.player_id = d.player_id
 group by a.stdr_year
union ALL	
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'UV' AS psitn_team_grad_cde
      , count(a.player_id)
      , 0, 0, 0, 0
      , round((cast(count(D.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 12 AS rn
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
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	 on a.player_id = d.player_id
  group by a.stdr_year
union ALL
 select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'HS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(d.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 11 AS rn
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
				   and UPPER(psitn_team_grad_cde) in  ('U8','HS') 
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U8','HS') 
			 and UPPER(psitn_team_class_cde) = 'CL'
		   group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	 on a.player_id = d.player_id
  group by a.stdr_year
union ALL	
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'MS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(D.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 10 AS rn
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
				   and UPPER(psitn_team_grad_cde) in  ('U5','MS')  
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U5','MS') 
			 and UPPER(psitn_team_class_cde) = 'CL'
		   group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	 on a.player_id = d.player_id
  group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'ES' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(d.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 9 AS rn
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
				   and UPPER(psitn_team_grad_cde) in  ('U2','ES')  
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		 (select distinct stdr_year 
			   , player_id 
			from kfadm.wf_player_sttus 
		   where confm_step_cde = '2'
			 and UPPER(psitn_team_grad_cde) in  ('U2','ES') 
			 and UPPER(psitn_team_class_cde) = 'CL'
		   group by stdr_year, player_id
		  ) b 
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id
	       from kfadm.wf_golden_age_player 
	      where stdr_year <= '${year}') d
	 on a.player_id = d.player_id
  group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , '${year}' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde 
     , 0
     , 0
     , 0
     , 0
     , 0
     , count(distinct a.player_id)
     , count(distinct f.player_id)
     , 8 as rn
  from (select distinct stdr_year   
		     , player_id 
		     , team_regist_de
		     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
		  from (select distinct  stdr_year 
				     , player_id 
				     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
				     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
				  from kfadm.wf_player_sttus 
				 where stdr_year = '${year}'
				   and psitn_team_id LIKE '%ITC%'  
				  group by stdr_year, player_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0) a
		 left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') f 
	  on a.player_id = f.player_id	
	group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , '${year}' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , 0, 0
     , count(distinct a.player_id)
     , count(distinct d.player_id)
     , 7 as rn		
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
				   and UPPER(psitn_team_grad_cde) in  ('K0', 'K1') 
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')
		    and confm_step_cde = '2' ) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
			left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('U8')
		    and confm_step_cde = '2') c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '${year}') d 
	on a.player_id = d.player_id	
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K3' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , 0, 0
     , count(distinct a.player_id)
     , count(distinct d.player_id)
     , 6 as rn
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
				   and UPPER(psitn_team_grad_cde) in  ('K3', 'K4') 
				   and psitn_team_id not like '%ITC%'
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')
		    and confm_step_cde = '2' ) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
			left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN ('HS','U8')
		    and confm_step_cde = '2') c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '${year}') d 
	on a.player_id = d.player_id	
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K5' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , 0, 0
     , count(distinct a.player_id)
     , count(distinct d.player_id)
     , 5 as rn
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
				   and UPPER(psitn_team_grad_cde) in  ('UC1', 'UC2','UC3') 
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN ('UV')
		    and confm_step_cde = '2' ) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
			left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN ('U8','HS')
		    and confm_step_cde = '2') c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '${year}') d 
	on a.player_id = d.player_id	
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'UV' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , 0
     , 0, 0, 0
     , count(distinct a.player_id)
     , count( distinct c.player_id)
     , 4 as rn
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
				   and UPPER(psitn_team_grad_cde) in  ('UV') 
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '${year}') C 
	on a.player_id = C.player_id	
	group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'HS' AS psitn_team_grad_cde 
     , count(distinct a.psitn_team_id)
     , count(distinct b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 3 as rn
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
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN ('HS','U8')
		    and UPPER(psitn_team_class_cde) = 'CL'
		    and confm_step_cde = '2') b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '${year}') C 
	on a.player_id = c.player_id	
 group by a.stdr_year
union ALL
 select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'MS' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id)
     , count(distinct  b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 2 as rn
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
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN  ('MS','U5') 
		    and UPPER(psitn_team_class_cde) = 'CL'
		    and confm_step_cde = '2') b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '${year}') C 
	on a.player_id = c.player_id	
 group by a.stdr_year
union ALL
select to_char(current_date,'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'ES' AS psitn_team_grad_cde
     , count(distinct a.psitn_team_id)
     , count(distinct b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 1 AS rn
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
				  group by stdr_year, player_id, psitn_team_id
		       ) A
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end = 0
		 ) a
		 left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where UPPER(psitn_team_grad_cde) IN   ('ES','U2')
		    and UPPER(psitn_team_class_cde) = 'CL'
		    and confm_step_cde = '2') b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '${year}') C 
	on a.player_id = c.player_id	
 group by a.stdr_year
 ;