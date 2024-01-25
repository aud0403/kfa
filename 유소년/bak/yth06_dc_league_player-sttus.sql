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
  from (select '2021' as stdr_year 
		     , count (distinct psitn_team_id) as team_co_1
		     , count( distinct player_id )  as player_co_1
		     , max(replace (team_regist_de,'^','1'))
		  from wf_player_sttus 
		 where stdr_year = '2021'
		   and team_secsn_de = '^' 
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')) a
        left outer join
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_2
		      , count( distinct player_id ) as player_co_2
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')) b
     on a.stdr_year= b.stdr_year
        left outer join 
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_3
		      , count( distinct player_id ) as player_co_3
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')) c
	 on a.stdr_year = c.stdr_year
        left outer join 
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_4
		      , count( distinct player_id ) as player_co_4
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UV') ) d 
     on a.stdr_year = d.stdr_year    
        left outer join 
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_5
		      , count( distinct player_id ) as player_co_5
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UC1','UC2','UC3') ) e
	 on a.stdr_year = e.stdr_year 
        left outer join 
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_6
		      , count( distinct player_id ) as player_co_6
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K2','K3','K4','ML','NL') ) f
	 on a.stdr_year = f.stdr_year 
        left outer join
        (select '2021' as stdr_year 
		      , count (distinct  psitn_team_id)as team_co_7
		      , count( distinct player_id ) as player_co_7
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K0','K1') ) g 
	 on a.stdr_year = g.stdr_year 
union all 
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
  from (select '2022' as stdr_year 
		     , count (distinct psitn_team_id) as team_co_1
		     , count( distinct player_id )  as player_co_1
		     , max(replace (team_regist_de,'^','1'))
		  from wf_player_sttus 
		 where stdr_year = '2022'
		   and team_secsn_de = '^' 
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')) a
        left outer join
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_2
		      , count( distinct player_id ) as player_co_2
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')) b
     on a.stdr_year= b.stdr_year
        left outer join 
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_3
		      , count( distinct player_id ) as player_co_3
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')) c
	 on a.stdr_year = c.stdr_year
        left outer join 
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_4
		      , count( distinct player_id ) as player_co_4
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UV') ) d 
     on a.stdr_year = d.stdr_year    
        left outer join 
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_5
		      , count( distinct player_id ) as player_co_5
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UC1','UC2','UC3') ) e
	 on a.stdr_year = e.stdr_year 
        left outer join 
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_6
		      , count( distinct player_id ) as player_co_6
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K2','K3','K4','ML','NL') ) f
	 on a.stdr_year = f.stdr_year 
        left outer join
        (select '2022' as stdr_year 
		      , count (distinct  psitn_team_id)as team_co_7
		      , count( distinct player_id ) as player_co_7
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2022'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K0','K1') ) g 
	 on a.stdr_year = g.stdr_year 
union all 
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
  from (select '2023' as stdr_year 
		     , count (distinct psitn_team_id) as team_co_1
		     , count( distinct player_id )  as player_co_1
		     , max(replace (team_regist_de,'^','1'))
		  from wf_player_sttus 
		 where stdr_year = '2023'
		   and team_secsn_de = '^' 
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')) a
        left outer join
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_2
		      , count( distinct player_id ) as player_co_2
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')) b
     on a.stdr_year= b.stdr_year
        left outer join 
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_3
		      , count( distinct player_id ) as player_co_3
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')) c
	 on a.stdr_year = c.stdr_year
        left outer join 
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_4
		      , count( distinct player_id ) as player_co_4
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UV') ) d 
     on a.stdr_year = d.stdr_year    
        left outer join 
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_5
		      , count( distinct player_id ) as player_co_5
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('UC1','UC2','UC3') ) e
	 on a.stdr_year = e.stdr_year 
        left outer join 
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id) as team_co_6
		      , count( distinct player_id ) as player_co_6
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K2','K3','K4','ML','NL') ) f
	 on a.stdr_year = f.stdr_year 
        left outer join
        (select '2023' as stdr_year 
		      , count (distinct  psitn_team_id)as team_co_7
		      , count( distinct player_id ) as player_co_7
		      , max(replace (team_regist_de,'^','1'))
		   from wf_player_sttus
		  where stdr_year = '2023'
		    and team_secsn_de = '^' 
		    and psitn_team_grad_cde IN ('K0','K1') ) g 
	 on a.stdr_year = g.stdr_year 
;