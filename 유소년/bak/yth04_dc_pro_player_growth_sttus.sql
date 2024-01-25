select '20210131' AS ldadng_de
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
   from (select distinct  stdr_year
		      , player_id 
		   from kfadm.wf_player_sttus  
		  where psitn_team_id LIKE '%ITC%'
		    and stdr_year = '2021') A
		 left outer join 
		 (select distinct stdr_year 
		      , player_id 
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde in ('K0','K1'))B
	  on A.player_id= b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
		 left outer join 
		 (select distinct  stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where psitn_team_grad_cde IN ('K3','K4')
		     and psitn_team_id not like '%ITC%') C
      on A.player_id= C.player_id
     and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
         left outer join 
         (select distinct stdr_year
		       , player_id 
		    from kfadm.wf_player_sttus 
		   where psitn_team_grad_cde IN ('UV')) D 
	 on A.player_id= D.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = d.stdr_year
	    left outer join 
	    (select distinct  stdr_year 
		      , player_id 
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde IN ('U8')) E
	 on A.player_id= E.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = e.stdr_year
	    left outer join 
	    (select distinct player_id
	       from kfadm.wf_golden_age_player 
	       where stdr_year <= '2021') f
	 on a.player_id = f.player_id
  group by a.stdr_year
union
select '20210131' AS ldadng_de
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
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('K0','K1')
		    and stdr_year = '2021') A
		 left outer join 
		 (select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where  psitn_team_grad_cde IN ('UV')) B
	 on A.player_id = b.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
		(select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where  psitn_team_grad_cde IN ('U8')) C
	  on A.player_id = C.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021' ) d
	  on a.player_id = d.player_id
	  group by a.stdr_year
union
select '20210131' AS ldadng_de
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
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('K3','K4')
		    and stdr_year = '2021') A
		 left outer join 
		 (select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where psitn_team_grad_cde IN ('UV')) B
	 on A.player_id = b.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
		(select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where psitn_team_grad_cde IN ('U8')) C
	 on A.player_id = C.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') d
	  on a.player_id = d.player_id
group by a.stdr_year
union
select '20210131' AS ldadng_de
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
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('UC1','UC2','UC3')
		    and stdr_year = '2021') A
		 left outer join 
		 (select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where psitn_team_grad_cde IN ('UV')) B
	 on A.player_id = b.player_id
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
		(select distinct stdr_year 
		       , player_id 
		    from kfadm.wf_player_sttus
		   where psitn_team_grad_cde IN ('U8')) C
	  on A.player_id = C.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') d 
	  on a.player_id = d.player_id
group by a.stdr_year
union
select '20210131' AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'UV' AS psitn_team_grad_cde
      , count(a.player_id)
      , 0, 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 12 AS rn
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('UV')
		    and stdr_year = '2021') A
		 left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
           where stdr_year <= '2021') C 
	  on a.player_id = c.player_id
group by a.stdr_year
union
 select '20210131' AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'HS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 11 AS rn
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and stdr_year = '2021') A
		 left outer join
		 (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL') B
	  on a.player_id = b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id
group by a.stdr_year
union
select '20210131' AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'MS' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 10 AS rn
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and stdr_year = '2021') A
		 left outer join
		 (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('MS','I15','U15','U5')
		    and psitn_team_class_cde = 'CL') B
	  on a.player_id = b.player_id
     and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
group by a.stdr_year  
union
select '20210131' AS ldadng_de
      , a.stdr_year
      , '선수' AS gubun
      , 'M' AS player_sexdstn_cde
      , 'ES' AS psitn_team_grad_cde
      , count(a.player_id)
      , count(b.player_id)
      , 0, 0, 0
      , round((cast(count(c.player_id)as double precision)/count(a.player_id)*100)::numeric, 2 ) 
      , 0
      , 9 AS rn
   from (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and stdr_year = '2021') A
		 left outer join
		 (select distinct stdr_year 
		      , player_id
		   from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde in ('ES','I10','I12','U10','U12','U2')
		    and psitn_team_class_cde = 'CL') B
	  on a.player_id = b.player_id
	 and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	     left outer join 
	     (select distinct player_id 
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	  on a.player_id = c.player_id	
group by a.stdr_year
union
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id
		  from kfadm.wf_player_sttus 
		 where stdr_year = '2021'
		   and psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2') ) a 
		left outer join 
		(select distinct stdr_year 
		     , psitn_team_id
		     , player_id
		  from kfadm.wf_player_sttus
		 where psitn_team_grad_cde IN ('ES','I10','I12','U10','U12','U2')
		   and psitn_team_class_cde = 'CL') b 
	on a.player_id = b.player_id
   and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	   left outer join 
	   (select distinct  player_id
	      from kfadm.wf_golden_age_player 
         where stdr_year <= '2021' ) C 
	on a.player_id = c.player_id
group by a.stdr_year
union
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id 
		     , player_id
		  from kfadm.wf_player_sttus 
		 where stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('MS','I15','U15','U5'))a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_class_cde = 'CL'
		    and psitn_team_grad_cde IN ('MS','I15','U15','U5')) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021' ) C 
	on a.player_id = c.player_id
 group by a.stdr_year
union	 
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id
		  from kfadm.wf_player_sttus 
		 where stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('HS','I18','U18','U8'))a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('HS','I18','U18','U8')
		    and psitn_team_class_cde = 'CL') b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where stdr_year <= '2021') C 
	on a.player_id = c.player_id	
 group by a.stdr_year
union
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id
		  from kfadm.wf_player_sttus 
		 where stdr_year = '2021' 
		   and psitn_team_grad_cde IN ('UV'))a
	    left outer join 
	    (select distinct  player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '2021') C 
	on a.player_id = c.player_id	
 group by a.stdr_year
union
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id 
		  from kfadm.wf_player_sttus
		 where stdr_year = '2021'
		   and psitn_team_grad_cde IN ('UC1','UC2','UC3','UC4'))a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('U8')) c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '2021') d 
	on a.player_id = d.player_id	
 group by a.stdr_year
union 
select '20210131' AS ldadng_de
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id 
		  from kfadm.wf_player_sttus
		 where stdr_year = '2021'
		   and psitn_team_grad_cde IN  ('K3','K4'))a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('U8')) c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '2021') d 
    on a.player_id = d.player_id	
 group by a.stdr_year
union
select '20210131' AS ldadng_de
     , a.stdr_year
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
  from (select distinct stdr_year 
		     , psitn_team_id
		     , player_id 
		  from kfadm.wf_player_sttus
		 where stdr_year = '2021'
		   and psitn_team_grad_cde IN  ('K0','K1'))a
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('UV')) b
	 on a.player_id = b.player_id 
	and cast(cast(a.stdr_year as numeric) -1  as varchar) = b.stdr_year
		left outer join 
		(select distinct stdr_year
		      , psitn_team_id
		      , player_id
		   from kfadm.wf_player_sttus
		  where psitn_team_grad_cde IN ('U8')) c
     on a.player_id = c.player_id 
    and cast(cast(a.stdr_year as numeric) -1  as varchar) = c.stdr_year
	    left outer join 
	    (select distinct player_id
	        from kfadm.wf_golden_age_player 
    	   where  stdr_year <= '2021') d 
	on a.player_id = d.player_id	
 group by a.stdr_year
;