--TRUNCATE TABLE joinkfa.t_player_infounion all;


SELECT '2005' AS stdr_year, p.jn AS player_id, -1 AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jn) = 'P' THEN joinkfa.fn_agrde('2005', p.jn)
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, '^' AS confm_step_cde, p.op AS psitn_team_id
     , p.curareacode AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.curleaguecode AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, CAST(p.opyear AS TEXT) AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2005#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.curleaguecode = mtt.tm_grade
union all
SELECT '2006' AS stdr_year, p.jn AS player_id, -1 AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jn) = 'P' THEN joinkfa.fn_agrde('2006', p.jn)
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, '^' AS confm_step_cde, p.op AS psitn_team_id
     , p.curareacode AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.curleaguecode AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, CAST(p.opyear AS TEXT) AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2006#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.curleaguecode = mtt.tm_grade
union all
SELECT '2007' AS stdr_year, p.jn AS player_id, -1 AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jn) = 'P' THEN joinkfa.fn_agrde('2007', p.jn)
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jn) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, '^' AS confm_step_cde, p.op AS psitn_team_id
     , p.curareacode AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.curleaguecode AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, CAST(p.opyear AS TEXT) AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2007#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.curleaguecode = mtt.tm_grade
union all
SELECT '2008' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2008', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2008#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2009' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2009', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2009#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2010' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2010', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2010#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;



SELECT '2011' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2011', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2011#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2012' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2012', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, '^' AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2012#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2013' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2013', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2013#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2014' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2014', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, '^' AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2014#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2015' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2015', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2015#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;



SELECT '2016' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2016', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, '^' AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2016#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2017' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2017', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2017#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2018' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2018', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2018#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;



SELECT '2019' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2019', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2019#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2020' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2020', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2020#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;



SELECT '2021' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2021', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_2021#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;



SELECT TO_CHAR(NOW(), 'YYYY') AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde(TO_CHAR(NOW(), 'YYYY'), p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;

---------------------fut

SELECT '2019' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2019', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_fut_2019#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2020' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2020', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_fut_2020#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
union all
SELECT '2021' AS stdr_year, p.jumin AS player_id, p.idx AS player_indx, p.gender AS player_sexdstn_cde
     , CASE WHEN joinkfa.fn_valid_inspct(p.jumin) = 'P' THEN joinkfa.fn_agrde('2021', p.jumin)
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'E' THEN 'E'
            WHEN joinkfa.fn_valid_inspct(p.jumin) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , mtt.tm_item_cd AS item_cde, country_cd AS nation_cde, p.ad_serial AS ad_issu_no, p.register_step AS confm_step_cde, p.teamid AS psitn_team_id
     , p.tm_area AS psitn_team_area_cde, mtt.tm_class AS psitn_team_class_cde, p.tm_grade AS psitn_team_grad_cde
     , p."POSITION" AS player_postn_cde, p.begrade AS player_grade_cde, p.hired AS loan_at
     , p.teamname AS psitn_team_nm, p.hname AS player_nm
  FROM joinkfa."player_info_fut_2021#" p
       LEFT OUTER JOIN joinkfa.master_tm_type mtt
    ON p.tm_grade = mtt.tm_grade
;


