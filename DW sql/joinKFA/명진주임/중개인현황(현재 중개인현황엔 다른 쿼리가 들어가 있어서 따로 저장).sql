SELECT CASE WHEN ai.ai_idx IS NULL THEN -1 ELSE ai.ai_idx END AS agent_indx
     , CASE WHEN ai.ausrkey IS NULL THEN '^' ELSE ai.ausrkey END AS agent_id
     , CASE WHEN ai.gender IS NULL THEN '^' ELSE ai.gender END AS sexdstn_cde
     , CASE WHEN ai.country_flag = '0' THEN 'Y' ELSE 'N' END AS native_at
     , CASE WHEN ai.s_date IS NULL THEN '^' ELSE TO_CHAR(ai.s_date, 'YYYYMMDD') END AS act_begin_de
     , CASE WHEN ai.e_date IS NULL THEN '^' ELSE TO_CHAR(ai.e_date, 'YYYYMMDD') END AS act_end_de
     , CASE WHEN ai.stats IS NULL THEN '^' ELSE ai.stats END AS agent_act_se_cde
     , CASE WHEN ai.approval2_date IS NULL THEN '^' ELSE TO_CHAR(ai.approval2_date, 'YYYYMMDD') END AS last_confm_de
     , CASE WHEN ai.ai_id IS NULL THEN '^' ELSE ai.ai_id END AS agent_issu_id
     , CASE WHEN aa.stats IS NULL THEN '^' ELSE aa.stats END AS agent_apply_se_cde
     , CASE WHEN aa.step IS NULL THEN '^' ELSE CAST(aa.step AS TEXT) END AS agent_confm_step_cde
     , (select count(pusrkey) from "agent_ply_appv#" apa where ai.ausrkey  = apa.ausrkey) as  cntrct_nmpr
     , ai.company AS psitn_cmpny_nm
     , 1 AS agent_co
  FROM "agent_info#" ai
       LEFT OUTER JOIN
       (
        SELECT aa.ai_idx, aa.stats, aa.step, row_number() OVER(PARTITION BY aa.ai_idx ORDER BY aa.aa_idx DESC ) r
          FROM "agent_approval#" aa
       ) aa
    ON ai.ai_idx = aa.ai_idx 
 WHERE r = 1
 GROUP BY CASE WHEN ai.ai_idx IS NULL THEN -1 ELSE ai.ai_idx END
     , CASE WHEN ai.ausrkey IS NULL THEN '^' ELSE ai.ausrkey END
     , CASE WHEN ai.gender IS NULL THEN '^' ELSE ai.gender END
     , CASE WHEN ai.country_flag = '0' THEN 'Y' ELSE 'N' END
     , CASE WHEN ai.s_date IS NULL THEN '^' ELSE TO_CHAR(ai.s_date, 'YYYYMMDD') END
     , CASE WHEN ai.e_date IS NULL THEN '^' ELSE TO_CHAR(ai.e_date, 'YYYYMMDD') END
     , CASE WHEN ai.stats IS NULL THEN '^' ELSE ai.stats END
     , CASE WHEN ai.approval2_date IS NULL THEN '^' ELSE TO_CHAR(ai.approval2_date, 'YYYYMMDD') END
     , CASE WHEN ai.ai_id IS NULL THEN '^' ELSE ai.ai_id END
     , CASE WHEN aa.stats IS NULL THEN '^' ELSE aa.stats END
     , CASE WHEN aa.step IS NULL THEN '^' ELSE CAST(aa.step AS TEXT) end
     ,(select count(pusrkey) from "agent_ply_appv#" apa where ai.ausrkey  = apa.ausrkey)
     , ai.company
;