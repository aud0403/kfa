-- 국가대표 종합현황 insert
SELECT to_char(now(),'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , a.nl_team_grad_cde
     , count(DISTINCT cnvc_no   ) AS cnvc_co 
     , sum(player_cnt           ) as cnvc_player
     , sum(ovs_player_cnt       ) as ovs_player_cnt
     , TRUNC(sum(a.ovs_player_cnt)/sum(a.player_cnt), 3) * 100 AS ovs_player_pert
     , sum(kor_player_cnt       ) as kor_player_cnt
     , TRUNC(sum(a.kor_player_cnt)/sum(a.player_cnt), 3) * 100 AS kor_player_pert
     , count(DISTINCT game_no   ) as game_no 
     , sum(win_co               ) as win_co               
     , sum(lose_co              ) as lose_co              
     , sum(tie_co               ) as tie_co               
     , sum(nl_team_last_score   ) as nl_score
     , sum(oppnt_team_last_score) as oppnt_score
     , TRUNC(sum(nl_team_last_score)/count(DISTINCT game_no), 1) AS avrg_score
     , TRUNC(sum(oppnt_team_last_score)/count(DISTINCT game_no), 1) AS avrg_conceded
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
             , a.player_cnt
             , a.kor_player_cnt
             , a.ovs_player_cnt
             , b.win_co 
             , b.lose_co 
             , b.tie_co 
             , b.nl_team_last_score 
             , b.oppnt_team_last_score 
          FROM (
                /* 소집별 선수 수 */
                SELECT a.stdr_year
                     , a.nl_team_grad_cde
                     , a.cnvc_no
                     , a.cmpet_no
                     , a.game_no
                     , sum(CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN 1 ELSE 0 END) AS kor_player_cnt
                     , sum(CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN 0 ELSE 1 END) AS ovs_player_cnt
                     , count(*) AS player_cnt
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
;