 
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus  
		  where stdr_year = '2021'
		    and team_secsn_de = '^'
		    and psitn_team_id LIKE '%ITC%'
		  group by stdr_year,  player_id) A
		 left outer join 
		 (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus
		  where stdr_year = '2020'
		    and team_secsn_de = '^'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id )B
	  on A.player_id= b.player_id
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where stdr_year = '2020'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('K3','K4')
		     and psitn_team_id not like '%ITC%'
		     group by  player_id) C
      on A.player_id= C.player_id
         left outer join 
         (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus 
		   where stdr_year = '2020'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id) D 
	 on A.player_id= D.player_id
	    left outer join 
	    (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus 
		  where stdr_year = '2020'
		    and team_secsn_de = '^'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id) E
	 on A.player_id= E.player_id
	    left outer join 
	    (select distinct player_id
	       from kfadm.wf_golden_age_player 
          where stdr_year <= '2021' ) f
	 on a.player_id = f.player_id
union all 
  select '20220131' AS ldadng_de
      , '2022' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'Overseas' AS psitn_team_grad_cde
      , COUNT(a.player_id)  
      , COUNT(b.player_id)
      , COUNT(c.player_id)
      , COUNT(d.player_id)
      , COUNT(E.player_id)
      , round((cast(count(f.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 )  
      , 0
      , 16 as rn
   from (select stdr_year
		      , player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus  
		  where stdr_year = '2022'
		    and team_secsn_de = '^'
		    and psitn_team_id LIKE '%ITC%'
		    group by stdr_year, player_id) A
		 left outer join 
		 (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus
		  where stdr_year = '2021'
		    and team_secsn_de = '^'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id )B
	  on A.player_id= b.player_id
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where stdr_year = '2021'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('K3','K4')
		     and psitn_team_id not like '%ITC%'
		     group by  player_id ) C
      on A.player_id= C.player_id
         left outer join 
         (select  player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus 
		   where stdr_year = '2021'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) D 
	 on A.player_id= D.player_id
	    left outer join 
	    (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus 
		  where stdr_year = '2021' 
		    and team_secsn_de = '^'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id ) E
	  on A.player_id= E.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2022' ) f
	  on a.player_id = f.player_id
union all
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'Overseas' AS psitn_team_grad_cde
      , COUNT(a.player_id)  
      , COUNT(b.player_id)
      , COUNT(c.player_id)
      , COUNT(d.player_id)
      , COUNT(E.player_id)
      , round((cast(count(f.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 )  
      ,0
      , 16 as rn
   from (select stdr_year
		      , player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus  
		  where stdr_year = '2023'
		    and team_secsn_de = '^'
		    and psitn_team_id LIKE '%ITC%'
		    group by stdr_year,  player_id ) A
		 left outer join 
		 (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus
		  where stdr_year = '2022'
		   and team_secsn_de = '^'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id )B
	  on A.player_id= b.player_id
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where stdr_year = '2022'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('K3','K4')
		     and psitn_team_id not like '%ITC%' 
		     group by  player_id ) C
      on A.player_id= C.player_id
         left outer join 
         (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus 
		   where stdr_year = '2022'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) D 
	 on A.player_id= D.player_id
	    left outer join 
	    (select player_id  
		      , max(replace (team_regist_de,'^','1')) 
		   from kfadm.wf_player_sttus 
		  where stdr_year = '2022' 
		    and team_secsn_de = '^'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id ) E
	  on A.player_id= E.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2023' ) f
	  on a.player_id = f.player_id
 union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('K0','K1')
		    and team_secsn_de = '^'
		    and stdr_year = '2021'
		    group by stdr_year,  player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where stdr_year = '2020'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select  player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where stdr_year = '2020'
		     and team_secsn_de = '^'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021' ) d
	  on a.player_id = d.player_id
union all 
 select '20220131' AS ldadng_de
      , '2022' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('K0','K1')
		    and stdr_year = '2022'
		    group by stdr_year, player_id ) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
  	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2022' ) d
	  on a.player_id = d.player_id
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('K0','K1')
		    and stdr_year = '2023'
		    group by stdr_year , player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2023') d
	  on a.player_id = d.player_id
 union
   select '20220131' AS ldadng_de
      , '2021' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('K3','K4')
		    and stdr_year = '2021'
		    group by stdr_year , player_id ) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2020'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select  player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2020'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	 on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') d
	  on a.player_id = d.player_id
union all 
   select '20220131' AS ldadng_de
      , '2022' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('K3','K4')
		    and stdr_year = '2022'
		    group by stdr_year , player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2022') d
	  on a.player_id = d.player_id
union all 
   select '20220131' AS ldadng_de
      , '2023' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('K3','K4')
		    and stdr_year = '2023'
		    group by stdr_year , player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select  player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2023') d
	  on a.player_id = d.player_id
union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UC1','UC2','UC3')
		    and stdr_year = '2021'
		    group by stdr_year ,  player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2020'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2020'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') d 
	  on a.player_id = d.player_id
union all 
 select '20220131' AS ldadng_de
      , '2022' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UC1','UC2','UC3')
		    and stdr_year = '2022'
		    group by stdr_year , player_id) A
		 left outer join 
		 (select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2021'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2022') d
	  on a.player_id = d.player_id
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
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
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UC1','UC2','UC3')
		    and stdr_year = '2023'
		    group by stdr_year , player_id ) A
		 left outer join 
		 (select  player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('UV')
		     group by  player_id ) B
	 on A.player_id = b.player_id
	    left outer join 
		(select player_id  
		       , max(replace (team_regist_de,'^','1')) 
		    from kfadm.wf_player_sttus
		   where team_secsn_de = '^' and stdr_year = '2022'
		     and psitn_team_grad_cde IN ('U8')
		     group by  player_id ) C
	  on A.player_id = C.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2023') d 
	  on a.player_id = d.player_id
union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'UV' AS psitn_team_grad_cde
      , count(a.player_id)
      , 0, 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 12 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UV')
		    and stdr_year = '2021'
		    group by stdr_year , player_id) A
		 left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') C 
	  on a.player_id = c.player_id
union all 
  select '20220131' AS ldadng_de
      , '2022' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'UV' AS psitn_team_grad_cde
      , count(a.player_id)
      , 0, 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 12 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UV')
		    and stdr_year = '2022'
		    group by stdr_year , player_id ) A
		 left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2022') C 
	  on a.player_id = c.player_id
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'UV' AS psitn_team_grad_cde
      , count(a.player_id)
      , 0, 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 12 AS rn
   from (select stdr_year 
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('UV')
		    and stdr_year = '2023'
		    group by stdr_year , player_id ) A
		 left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2023') C 
	  on a.player_id = c.player_id
union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'HS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 11 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and stdr_year = '2021'
		    group by stdr_year , player_id) A
		 left outer join
		 (select player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2021'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id
union all 
 select '20220131' AS ldadng_de
      , '2022' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'HS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 11 AS rn
   from (select stdr_year 
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and stdr_year = '2022'
		    group by stdr_year , player_id) A
		 left outer join
		 (select player_id  
		       , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2022'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct  player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') C 
	  on a.player_id = c.player_id	 
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'HS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 11 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and stdr_year = '2023'
		    group by stdr_year , player_id) A
		 left outer join
		 (select player_id  
		       , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2023'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') C 
	  on a.player_id = c.player_id	 
union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'MS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 10 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and stdr_year = '2021'
		    group by stdr_year , player_id ) A
		 left outer join
		 (select player_id  
		       , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2021'
		    group by  player_id) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
union all 
 select '20220131' AS ldadng_de
      , '2022' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'MS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 10 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and stdr_year = '2022'
		    group by stdr_year , player_id ) A
		 left outer join
		 (select player_id  
		       , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2022'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') C 
	  on a.player_id = c.player_id	
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'MS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 10 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and stdr_year = '2023'
		    group by stdr_year , player_id ) A
		 left outer join
		 (select player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2023'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') C 
	  on a.player_id = c.player_id	
union
 select '20220131' AS ldadng_de
      , '2021' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'ES' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 9 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and stdr_year = '2021'
		    group by stdr_year,  player_id ) A
		 left outer join
		 (select player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2021'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
union all 
 select '20220131' AS ldadng_de
      , '2022' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'ES' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 9 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and stdr_year = '2022'
		    group by stdr_year , player_id ) A
		 left outer join
		 (select player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2022'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') C 
	  on a.player_id = c.player_id	
union all 
 select '20220131' AS ldadng_de
      , '2023' as stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'ES' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 9 AS rn
   from (select stdr_year 
		      , player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and stdr_year = '2023'
		    group by stdr_year , player_id ) A
		 left outer join
		 (select player_id  
		      , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus 
		  where team_secsn_de = '^' and psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and psitn_team_class_cde = 'CL'
		    and stdr_year = '2023'
		    group by  player_id ) B
	  on a.player_id = b.player_id
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') C 
	  on a.player_id = c.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2021'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2') 
		   group by stdr_year, psitn_team_id , player_id ) a 
		left outer join 
		(select psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2021'
           and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')
		   and psitn_team_class_cde = 'CL'
		   group by psitn_team_id, player_id ) b 
	on a.player_id = b.player_id
	   left outer join 
	   (select distinct  player_id
	      from kfadm.wf_golden_age_player 
         where stdr_year <= '2021' ) C 
	on a.player_id = c.player_id
union all 
select '20220131' AS ldadng_de
     ,  '2022' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2') 
		   group by stdr_year , psitn_team_id, player_id ) a 
		left outer join 
		(select psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')
		   and psitn_team_class_cde = 'CL'
		   group by psitn_team_id, player_id ) b 
	on a.player_id = b.player_id
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022' ) C 
	  on a.player_id = c.player_id
union all
select '20220131' AS ldadng_de
     ,  '2023' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2') 
		   group by stdr_year , psitn_team_id, player_id  ) a 
		left outer join 
		(select psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2') 
		   and psitn_team_class_cde = 'CL'
		   group by psitn_team_id, player_id ) b 
	on a.player_id = b.player_id
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023' ) C 
	  on a.player_id = c.player_id
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id 
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		   group by stdr_year , psitn_team_id, player_id  )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_class_cde = 'CL'
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		    group by psitn_team_id, player_id ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021' ) C 
	  on a.player_id = c.player_id
union all 
select '20220131' AS ldadng_de
     , '2022' as stdr_year
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
		     , psitn_team_id 
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2022' 
		   and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		   group by stdr_year , psitn_team_id, player_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_class_cde = 'CL'
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		    group by psitn_team_id, player_id ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022' ) C 
	  on a.player_id = c.player_id
union all
select '20220131' AS ldadng_de
     , '2023' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'MS' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id)
     , count(distinct b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 2 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2023' 
		   and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		   group by stdr_year , psitn_team_id, player_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2023'
		    and psitn_team_class_cde = 'CL'
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')
		    group by psitn_team_id, player_id ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023' ) C 
	  on a.player_id = c.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		   group by stdr_year , psitn_team_id, player_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    group by psitn_team_id, player_id  ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
union all 
 select '20220131' AS ldadng_de
     , '2022' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'HS' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id)
     , count(distinct  b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 3 as rn
  from (select stdr_year 
		     , psitn_team_id 
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2022' 
		   and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		   group by stdr_year , psitn_team_id, player_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    group by psitn_team_id, player_id  ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') C 
	  on a.player_id = c.player_id	
union all 
select '20220131' AS ldadng_de
     , '2023' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'HS' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id)
     , count(distinct  b.psitn_team_id)
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 3 as rn
  from (select stdr_year 
		     , psitn_team_id 
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2023' 
		   and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		   group by stdr_year , psitn_team_id, player_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2023'
		    and psitn_team_grad_cde IN ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL'
		    group by psitn_team_id, player_id ) b
	 on a.player_id = b.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') C 
	  on a.player_id = c.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('UV')
			group by stdr_year , psitn_team_id, player_id )a
	    left outer join 
	    (select distinct psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
union all
select '20220131' AS ldadng_de
     , '2022' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'UV' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , 0
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 4 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2022' 
		   and psitn_team_grad_cde IN ('UV')
		   group by stdr_year , player_id , psitn_team_id )a
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') C 
	  on a.player_id = c.player_id	
union all
select '20220131' AS ldadng_de
     , '2023' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'UV' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , 0
     , 0, 0, 0
     , count(distinct a.player_id)
     , count(distinct c.player_id)
     , 4 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1'))
		  from kfadm.wf_player_sttus 
		 where team_secsn_de = '^' and stdr_year = '2023' 
		   and psitn_team_grad_cde IN ('UV')
		   group by stdr_year , player_id , psitn_team_id )a
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') C 
	  on a.player_id = c.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2021'
		   and psitn_team_grad_cde IN ('UC1','UC2','UC3','UC4')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select  psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') d 
	  on a.player_id = d.player_id	
union all 
select '20220131' AS ldadng_de
     , '2022' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_grad_cde IN ('UC1','UC2','UC3','UC4')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') d 
	  on a.player_id = d.player_id	
union all
select '20220131' AS ldadng_de
     , '2023' as stdr_year
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
  from (select  stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_grad_cde IN ('UC1','UC2','UC3','UC4')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') d 
	  on a.player_id = d.player_id	
union
 select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2021'
		   and psitn_team_grad_cde IN  ('K3','K4')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('U8')
            group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') d 
	  on a.player_id = d.player_id	
union all
 select '20220131' AS ldadng_de
     , '2022' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_grad_cde IN  ('K3','K4')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('U8')
		    group by stdr_year , player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') d 
	  on a.player_id = d.player_id	
union all
 select '20220131' AS ldadng_de
     , '2023' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_grad_cde IN  ('K3','K4')
		   group by stdr_year , player_id , psitn_team_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') d 
	  on a.player_id = d.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2021'
		   and psitn_team_grad_cde IN  ('K0','K1')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') d 
	  on a.player_id = d.player_id	
union all 
select '20220131' AS ldadng_de
     , '2022' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_grad_cde IN  ('K0','K1')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') d 
	  on a.player_id = d.player_id	
union all 
select '20220131' AS ldadng_de
     , '2023' as stdr_year
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
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_grad_cde IN  ('K0','K1')
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2023') d 
	  on a.player_id = d.player_id	
union
select '20220131' AS ldadng_de
     , '2021' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , count(distinct  d.psitn_team_id  )
     , count(distinct  e.psitn_team_id  )
     , count(distinct a.player_id)
     , count(distinct f.player_id)
     , 8 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2021'
		   and psitn_team_id LIKE '%ITC%'
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('K3','K4')
		    and psitn_team_id not like '%ITC%'
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id) d
     on a.player_id = d.player_id
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2020'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) e
     on a.player_id = e.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') f 
	  on a.player_id = f.player_id	
union all 
select '20220131' AS ldadng_de
     , '2022' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , count(distinct  d.psitn_team_id  )
     , count(distinct  e.psitn_team_id  )
     , count(distinct a.player_id)
     , count(distinct f.player_id)
     , 8 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2022'
		   and psitn_team_id LIKE '%ITC%'
		   group by stdr_year , player_id , psitn_team_id)a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('K3','K4')
		    and psitn_team_id not like '%ITC%'
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) d
     on a.player_id = d.player_id
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2021'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) e
     on a.player_id = e.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2022') f 
	  on a.player_id = f.player_id	
union all 
select '20220131' AS ldadng_de
     , '2023' as stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde 
     , count(distinct  a.psitn_team_id  )
     , count(distinct  b.psitn_team_id  )
     , count(distinct  c.psitn_team_id  )
     , count(distinct  d.psitn_team_id  )
     , count(distinct  e.psitn_team_id  )
     , count(distinct a.player_id)
     , count(distinct f.player_id)
     , 8 as rn
  from (select stdr_year 
		     , psitn_team_id
		     , player_id  , max(replace (team_regist_de,'^','1')) 
		  from kfadm.wf_player_sttus
		 where team_secsn_de = '^' and stdr_year = '2023'
		   and psitn_team_id LIKE '%ITC%'
		   group by stdr_year , player_id , psitn_team_id )a
		left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde in ('K0','K1')
		    group by  player_id , psitn_team_id ) b
	 on a.player_id = b.player_id 
		left outer join 
		(select  psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('K3','K4')
		    and psitn_team_id not like '%ITC%'
		    group by  player_id , psitn_team_id ) c
     on a.player_id = c.player_id 
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('UV')
		    group by  player_id , psitn_team_id ) d
     on a.player_id = d.player_id
        left outer join 
		(select psitn_team_id
		      , player_id  , max(replace (team_regist_de,'^','1'))
		   from kfadm.wf_player_sttus
		  where team_secsn_de = '^' and stdr_year = '2022'
		    and psitn_team_grad_cde IN ('U8')
		    group by  player_id , psitn_team_id ) e
     on a.player_id = e.player_id 
	    left outer join 
	    (select distinct stdr_year
		       , psitn_team_id 
		       , player_id  
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '2023') f 
	  on a.player_id = f.player_id	
;