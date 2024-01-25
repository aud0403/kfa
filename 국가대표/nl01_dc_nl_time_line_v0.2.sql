-- 국가대표 경기현황 insert
SELECT DISTINCT '20230131' AS ldadng_de
     , a.stdr_year
     , a.grad_cde
     , a.cnvc_no
     , a.cnvc_nm
     , a.cnvc_begin_mt
     , a.cnvc_begin_dat
     , a.cnvc_end_dat
     , a.cmpet_no
     , a.cmpet_nm
     , a.game_no
     , a.game_dt
     , concat(game_mt, '-', game_dat, ' VS', oppnt_nm) AS game_list
--     , a.oppnt_nm
     , (CASE WHEN nl_score > oppnt_score THEN 'win' END) AS win_at
     , concat(nl_nm, nl_score, ':', oppnt_score, oppnt_nm) AS game_result
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  FROM (
        select distinct
               a.cnvc_no
             , substring(b.nl_team_cnvc_begin_dat, 5, 2) AS cnvc_begin_mt
             , substring(b.nl_team_cnvc_begin_dat, 5, 4) AS cnvc_begin_dat
             , substring(b.nl_team_cnvc_end_dat  , 5, 4) AS cnvc_end_dat
             , (select s.nl_team_cnvc_nm from kfadm.wd_nl_team_cnvc s where s.nl_team_cnvc_no = a.cnvc_no) AS cnvc_nm
             , a.game_no
             , substring(a.game_de, 5, 2) AS game_mt
             , substring(a.game_de, 5, 4) AS game_dt
             , substring(a.game_de, 7, 2) AS game_dat
             , a.cmpet_no
             , (select s.nl_team_cmpet_nm from kfadm.wd_nl_team_cmpet s where s.nl_team_cmpet_no = a.cmpet_no) AS cmpet_nm
             , (select split_part(s.nl_team_game_nm,'vs',1) from kfadm.wd_nl_team_game s where s.nl_team_game_no = a.game_no) AS nl_nm
             , (select split_part(s.nl_team_game_nm,'vs',2) from kfadm.wd_nl_team_game s where s.nl_team_game_no = a.game_no) AS oppnt_nm
             , a.cmpet_grad_cde AS grad_cde
             , a.nl_team_last_score AS nl_score
             , a.oppnt_team_last_score AS oppnt_score
             , a.stdr_year
          from kfadm.wf_nl_cmpet a
             , kfadm.wf_nl_team b
         where a.stdr_year IN ('2020','2021','2022','2023')
           and a.stdr_year = b.stdr_year
           and a.cnvc_no   = b.cnvc_no
           and a.game_no   = b.game_no
           and a.cmpet_no  = b.cmpet_no
         order by a.cmpet_grad_cde, a.cnvc_no
        ) a
 order by grad_cde, cnvc_no, a.cnvc_begin_dat, a.game_no
;
