-- 유소년 소집현황 insert
SELECT a.*
      , trunc(sum(a.tot_y_co)/sum(a.tot_co), 3) * 100 AS tot_pert
      , now() AS regist_dt
      , 'kfa01' AS register_id
      , now() AS updt_dt
      , 'kfa01' AS updusr_id
  FROM (
        SELECT to_char(current_date,'YYYYMMDD')  AS ldadng_de
             , a.stdr_year
             , a.cnvc_cnter_se_cde
             , a.cnvc_wdr_cde
             , a.cnvc_area_cde
             , a.cnvc_tme
             , a.begin_dat
             , a.cnvc_sexdstn_cde
             , a.cnvc_team_grad_cde 
             , a.traing_place_nm
             , count(*) AS tot_co
             , sum(CASE WHEN a.atend_at = 'Y' THEN 1 ELSE 0 END) AS tot_y_co
          FROM (
                SELECT DISTINCT a.stdr_year
                     , substring(a.traing_begin_dat, 5, 2) AS begin_dat
                     , a.cnvc_cnter_se_cde
                     , a.cnvc_wdr_cde 
                     , a.cnvc_area_cde 
                     , a.cnvc_sexdstn_cde
                     , a.cnvc_team_grad_cde 
                     , a.atend_at
                     , a.cnvc_tme 
                     , a.cnvc_co
                     , a.traing_place_nm 
                     , a.player_id
                  FROM kfadm.wf_golden_age_player a
                 WHERE a.cnvc_cnter_se_cde IN ('1','2','3','4') /* 5:퓨처 추가 될수 있음. */
         ) a
         GROUP BY a.stdr_year
             , a.begin_dat
             , a.cnvc_cnter_se_cde
             , a.cnvc_wdr_cde
             , a.cnvc_area_cde
             , a.cnvc_sexdstn_cde
             , a.cnvc_team_grad_cde 
             , a.cnvc_tme
             , a.cnvc_co
             , a.traing_place_nm
        ) a
  WHERE a.stdr_year BETWEEN TO_CHAR(CURRENT_TIMESTAMP - INTERVAL '4 YEAR', 'YYYY') AND TO_CHAR(CURRENT_TIMESTAMP,'YYYY')
 GROUP BY ldadng_de
         , a.stdr_year
         , a.begin_dat
         , a.cnvc_cnter_se_cde
         , a.cnvc_wdr_cde
         , a.cnvc_area_cde
         , a.cnvc_sexdstn_cde
         , a.cnvc_team_grad_cde 
         , a.cnvc_tme
         , a.tot_y_co
         , a.tot_co
         , a.traing_place_nm
    
;