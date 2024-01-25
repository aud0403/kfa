
select * from(
select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year 
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MU14' as nl_team_grad_cde
     , count(distinct a.player_id) as total_co
     , count(distinct b.player_id) as cnvc_co_1
     , count(distinct C.player_id) as cnvc_co_2
     , 0 as cnvc_co_3
     , COUNT(distinct E.player_id) as cnvc_co_g
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end as cnvc_pert_1
     , case when count(distinct a.player_id) = 0 then 0 else round((cast((count(distinct c.player_id))as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end as cnvc_pert_2
     , 0 as cnvc_pert_3
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end as cnvc_pert_g
     , 1 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where  nl_team_grad_cde = 'MU14') a 
       left outer join 
       (select player_id  
		  from kfadm.wf_nl_player 
	     where  nl_team_grad_cde = 'MU14'
           and psitn_team_class_cde = 'AC' )b 
    on a.player_id = b.player_id
       left outer join 
       (select player_id  
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU14'
           and psitn_team_class_cde = 'CL') C
    on a.player_id = C.player_id
    and B.player_id is NULL
       left outer join 
       (select stdr_year
             , player_id  
		  from kfadm.wf_golden_age_player ) E
    on a.player_id = E.player_id
   and e.stdr_year <= a.stdr_year
 group by a.stdr_year
union all  
 select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MU17' as nl_team_grad_cde
     , count(distinct a.player_id)
     , count(distinct b.player_id)
     , count(distinct C.player_id)  
     , 0
     , COUNT(distinct E.player_id)
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast((count(distinct c.player_id))as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 0
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 2 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where  nl_team_grad_cde = 'MU17') a 
       left outer join 
       (select player_id  
		  from kfadm.wf_nl_player 
	     where  nl_team_grad_cde = 'MU17'
           and psitn_team_class_cde = 'AC' )b 
    on a.player_id = b.player_id
       left outer join 
       (select player_id  
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU17'
           and psitn_team_class_cde = 'CL') C
    on a.player_id = C.player_id
    and B.player_id is NULL
       left outer join 
       (select player_id 
             , stdr_year   
		  from kfadm.wf_golden_age_player ) E
    on a.player_id = E.player_id
   and e.stdr_year <= a.stdr_year
 group by a.stdr_year
union all
select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MU20' as nl_team_grad_cde
     , count(distinct a.player_id)
     , count(distinct b.player_id)
     , count(distinct C.player_id)
     , count(distinct D.player_id)
     , COUNT(distinct E.player_id)
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct c.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct d.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 3 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where nl_team_grad_cde = 'MU20'
		   and psitn_team_nation_cde = 'KOR') a 
       left outer join 
       (select player_id
             , stdr_year
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU20'
           and psitn_team_grad_cde in ('K1','K0')
           and psitn_team_nation_cde = 'KOR')b 
    on a.player_id = b.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id  
             , stdr_year
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU20'
           and psitn_team_grad_cde in ('UV')
           and psitn_team_nation_cde = 'KOR') C
    on a.player_id = C.player_id
   and a.stdr_year = c.stdr_year
       left outer join 
       (select player_id
             , stdr_year
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU20'
           and psitn_team_nation_cde = 'KOR'
           and psitn_team_grad_cde in ('HS') ) D
    on a.player_id = D.player_id
   and a.stdr_year = d.stdr_year
       left outer join 
       (select player_id  
             , stdr_year
		  from kfadm.wf_golden_age_player ) E
    on a.player_id = E.player_id
   and e.stdr_year <= a.stdr_year
 group by  a.stdr_year
union all
select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MU23' as nl_team_grad_cde
     , count(distinct a.player_id)
     , count(distinct b.player_id)
     , count(distinct C.player_id)
     , count(distinct D.player_id)
     , COUNT(distinct E.player_id)
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct c.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct d.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 4 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where nl_team_grad_cde = 'MU23'
		   and psitn_team_nation_cde = 'KOR') a 
       left outer join 
       (select player_id
             , stdr_year 
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU23'
           and psitn_team_grad_cde in ('K1','K0')
           and psitn_team_nation_cde = 'KOR')b 
    on a.player_id = b.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id
             , stdr_year 
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU23'
           and psitn_team_grad_cde in ('UV')
           and psitn_team_nation_cde = 'KOR') C
    on a.player_id = C.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id
             , stdr_year 
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MU23'
           and psitn_team_nation_cde != 'KOR') D
    on a.player_id = D.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id
             , stdr_year 
		  from kfadm.wf_golden_age_player ) E
    on a.player_id = E.player_id
   and a.stdr_year=e.stdr_year
 group by a.stdr_year 
union all
select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MUV' as nl_team_grad_cde
     , count(distinct a.player_id)
     , count(distinct b.player_id)
     , 0
     , 0
     , COUNT(distinct E.player_id)
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 0
     , 0  
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 5 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where nl_team_grad_cde = 'MUV'
		   and psitn_team_nation_cde = 'KOR') a 
       left outer join 
       (select player_id
             , stdr_year 
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MUV'
           and psitn_team_grad_cde in ('UV')
           and psitn_team_nation_cde = 'KOR')b 
    on a.player_id = b.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id
             , stdr_year
		  from kfadm.wf_golden_age_player) E
    on a.player_id = E.player_id
   and a.stdr_year = e.stdr_year
 group by a.stdr_year
union all
  select to_char(current_date, 'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , '02' as player_se_cde
     , 'M' as player_sexdstn_cde
     , 'MNT' as nl_team_grad_cde
     , count(distinct a.player_id)
     , count(distinct b.player_id)
     , count(distinct C.player_id)
     , 0
     , COUNT(distinct E.player_id)
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct b.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct C.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 0  
     , case when count(distinct a.player_id) = 0 then 0 else round((cast(count(distinct e.player_id)as double precision)/count(distinct a.player_id)*100)::numeric, 2 ) end
     , 6 as rn
  from (select stdr_year
             , player_id 
             , player_sexdstn_cde
             , nl_team_grad_cde
		  from kfadm.wf_nl_player
		 where nl_team_grad_cde = 'MNT') a 
       left outer join 
       (select player_id
             , max(game_de)
             , stdr_year 
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MNT'
           and psitn_team_nation_cde != 'KOR'
         group by player_id, stdr_year )b 
    on a.player_id = b.player_id
   and a.stdr_year = b.stdr_year
       left outer join 
       (select player_id  
             , stdr_year 
             , max(game_de)
		  from kfadm.wf_nl_player 
	     where nl_team_grad_cde = 'MNT'
          -- and psitn_team_grad_cde in ('K1', 'K0', 'k1','k0')
           and psitn_team_nation_cde = 'KOR'
         group by player_id,  stdr_year ) C
    on a.player_id = C.player_id
  -- and b.player_id is null
   and a.stdr_year = c.stdr_year
       left outer join 
       (select player_id 
             , stdr_year 
		  from kfadm.wf_golden_age_player) E
   on a.player_id = E.player_id
  and a.stdr_year = e.stdr_year
 group by a.stdr_year ) a
 where a.stdr_year BETWEEN TO_CHAR(CURRENT_TIMESTAMP - INTERVAL '4 YEAR', 'YYYY') AND TO_CHAR(CURRENT_TIMESTAMP,'YYYY')
 ; -- mut
