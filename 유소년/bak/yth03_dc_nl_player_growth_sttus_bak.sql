-- 골든에이지 국가대표 성장 다이어그램
SELECT '20220131' AS ldadng_de
     , a.*
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , TRUNC(a.cnvc_co_2/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_2
     , 0 AS cnvc_pert_3
     , TRUNC(a.cnvc_co_g/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_g
     , 1 AS rn
  FROM (           
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(player_id) AS total_co
             , count(CASE WHEN a.psitn_team_class_cde = 'AC' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , count(CASE WHEN a.psitn_team_class_cde = 'CL' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_2
             , 0 AS cnvc_co_3
             , count(CASE WHEN a.psitn_team_class_cde IN ('AC','CL','YC') AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_g
         FROM wf_nl_player a
        WHERE a.stdr_year in ('2021','2022','2023')
          AND a.nl_team_grad_cde IN ('MU14')
        GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 UNION 
SELECT '20220131' AS ldadng_de 
     , a.*
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , TRUNC(a.cnvc_co_2/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_2
     , 0 AS cnvc_pert_3
     , TRUNC(a.g_y_co/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS tot_g_co
     , 2 AS rn  
  FROM (
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(a.player_id) AS total_co
             , count(CASE WHEN a.psitn_team_class_cde = 'AC' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , count(CASE WHEN a.psitn_team_class_cde = 'CL' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_2
             , 0 AS cnvc_co_3
             , count(CASE WHEN a.psitn_team_class_cde IN ('AC','CL','YC') AND a.entry_se_cde = 'S' THEN 1 END) AS g_y_co
         FROM wf_nl_player a
        WHERE a.stdr_year in ('2021','2022','2023')
          AND a.nl_team_grad_cde IN ('MU17')
        GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.*
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , TRUNC(a.cnvc_co_2/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_2
     , TRUNC(a.cnvc_co_3/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_3
     , 0 AS cnvc_co_3
     , 3 AS rn  
  FROM (
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(player_id) AS total_co
             , count(CASE WHEN a.psitn_team_nation_cde = 'KOR' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , count(CASE WHEN a.psitn_team_grad_cde = 'UV' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_2
             , count(CASE WHEN a.psitn_team_grad_cde = 'HS' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_3
             , 0 AS g_y_co
          FROM wf_nl_player a
         WHERE a.stdr_year in ('2021','2022','2023')
           AND a.nl_team_grad_cde IN ('MU20')
         GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.*
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , TRUNC(a.cnvc_co_2/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_2
     , TRUNC(a.cnvc_co_3/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_3
     , 0
     , 4 AS rn  
  FROM (
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(player_id) AS total_co
             , count(CASE WHEN a.psitn_team_nation_cde = 'KOR' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , count(CASE WHEN a.psitn_team_grad_cde = 'UV' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_2
             , count(CASE WHEN a.psitn_team_nation_cde != 'KOR' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_3
             , 0 AS g_y_co
          FROM wf_nl_player a
         WHERE a.stdr_year in ('2021','2022','2023')
           AND a.nl_team_grad_cde IN ('MU23')
         GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.*
     , 0, 0
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , 0, 0, 0
     , 5 AS rn  
  FROM (
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(player_id) AS total_co
             , count(CASE WHEN a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , 0 AS g_y_co
          FROM wf_nl_player a
         WHERE a.stdr_year in ('2021','2022','2023')
           AND a.nl_team_grad_cde IN ('MUV')
         GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 UNION 
SELECT '20220131' AS ldadng_de
     , a.*
     , 0
     , TRUNC(a.cnvc_co_1/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_1
     , TRUNC(a.cnvc_co_2/SUM(COALESCE(NULLIF(a.total_co,0),1)) OVER(), 4) *100 AS cnvc_pert_2
     , 0, 0
     , 6 AS rn  
  FROM (
        SELECT a.stdr_year
             , '02' AS player_se_cde
             , 'M' AS player_sexdstn_cde
             , a.nl_team_grad_cde
             , count(player_id) AS total_co
             , count(CASE WHEN a.psitn_team_nation_cde != 'KOR' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_1
             , count(CASE WHEN a.psitn_team_nation_cde = 'KOR' AND a.entry_se_cde = 'S' THEN 1 END) AS cnvc_co_2
             , 0 AS g_y_co
          FROM wf_nl_player a
         WHERE a.stdr_year in ('2021','2022','2023')
           AND a.nl_team_grad_cde IN ('MNT')
         GROUP BY a.stdr_year, a.nl_team_grad_cde
        ) a
 ORDER BY rn desc
;