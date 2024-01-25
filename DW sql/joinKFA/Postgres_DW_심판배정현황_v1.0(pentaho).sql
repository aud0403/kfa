SELECT a.stdr_year
     , a.referee_id
     , a.referee_no
     , a.referee_sexdstn_cde
     , a.referee_agrde_cde
     , a.regist_asoc_cde
     , a.referee_wsp_cde
     , a.acqs_de
     , a.act_cde
     , a.snd_clss_referee_wsp_cde
     , a.snd_clss_acqs_de
     , a.snd_clss_act_cde
     , a.fut_act_cde
     , a.fut_acqs_de
     , a.intrl_referee_at
     , a.referee_assr_at
     , a.referee_assr_regist_dat
     , a.referee_assr_rspofc_cde
     , a.retire_at
     , a.snd_clss_retire_at
     , a.fut_retire_at
     , a.wnpz_dtls_cde
     , a.referee_co
     , CASE WHEN sr.study2_yn IS NULL THEN '^' ELSE sr.study2_yn END AS hnrt_edc_compl_at
  FROM (
        SELECT CASE WHEN riy.inputed_year IS NULL THEN '^' ELSE riy.inputed_year END AS stdr_year
             , CASE WHEN ri.usrkey IS NULL THEN '^' ELSE ri.usrkey END AS referee_id
             , CASE WHEN riy.ref_no IS NULL THEN -1 ELSE riy.ref_no END AS referee_no
             , CASE WHEN ri.usrkey IS NULL THEN '^' ELSE fn_sexdstn(ri.usrkey) END AS referee_sexdstn_cde
             , CASE WHEN fn_valid_inspct(ri.usrkey) = 'P' AND riy.inputed_year IS NOT NULL THEN fn_agrde(riy.inputed_year, ri.usrkey)
                    WHEN fn_valid_inspct(ri.usrkey) = 'E' THEN 'E'
                    WHEN fn_valid_inspct(ri.usrkey) = 'N' THEN '^'
                    ELSE '^'
                END AS referee_agrde_cde
             , CASE WHEN riy.refno1 IS NULL THEN '^' ELSE riy.refno1 END AS regist_asoc_cde
             , CASE WHEN riy.refno4 IS NULL THEN '^' ELSE riy.refno4 END AS referee_wsp_cde
             , CASE WHEN riy.refno4 = '01' AND riy.ref_lvl1_dt IS NOT NULL THEN REPLACE(riy.ref_lvl1_dt, '-', '')
                    WHEN (riy.refno4 = '02' OR riy.refno4 = '12') AND riy.ref_lvl2_dt IS NOT NULL THEN REPLACE(riy.ref_lvl2_dt, '-', '')
                    WHEN (riy.refno4 = '03' OR riy.refno4 = '13') AND riy.ref_lvl3_dt IS NOT NULL THEN REPLACE(riy.ref_lvl3_dt, '-', '')
                    WHEN riy.refno4 = '05' AND riy.ref_lvl5_dt IS NOT NULL THEN REPLACE(riy.ref_lvl5_dt, '-', '')
                    WHEN riy.refno4 = '06' AND riy.ref_lvl6_dt IS NOT NULL THEN REPLACE(riy.ref_lvl6_dt, '-', '')
                    ELSE '^'
                END AS acqs_de
             , CASE WHEN riy.activity IS NULL THEN '^' ELSE riy.activity END AS act_cde
             , CASE WHEN riy.refno4_2k IS NULL THEN '^' ELSE riy.refno4_2k END AS snd_clss_referee_wsp_cde
             , CASE WHEN riy.refno4_2k  = '01' AND riy.ref_lvl1_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl1_dt_2k, '-', '')
                    WHEN riy.refno4_2k  = '02' AND riy.ref_lvl2_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl2_dt_2k, '-', '')
                    WHEN riy.refno4_2k  = '03' AND riy.ref_lvl3_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl3_dt_2k, '-', '')
                    ELSE '^'
                END AS snd_clss_acqs_de
             , CASE WHEN riy.activity_2k IS NULL THEN '^' ELSE UPPER(riy.activity_2k) END AS snd_clss_act_cde
             , CASE WHEN riy.activity_fs IS NULL THEN '^' ELSE riy.activity_fs END AS fut_act_cde
             , CASE WHEN riy.ref_lvl4_dt IS NULL THEN '^' ELSE REPLACE(riy.ref_lvl4_dt, '-', '') END AS fut_acqs_de
             , CASE WHEN riy.class_national_f = 'F' THEN 'Y' ELSE 'N' END AS intrl_referee_at
             , CASE WHEN riy.assessor_yn IS NULL THEN '^' ELSE riy.assessor_yn END AS referee_assr_at
             , CASE WHEN riy.assessor_dt IS NULL THEN '^' ELSE REPLACE(riy.assessor_dt, '-', '') END AS referee_assr_regist_dat
             , CASE WHEN riy.ict_idx IS NULL THEN '^' ELSE CAST(riy.ict_idx AS TEXT) END AS referee_assr_rspofc_cde
             , CASE WHEN riy.retirement_yn = 'Y' OR riy.retirement_self = 'Y' THEN 'Y' ELSE 'N' END AS retire_at
             , CASE WHEN riy.retirement_yn_2k = 'Y' THEN 'Y' ELSE 'N' END AS snd_clss_retire_at
             , CASE WHEN riy.retirement_self = 'Y' OR riy.retirement_self_fs = 'Y' THEN 'Y' ELSE 'N' END AS fut_retire_at
             , '^' AS wnpz_dtls_cde
             , 1 AS referee_co
          FROM referee_info_year riy
               LEFT OUTER JOIN "referee_info#" ri
            ON riy.ref_no = ri.ref_no
          --                 WHERE riy.inputed_year = TO_CHAR(NOW(), 'YYYY') /* 기준연도 조건 */
         GROUP BY CASE WHEN riy.inputed_year IS NULL THEN '^' ELSE riy.inputed_year END
             , CASE WHEN ri.usrkey IS NULL THEN '^' ELSE ri.usrkey END
             , CASE WHEN riy.ref_no IS NULL THEN -1 ELSE riy.ref_no END
             , CASE WHEN ri.usrkey IS NULL THEN '^' ELSE fn_sexdstn(ri.usrkey) END
             , CASE WHEN fn_valid_inspct(ri.usrkey) = 'P' AND riy.inputed_year IS NOT NULL THEN fn_agrde(riy.inputed_year, ri.usrkey)
                    WHEN fn_valid_inspct(ri.usrkey) = 'E' THEN 'E'
                    WHEN fn_valid_inspct(ri.usrkey) = 'N' THEN '^'
                    ELSE '^'
                END
             , CASE WHEN riy.refno1 IS NULL THEN '^' ELSE riy.refno1 END
             , CASE WHEN riy.refno4 IS NULL THEN '^' ELSE riy.refno4 end
             , CASE WHEN riy.refno4 = '01' AND riy.ref_lvl1_dt IS NOT NULL THEN REPLACE(riy.ref_lvl1_dt, '-', '')
                    WHEN (riy.refno4 = '02' OR riy.refno4 = '12') AND riy.ref_lvl2_dt IS NOT NULL THEN REPLACE(riy.ref_lvl2_dt, '-', '')
                    WHEN (riy.refno4 = '03' OR riy.refno4 = '13') AND riy.ref_lvl3_dt IS NOT NULL THEN REPLACE(riy.ref_lvl3_dt, '-', '')
                    WHEN riy.refno4 = '05' AND riy.ref_lvl5_dt IS NOT NULL THEN REPLACE(riy.ref_lvl5_dt, '-', '')
                    WHEN riy.refno4 = '06' AND riy.ref_lvl6_dt IS NOT NULL THEN REPLACE(riy.ref_lvl6_dt, '-', '')
                    ELSE '^'
                END
             , CASE WHEN riy.activity IS NULL THEN '^' ELSE riy.activity END
             , CASE WHEN riy.refno4_2k IS NULL THEN '^' ELSE riy.refno4_2k END
             , CASE WHEN riy.refno4_2k  = '01' AND riy.ref_lvl1_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl1_dt_2k, '-', '')
                    WHEN riy.refno4_2k  = '02' AND riy.ref_lvl2_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl2_dt_2k, '-', '')
                    WHEN riy.refno4_2k  = '03' AND riy.ref_lvl3_dt_2k IS NOT NULL THEN REPLACE(riy.ref_lvl3_dt_2k, '-', '')
                    ELSE '^'
                END
             , CASE WHEN riy.activity_2k IS NULL THEN '^' ELSE UPPER(riy.activity_2k) END
             , CASE WHEN riy.activity_fs IS NULL THEN '^' ELSE riy.activity_fs END
             , CASE WHEN riy.ref_lvl4_dt IS NULL THEN '^' ELSE REPLACE(riy.ref_lvl4_dt, '-', '') END
             , CASE WHEN riy.class_national_f = 'F' THEN 'Y' ELSE 'N' END
             , CASE WHEN riy.assessor_yn IS NULL THEN '^' ELSE riy.assessor_yn END
             , CASE WHEN riy.assessor_dt IS NULL THEN '^' ELSE REPLACE(riy.assessor_dt, '-', '') END
             , CASE WHEN riy.ict_idx IS NULL THEN '^' ELSE CAST(riy.ict_idx AS TEXT) END
             , CASE WHEN riy.retirement_yn = 'Y' OR riy.retirement_self = 'Y' THEN 'Y' ELSE 'N' END
             , CASE WHEN riy.retirement_yn_2k = 'Y' THEN 'Y' ELSE 'N' END
             , CASE WHEN riy.retirement_self = 'Y' OR riy.retirement_self_fs = 'Y' THEN 'Y' ELSE 'N' end
        ) a LEFT OUTER JOIN "study_result#" sr
    ON a.stdr_year = sr.study_year
   AND a.referee_id = sr.ftkey
 GROUP BY a.stdr_year
     , a.referee_id
     , a.referee_no
     , a.referee_sexdstn_cde
     , a.referee_agrde_cde
     , a.regist_asoc_cde
     , a.referee_wsp_cde
     , a.acqs_de
     , a.act_cde
     , a.snd_clss_referee_wsp_cde
     , a.snd_clss_acqs_de
     , a.snd_clss_act_cde
     , a.fut_act_cde
     , a.fut_acqs_de
     , a.intrl_referee_at
     , a.referee_assr_at
     , a.referee_assr_regist_dat
     , a.referee_assr_rspofc_cde
     , a.retire_at
     , a.snd_clss_retire_at
     , a.fut_retire_at
     , a.wnpz_dtls_cde
     , a.referee_co
     , CASE WHEN sr.study2_yn IS NULL THEN '^' ELSE sr.study2_yn END
;