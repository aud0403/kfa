-- 국가대표 종합현황 insert
SELECT to_char(now(),'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , a.nl_team_grad_cde
     , count(DISTINCT cnvc_no   ) AS cnvc_co 
     , count( distinct a.player_id ) as cnvc_player
     , count( distinct a.ovs_player ) as ovs_player_cnt
     , round((cast (count( distinct a.ovs_player ) as double precision)/ count( distinct a.player_id ))::numeric, 2) * 100 AS ovs_player_pert
     , count( distinct a.kor_player) as kor_player_cnt
     , round((cast( count( distinct a.kor_player) as double precision)/ count( distinct a.player_id ))::numeric, 2) * 100 AS kor_player_pert
     , count(DISTINCT game_no   ) as game_co 
     , sum(case when num = 1 then win_co else 0 end ) as win_co               
     , sum(case when num = 1 then lose_co else 0 end              ) as lose_co              
     , sum(case when num = 1 then tie_co else 0 end               ) as tie_co               
     , sum(case when num = 1 then nl_team_last_score else 0 end   ) as nl_score
     , sum(case when num = 1 then oppnt_team_last_score else 0 end ) as oppnt_score
     , TRUNC(sum(case when num = 1 then nl_team_last_score else 0 end   )/count(DISTINCT game_no), 1) AS avrg_score
     , TRUNC(sum(case when num = 1 then oppnt_team_last_score else 0 end )/count(DISTINCT game_no), 1) AS avrg_conceded
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  FROM (
        SELECT a.stdr_year
             , a.nl_team_grad_cde
             , a.cnvc_no
             , a.cmpet_no
             , a.game_no
             , a.player_id 
             , a.kor_player
             , a.ovs_player
             , b.win_co 
             , b.lose_co 
             , b.tie_co 
             , b.nl_team_last_score 
             , b.oppnt_team_last_score 
             , ROW_NUMBER() over (partition by a.game_no ) as num
          FROM (
                /* 소집별 선수 수 */
                SELECT a.stdr_year
                     , a.nl_team_grad_cde
                     , a.cnvc_no
                     , a.cmpet_no
                     , a.game_no
                     , a.player_id
                     , CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN a.player_id ELSE '' END AS kor_player
                     , CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN '' ELSE a.player_id END AS ovs_player
                     FROM (
                        SELECT DISTINCT a.stdr_year 
                             , a.cnvc_no
                             , a.cmpet_no 
                             , a.game_no 
                             , a.player_id
                             , a.nl_team_grad_cde 
                             , a.psitn_team_nation_cde
                             , a.entry_se_cde 
                          FROM kfadm.wf_nl_player a
                        ) a
                 GROUP BY a.stdr_year
                     , a.nl_team_grad_cde
                     , a.cnvc_no
                     , a.cmpet_no
                     , a.game_no
                     , a.player_id
                     , a.psitn_team_nation_cde
                ) a
                LEFT OUTER join
                (
                SELECT DISTINCT b.stdr_year
                     , b.cmpet_grad_cde 
                     , b.cnvc_no
                     , b.cmpet_no 
                     , b.game_no 
                     , b.cmpet_grad_cde AS nl_team_grad_cde
                     , b.win_co 
                     , b.lose_co 
                     , b.tie_co 
                     , b.nl_team_last_score 
                     , b.oppnt_team_last_score 
                 FROM kfadm.wf_nl_cmpet b
               ) b
            ON a.cnvc_no = b.cnvc_no
           AND a.cmpet_no = b.cmpet_no
           AND a.game_no = b.game_no
          AND a.nl_team_grad_cde = b.nl_team_grad_cde
       ) a
 GROUP BY a.stdr_year
     , a.nl_team_grad_cde
/*     , a.player_id
     , a.ovs_player
     , a.kor_player*/
;