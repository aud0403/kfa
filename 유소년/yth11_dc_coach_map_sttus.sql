-- 저니맵 지도자 insert
SELECT '20230328' AS ldadng_de
     , aa.stdr_year
     , aa.coach_sexdstn_cde
     , aa.coach_qualf_ty_cde
     , (SELECT z.coach_qualf_ty_nm FROM wd_coach_qualf_ty z WHERE z.coach_qualf_ty_cde = aa.coach_qualf_ty_cde) AS coach_qualf_ty_nm
     , aa.coach_qualf_wsp_cde
     , (SELECT z.coach_qualf_wsp_nm FROM wd_coach_qualf_wsp z WHERE z.coach_qualf_wsp_cde = aa.coach_qualf_wsp_cde) AS coach_qualf_wsp_nm
--     , aa.stdr_coach_id AS coach_id
--     , COALESCE(aa.psitn_team_area_cde,'^') AS team_area_cde
--     , aa.act_at as act_se_cde
     , COALESCE(aa.psitn_team_grad_cde,'^') as psitn_team_grad_cde
     , COALESCE(aa.psitn_team_class_cde,'^') as psitn_team_class_cde
--     , aa.coach_qualf_item_cde 
     , aa.act_co AS coach_co
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  FROM (
        SELECT DISTINCT a.stdr_year
             , a.stdr_coach_id
             , a.psitn_team_area_cde
             , a.coach_sexdstn_cde
             , a.psitn_team_grad_cde
             , a.psitn_team_class_cde
             , a.coach_qualf_ty_cde
             , a.coach_qualf_item_cde
             , a.coach_qualf_wsp_cde
             , act_at
             , act_co
             , coach_qualf_acqs_dat
          FROM (
                SELECT a.stdr_year
                     , coach_qualf_acqs_dat
                     , a.stdr_coach_id
                     , a.psitn_team_area_cde
                     , a.coach_sexdstn_cde
                     , a.cmpet_partcpt_year
                     , a.coach_qualf_ty_cde
                     , a.psitn_team_grad_cde
                     , a.psitn_team_class_cde
                     , a.coach_qualf_item_cde
                     , CASE WHEN coach_qualf_wsp_cde IS NOT NULL THEN coach_qualf_wsp_cde
                            ELSE a.hist_coach_qualf_wsp_cde
                             END AS coach_qualf_wsp_cde
                     , CASE WHEN cmpet_partcpt_year IS NOT NULL THEN '1'
                            ELSE '0'
                             END act_at
                     , 1 AS act_co
                  FROM (
                        SELECT DISTINCT a.coach_id AS stdr_coach_id
                             , a.coach_sexdstn_cde
                             , a.stdr_year
                             , b.stdr_year AS cmpet_partcpt_year
                             , b.psitn_team_class_cde
                             , b.psitn_team_grad_cde
                             , b.psitn_team_area_cde
                             , a.coach_qualf_item_cde
                             , a.coach_qualf_ty_cde
                             , b.coach_qualf_wsp_cde
                             , a.hist_coach_qualf_wsp_cde
                             , b.fr_year
                             , b.to_year
                             , a.coach_qualf_acqs_dat
                          FROM (
                                ---시작
                                SELECT DISTINCT a.stdr_year
                                              , b.coach_id, b.coach_sexdstn_cde
                                              , b.coach_qualf_item_cde
                                              , b.coach_qualf_wsp_cde AS hist_coach_qualf_wsp_cde
                                              , b.coach_qualf_ty_cde
                                              , b.fr_year
                                              , b.to_year
                                              , b.coach_qualf_acqs_dat
                                  FROM (SELECT DISTINCT stdr_year FROM kfadm.wf_coach_team_cmpet_sttus) a
                                     , (
                                        SELECT coach_id
                                             , coach_sexdstn_cde
                                             , stdr_year AS fr_year
                                             , coach_qualf_item_cde
                                             , coach_qualf_ty_cde
                                             , coach_qualf_wsp_cde
                                             , coach_qualf_acqs_dat
                                             , coalesce(lag(stdr_year,1) over (partition by coach_id order by coach_id, stdr_year desc), '9999') to_year
                                          FROM (
                                                SELECT DISTINCT stdr_year
                                                              , coach_id
                                                              , coach_sexdstn_cde
                                                              , coach_qualf_item_cde
                                                              , coach_qualf_ty_cde
                                                              , coach_qualf_wsp_cde
                                                              , coach_qualf_acqs_dat
                                                              , DENSE_RANK() OVER (PARTITION  BY stdr_year, coach_id, coach_sexdstn_cde, coach_qualf_item_cde ORDER BY coach_qualf_acqs_dat desc) AS row_num
                                                  FROM kfadm.wf_coach_qualf_sttus
                                                 WHERE stdr_year IN ('2019','2020','2021','2022','2023')
                                                   AND coach_qualf_item_cde = 'S'
                                                ) a
                                          WHERE row_num = 1
                                        ) b
                                  WHERE (b.fr_year <= a.stdr_year AND a.stdr_year < b.to_year)
                                --끝
                                ) a
                          LEFT OUTER JOIN
                               (
                                --시작
                                SELECT DISTINCT a.stdr_year
                                              , a.coach_id
                                              , a.psitn_team_grad_cde
                                              , a.psitn_team_class_cde
                                              , a.psitn_team_area_cde
                                              , b.coach_qualf_wsp_cde
                                              , b.fr_year
                                              , b.to_year
                                  FROM kfadm.wf_coach_team_cmpet_sttus a
                                  LEFT OUTER JOIN
                                       (
                                        SELECT coach_id
                                             , coach_qualf_wsp_cde
                                             , stdr_year AS fr_year
                                             , coalesce(lag(stdr_year,1) over (partition by coach_id order by coach_id, stdr_year desc), '9999') to_year
                                          FROM (
                                                SELECT DISTINCT stdr_year
                                                              , coach_id
                                                              , coach_sexdstn_cde
                                                              , coach_qualf_item_cde
                                                              , coach_qualf_ty_cde
                                                              , coach_qualf_wsp_cde
                                                              , coach_qualf_acqs_dat
                                                              , DENSE_RANK() OVER (PARTITION BY stdr_year, coach_id, coach_sexdstn_cde, coach_qualf_item_cde ORDER BY coach_qualf_acqs_dat desc) AS row_num
                                                  FROM kfadm.wf_coach_qualf_sttus
                                                 WHERE stdr_year IN ('2019','2020','2021','2022','2023')
                                                    AND coach_qualf_item_cde = 'S'
                                                ) a
                                          WHERE row_num = 1
                                        ) b
                                    ON a.coach_id  = b.coach_id
                                 WHERE b.coach_qualf_wsp_cde <> '^'
                                   AND (b.fr_year <= a.stdr_year AND a.stdr_year < b.to_year)
                                 --끝
                                ) b
                            ON a.stdr_year = b.stdr_year
                           AND a.coach_id  = b.coach_id
                        ) a
                ) a
        ) aa
 WHERE aa.act_at = '1'
--   AND aa.coach_sexdstn_cde = 'M'
   AND aa.coach_qualf_ty_cde = '1'
 ORDER BY aa.stdr_year
;