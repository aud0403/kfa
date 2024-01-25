/*
 * 징계현황
 * 기준연도는 대회시작일로 하고 대회번호가 없는 경우 징계시작일을 기준으로 함
 */
SELECT CASE WHEN md.d_start_date IS NULL AND mi.playing_start IS NULL THEN '^' ELSE COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')) END AS stdr_year
     , CASE WHEN md.idx IS NULL THEN -1 ELSE md.idx END AS dscpl_indx
     , CASE WHEN md.match_idx IS NULL THEN -1 ELSE md.match_idx END AS cmpet_no
     , CASE WHEN md.single_idx IS NULL THEN -1 ELSE md.single_idx END AS game_no
     , CASE WHEN md.mdd_item_cd IS NULL THEN '^' ELSE md.mdd_item_cd END AS item_cde
     , CASE WHEN md.teamid IS NULL THEN '^' ELSE md.teamid END AS team_id
     , CASE WHEN md.disciplinary_type IS NULL THEN '^' ELSE md.disciplinary_type END AS dscpl_trget_se_cde
     , CASE WHEN md.disciplinary_type = 'T' THEN md.teamid
            WHEN md.disciplinary_type != 'T' AND md.ftkey IS NOT NULL THEN md.ftkey
            ELSE '^' 
        END AS dscpl_trget_id
     , CASE WHEN md.disciplinary_type = 'T' THEN '^'
        WHEN md.disciplinary_type != 'T' AND md.ftkey IS NOT NULL 
        THEN  CASE WHEN fn_valid_inspct(md.ftkey) = 'P' AND COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')) != '^' THEN fn_agrde(COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')), md.ftkey)
              WHEN fn_valid_inspct(md.ftkey) = 'E' THEN 'E'
              WHEN fn_valid_inspct(md.ftkey) = 'N' THEN '^'
              ELSE '^' END
        ELSE '^' 
       END AS dscpl_trget_agrde_cde
     , CASE WHEN md.disciplinary_code IS NULL THEN '^' ELSE md.disciplinary_code END AS dscpl_stdr_cde
     , CASE WHEN md.d_start_date IS NULL THEN '^' ELSE TO_CHAR(md.d_start_date, 'YYYYMMDD') END AS dscpl_begin_dat
     , CASE WHEN md.d_end_date IS NULL THEN '^' ELSE TO_CHAR(md.d_end_date, 'YYYYMMDD') END AS dscpl_end_dat
     , CASE WHEN md.d_kind IS NULL THEN '^' ELSE md.d_kind END AS dscpl_mby_cde
     , CASE WHEN md.d_kind_code1 IS NULL THEN '^' ELSE md.d_kind_code1 END AS dscpl_ty_1_cde
     , CASE WHEN md.d_kind_code2 IS NULL THEN '^' ELSE md.d_kind_code2 END AS dscpl_ty_2_cde
     , CASE WHEN md.d_kind_code3 IS NULL THEN '^' ELSE md.d_kind_code3 END AS dscpl_ty_3_cde
     , CASE WHEN md.mdd_knd IS NULL THEN '^' ELSE md.mdd_knd END AS dscpl_knd_cde
     , CASE WHEN md.mdd_dscp_wm IS NULL THEN '^' ELSE md.mdd_dscp_wm END AS dscpl_pd_cde
     , CASE WHEN md.mdd_aply_yn IS NULL THEN '^' ELSE md.mdd_aply_yn END AS expans_requst_at
     , CASE WHEN md.effect_position IS NULL THEN 7 ELSE md.effect_position END AS dscpl_qualf_scope_cde
     , CASE WHEN md.d_bound_ml IS NULL THEN '^' ELSE md.d_bound_ml END AS playng_imprty_scope_cde
     , CASE WHEN md.md_end_yn IS NULL THEN '^' ELSE md.md_end_yn END AS dscpl_end_at
     , md.fairpoint AS dem
     , md.teamname AS team_nm
     , CASE WHEN md.d_point IS NULL THEN 0 ELSE md.d_point END AS dscpl_score
     , CASE WHEN md.mdd_dscp_fine IS NULL THEN 0 ELSE md.mdd_dscp_fine END AS fne
     , CASE WHEN md.mdd_dscp_fine_add IS NULL THEN 0 ELSE md.mdd_dscp_fine_add END AS addnl_fne
     , 1 AS dscpl_co
  FROM "match_disciplinary#" md
       LEFT OUTER JOIN
       match_info mi
    ON md.match_idx = mi.idx
 WHERE mi.playing_start IS NOT NULL
 GROUP BY CASE WHEN md.d_start_date IS NULL AND mi.playing_start IS NULL THEN '^' ELSE COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')) END
     , CASE WHEN md.idx IS NULL THEN -1 ELSE md.idx END
     , CASE WHEN md.match_idx IS NULL THEN -1 ELSE md.match_idx END
     , CASE WHEN md.single_idx IS NULL THEN -1 ELSE md.single_idx END
     , CASE WHEN md.mdd_item_cd IS NULL THEN '^' ELSE md.mdd_item_cd END
     , CASE WHEN md.teamid IS NULL THEN '^' ELSE md.teamid END
     , CASE WHEN md.disciplinary_type IS NULL THEN '^' ELSE md.disciplinary_type END
     , CASE WHEN md.disciplinary_type = 'T' THEN md.teamid
            WHEN md.disciplinary_type != 'T' AND md.ftkey IS NOT NULL THEN md.ftkey
            ELSE '^' 
        end
     , CASE WHEN md.disciplinary_type = 'T' THEN '^'
        WHEN md.disciplinary_type != 'T' AND md.ftkey IS NOT NULL 
        THEN  CASE WHEN fn_valid_inspct(md.ftkey) = 'P' AND COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')) != '^' THEN fn_agrde(COALESCE(TO_CHAR(mi.playing_start, 'YYYY'), TO_CHAR(md.d_start_date, 'YYYY')), md.ftkey)
              WHEN fn_valid_inspct(md.ftkey) = 'E' THEN 'E'
              WHEN fn_valid_inspct(md.ftkey) = 'N' THEN '^'
              ELSE '^' END
        ELSE '^' 
       END 
     , CASE WHEN md.disciplinary_code IS NULL THEN '^' ELSE md.disciplinary_code END
     , CASE WHEN md.d_start_date IS NULL THEN '^' ELSE TO_CHAR(md.d_start_date, 'YYYYMMDD') END
     , CASE WHEN md.d_end_date IS NULL THEN '^' ELSE TO_CHAR(md.d_end_date, 'YYYYMMDD') END
     , CASE WHEN md.d_kind IS NULL THEN '^' ELSE md.d_kind END
     , CASE WHEN md.d_kind_code1 IS NULL THEN '^' ELSE md.d_kind_code1 END
     , CASE WHEN md.d_kind_code2 IS NULL THEN '^' ELSE md.d_kind_code2 END
     , CASE WHEN md.d_kind_code3 IS NULL THEN '^' ELSE md.d_kind_code3 END
     , CASE WHEN md.mdd_knd IS NULL THEN '^' ELSE md.mdd_knd END
     , CASE WHEN md.mdd_dscp_wm IS NULL THEN '^' ELSE md.mdd_dscp_wm END
     , CASE WHEN md.mdd_aply_yn IS NULL THEN '^' ELSE md.mdd_aply_yn END
     , CASE WHEN md.effect_position IS NULL THEN 7 ELSE md.effect_position END
     , CASE WHEN md.d_bound_ml IS NULL THEN '^' ELSE md.d_bound_ml END
     , CASE WHEN md.md_end_yn IS NULL THEN '^' ELSE md.md_end_yn end
     , md.fairpoint
     , md.teamname
     , CASE WHEN md.d_point IS NULL THEN 0 ELSE md.d_point END
     , CASE WHEN md.mdd_dscp_fine IS NULL THEN 0 ELSE md.mdd_dscp_fine END
     , CASE WHEN md.mdd_dscp_fine_add IS NULL THEN 0 ELSE md.mdd_dscp_fine_add END
;


/*
 * 수상현황(팀제외)
 */
SELECT CASE WHEN mi.playing_start IS NULL THEN '^' ELSE TO_CHAR(mi.playing_start, 'YYYY') END AS stdr_year
     , CASE WHEN ma.match_idx IS NULL THEN -1 ELSE ma.match_idx END AS cmpet_no
     , CASE WHEN ma.jumin IS NULL THEN '^' ELSE ma.jumin END AS wnpz_trget_id
     , CASE WHEN fn_valid_inspct(ma.jumin) = 'P' AND TO_CHAR(mi.playing_start, 'YYYY') != '^' THEN fn_agrde(TO_CHAR(mi.playing_start, 'YYYY'), ma.jumin)
       WHEN fn_valid_inspct(ma.jumin) = 'E' THEN 'E'
       WHEN fn_valid_inspct(ma.jumin) = 'N' THEN '^'
       ELSE '^'
       END AS wnpz_trget_agrde_cde
     , CASE WHEN ma.flag IS NULL THEN '^' ELSE ma.flag END AS wnpz_trget_se_cde
     , CASE WHEN ma.teamid IS NULL THEN '^' ELSE ma.teamid END AS team_id
     , CASE WHEN ma.status IS NULL THEN '^' ELSE ma.status END AS wnpz_cde
     , CASE WHEN ma.hname IS NULL THEN '^' ELSE ma.hname END AS wnpz_trget_nm
     , 1 AS wnpz_co
  FROM "match_award#" ma
       LEFT OUTER JOIN
       match_info mi
    ON ma.match_idx = mi.idx
 GROUP BY CASE WHEN mi.playing_start IS NULL THEN '^' ELSE TO_CHAR(mi.playing_start, 'YYYY') END 
     , CASE WHEN ma.match_idx IS NULL THEN -1 ELSE ma.match_idx END
     , CASE WHEN ma.jumin IS NULL THEN '^' ELSE ma.jumin end
     , CASE WHEN fn_valid_inspct(ma.jumin) = 'P' AND TO_CHAR(mi.playing_start, 'YYYY') != '^' THEN fn_agrde(TO_CHAR(mi.playing_start, 'YYYY'), ma.jumin)
       WHEN fn_valid_inspct(ma.jumin) = 'E' THEN 'E'
       WHEN fn_valid_inspct(ma.jumin) = 'N' THEN '^'
       ELSE '^'  end 
     , CASE WHEN ma.flag IS NULL THEN '^' ELSE ma.flag END
     , CASE WHEN ma.teamid IS NULL THEN '^' ELSE ma.teamid END
     , CASE WHEN ma.status IS NULL THEN '^' ELSE ma.status END
     , CASE WHEN ma.hname IS NULL THEN '^' ELSE ma.hname END
;


/*
 * 수상현황(팀)
 */
SELECT CASE WHEN mi.playing_start IS NULL THEN '^' ELSE TO_CHAR(mi.playing_start, 'YYYY') END AS stdr_year
     , CASE WHEN mat.match_idx IS NULL THEN -1 ELSE mat.match_idx END AS cmpet_no
     , CASE WHEN mat.teamid IS NULL THEN '^' ELSE mat.teamid END AS wnpz_trget_id
     , '^' as wnpz_trget_agrde_cde
     , 'T' AS wnpz_trget_se_cde
     , CASE WHEN mat.teamid IS NULL THEN '^' ELSE mat.teamid END AS team_id
     , CASE WHEN mat.status IS NULL THEN '^' ELSE mat.status END AS wnpz_cde
     , CASE WHEN mat.teamname IS NULL THEN '^' ELSE mat.teamname END AS wnpz_trget_nm
     , 1 AS wnpz_co
  FROM match_award_team mat
       LEFT OUTER JOIN
       match_info mi
    ON mat.match_idx = mi.idx
 GROUP BY CASE WHEN mi.playing_start IS NULL THEN '^' ELSE TO_CHAR(mi.playing_start, 'YYYY') END
     , CASE WHEN mat.match_idx IS NULL THEN -1 ELSE mat.match_idx END
     , CASE WHEN mat.teamid IS NULL THEN '^' ELSE mat.teamid END
     , CASE WHEN mat.teamid IS NULL THEN '^' ELSE mat.teamid END
     , CASE WHEN mat.status IS NULL THEN '^' ELSE mat.status END
     , CASE WHEN mat.teamname IS NULL THEN '^' ELSE mat.teamname END
;


/*
 * 상벌현황 by 수상현황
 */
SELECT stdr_year
     , cmpet_no
     , -1 AS game_no
     , 'W' AS rwrpns_se_cde
     , wnpz_trget_se_cde AS rwrpns_trget_se_cde
     , wnpz_trget_id AS rwrpns_trget_id
     , wnpz_trget_agrde_cde as rwrpns_trget_agrde_cde
     , team_id
     , 'W' || wnpz_cde AS rwrpns_cde
     , '^' AS dscpl_ty_1_cde
     , '^' AS dscpl_ty_2_cde
     , '^' AS dscpl_ty_3_cde
     , '^' AS dscpl_mby_cde
     , '^' AS dscpl_knd_cde
     , 1 AS rwrpns_co
  FROM kfadm.wf_wnpz
 GROUP BY stdr_year
     , cmpet_no
     , wnpz_trget_se_cde
     , wnpz_trget_id
     , wnpz_trget_agrde_cde
     , team_id
     , wnpz_cde
;



/*
 * 상벌현황 by 징계현황
 */
SELECT stdr_year
     , cmpet_no
     , game_no
     , 'D' AS rwrpns_se_cde
     , dscpl_trget_se_cde AS rwrpns_trget_se_cde
     , dscpl_trget_id AS rwrpns_trget_id
     , dscpl_trget_agrde_cde as rwrpns_trget_agrde_cde
     , team_id
     , 'D' || dscpl_stdr_cde AS rwrpns_cde
     , dscpl_ty_1_cde
     , dscpl_ty_2_cde
     , dscpl_ty_3_cde
     , dscpl_mby_cde
     , dscpl_knd_cde
     , 1 AS rwrpns_co
  FROM kfadm.wf_dscpl_sttus
 GROUP BY stdr_year
     , cmpet_no
     , game_no
     , dscpl_trget_se_cde
     , dscpl_trget_id
     , dscpl_trget_agrde_cde 
     , team_id
     , dscpl_stdr_cde
     , dscpl_ty_1_cde
     , dscpl_ty_2_cde
     , dscpl_ty_3_cde
     , dscpl_mby_cde
     , dscpl_knd_cde
;