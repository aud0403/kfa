--국내외 프로선수 성장 다이어그램
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'ES' AS psitn_team_grad_cde
     , count(CASE WHEN a.psitn_team_grad_cde IN ('ES','FES','FU10','FU12','FU2','I10','I12','U10','U12','U2') THEN 1 END) AS tot_co_1
     , count(CASE WHEN a.psitn_team_grad_cde IN ('ES','FES','FU10','FU12','FU2','I10','I12','U10','U12','U2') AND a.psitn_team_class_cde = 'CL' THEN 1 END) AS tot_co_2
     , 0 AS tot_co_3, 0 AS tot_co_4, 0 AS tot_co_5
     , 0 AS g_co_1, 0 AS g_co_2
     , 9 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'MS' AS psitn_team_grad_cde
     , a.tot_co_1
     , a.tot_co_2
     , 0, 0, 0
     , trunc(a.c_co/sum(a.tot_co_1 + a.tot_co_2) OVER(), 3)*100
     , 0
     , 10 AS rn
  FROM (
        SELECT a.stdr_year
             , count(CASE WHEN a.psitn_team_grad_cde IN ('MS','FMS','FU15','FU5','I15','U15','U5') THEN 1 END) AS tot_co_1
             , count(CASE WHEN a.psitn_team_grad_cde IN ('MS','FMS','FU15','FU5','I15','U15','U5') AND a.psitn_team_class_cde = 'CL' THEN 1 END) AS tot_co_2
             , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('MS','FMS','FU15','FU5','I15','U15','U5') AND b.psitn_team_class_cde = 'CL' AND b.atend_at = 'Y' THEN 1 END) 
                  FROM wf_golden_age_player b 
                  WHERE b.stdr_year in ('2020','2021','2022')) AS c_co
          FROM wf_player_sttus a
         WHERE a.stdr_year in ('2021','2022','2023')
         GROUP BY a.stdr_year
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'HS' AS psitn_team_grad_cde
     , a.tot_co_1
     , a.tot_co_2
     , 0, 0, 0
     , trunc(a.c_co/sum(a.tot_co_1 + a.tot_co_2) OVER(), 3)*100
     , 0
     , 11 AS rn
  FROM (
        SELECT a.stdr_year
             , count(CASE WHEN a.psitn_team_grad_cde IN ('HS','FHS','FU18','FU8','I18','U18','U8')THEN 1 END) AS tot_co_1
             , count(CASE WHEN a.psitn_team_grad_cde IN ('HS','FHS','FU18','FU8','I18','U18','U8') AND a.psitn_team_class_cde = 'CL' THEN 1 END) AS tot_co_2
             , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('HS','FHS','FU18','FU8','I18','U18','U8') AND b.psitn_team_class_cde = 'CL' AND b.atend_at = 'Y' THEN 1 END) 
                  FROM wf_golden_age_player b 
                 WHERE b.stdr_year in ('2020','2021','2022')) AS c_co
          FROM wf_player_sttus a
         WHERE a.stdr_year in ('2021','2022','2023')
         GROUP BY a.stdr_year
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'UV' AS psitn_team_grad_cde
     , count(CASE WHEN a.psitn_team_grad_cde IN ('UV','FUV') THEN 1 END)
     , 0, 0, 0, 0, 0, 0
     , 12 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K5' AS psitn_team_grad_cde
     , count(CASE WHEN a.psitn_team_grad_cde LIKE 'UC%' THEN 1 END)
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('UV','FUV') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON a.player_id = b.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde LIKE 'UC%')
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('U8') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON a.player_id = b.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde LIKE 'UC%')
     , 0, 0, 0, 0
     , 13 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K3' AS psitn_team_grad_cde
     , count(CASE WHEN a.psitn_team_grad_cde IN ('K2','K3','K4','ML','NL') THEN 1 END)
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('UV','FUV') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON b.player_id = a.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde IN ('K2','K3','K4','ML','NL'))
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('U8') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON b.player_id = a.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde IN ('K2','K3','K4','ML','NL'))
     , 0, 0, 0, 0
     , 14 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K' AS psitn_team_grad_cde
     , count(CASE WHEN a.psitn_team_grad_cde IN ('K0','K1') AND b.psitn_team_nation_cde = 'KOR' THEN 1 END)
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('UV','FUV') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON b.player_id = a.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde IN ('K0','K1'))
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('U8') THEN 1 END) 
          FROM wf_player_sttus b 
         INNER JOIN wf_player_sttus a
            ON b.player_id = a.player_id
           AND b.stdr_year in ('2020','2021','2022')
           AND a.psitn_team_grad_cde IN ('K0','K1'))
     , 0, 0, 0, 0
     , 15 AS rn
  FROM wf_player_sttus a
     , wf_nl_player b
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.player_id = b.player_id 
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '선수' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde
     , count(CASE WHEN b.psitn_team_nation_cde != 'KOR' THEN 1 END)
     , count(CASE WHEN a.psitn_team_grad_cde IN ('K0','K1') AND b.psitn_team_nation_cde != 'KOR' THEN 1 END)
     , count(CASE WHEN a.psitn_team_grad_cde IN ('K2','K3','K4','ML','NL') AND b.psitn_team_nation_cde != 'KOR' THEN 1 END)
     , count(CASE WHEN a.psitn_team_grad_cde IN ('UV','FUV') AND b.psitn_team_nation_cde != 'KOR' THEN 1 END)
     , count(CASE WHEN a.psitn_team_grad_cde IN ('U8') AND b.psitn_team_nation_cde != 'KOR' THEN 1 END)
     , 0, 0
     , 16 AS rn
  FROM wf_player_sttus a
     , wf_nl_player b
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.player_id = b.player_id 
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'ES' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , (SELECT count(DISTINCT a.psitn_team_id) FROM wf_player_sttus a WHERE a.psitn_team_class_cde = 'CL')
     , 0, 0, 0, 0, 0
     , 1 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('ES','FES','FU10','FU12','FU2','I10','I12','U10','U12','U2')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'MS' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , (SELECT count(DISTINCT a.psitn_team_id) FROM wf_player_sttus a WHERE a.psitn_team_class_cde = 'CL')
     , 0, 0, 0
     , count(DISTINCT a.psitn_team_id) + (SELECT count(DISTINCT a.psitn_team_id) FROM wf_player_sttus a WHERE a.psitn_team_class_cde = 'CL')
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('MS','FMS','FU15','FU5','I15','U15','U5') AND b.psitn_team_class_cde = 'CL' AND b.atend_at = 'Y' THEN 1 END) 
          FROM wf_golden_age_player b 
         WHERE b.stdr_year in ('2020','2021','2022'))
     , 2 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('MS','FMS','FU15','FU5','I15','U15','U5')
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'HS' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , (SELECT count(DISTINCT a.psitn_team_id) FROM wf_player_sttus a WHERE a.psitn_team_class_cde = 'CL')
     , 0, 0, 0
     , count(DISTINCT a.psitn_team_id) + (SELECT count(DISTINCT a.psitn_team_id) FROM wf_player_sttus a WHERE a.psitn_team_class_cde = 'CL')
     , (SELECT count(CASE WHEN b.psitn_team_grad_cde IN ('HS','FHS','FU18','FU8','I18','U18','U8') AND b.psitn_team_class_cde = 'CL' AND b.atend_at = 'Y' THEN 1 END) 
          FROM wf_golden_age_player b 
         WHERE b.stdr_year in ('2020','2021','2022'))
     , 3 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('HS','FHS','FU18','FU8','I18','U18','U8')
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'UV' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , 0, 0, 0, 0, 0, 0
     , 4 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('UV','FUV')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K5' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , 0, 0, 0, 0, 0, 0
     , 5 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde LIKE 'UC%'
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K3' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , 0, 0, 0, 0, 0, 0
     , 6 AS rn
  FROM wf_player_sttus a
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('K2','K3','K4','ML','NL')
 GROUP BY a.stdr_year
 UNION
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'K' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , 0, 0, 0, 0, 0, 0
     , 7 AS rn
  FROM wf_player_sttus a
     , wf_nl_player b
 WHERE a.stdr_year in ('2021','2022','2023')
   AND a.psitn_team_grad_cde IN ('K0','K1')
   AND b.psitn_team_nation_cde = 'KOR'
   AND a.player_id = b.player_id 
 GROUP BY a.stdr_year
 UNION 
SELECT '20220131' AS ldadng_de
     , a.stdr_year
     , '팀' AS gubun
     , 'M' AS player_sexdstn_cde
     , 'Overseas' AS psitn_team_grad_cde
     , count(DISTINCT a.psitn_team_id)
     , 0, 0, 0, 0, 0, 0
     , 8 AS rn
  FROM wf_player_sttus a
     , wf_nl_player b
 WHERE a.stdr_year in ('2021','2022','2023')
   AND b.psitn_team_nation_cde != 'KOR'
   AND a.player_id = b.player_id 
 GROUP BY a.stdr_year
 ORDER BY rn DESC
 ;