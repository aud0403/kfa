insert into t_team_info ;
SELECT tr.activity AS stdr_year
     , tr.teamid AS team_id
     , 'R' AS team_sttus
     , tr.teamname AS team_nm
     , tr.tm_grade AS team_grad_cde
     , tr.tm_area AS team_area_cde
     , tr.league_area AS team_league_area_cde
     , mtt.tm_class AS team_class_cde
     , mtt.asso_class AS team_asoc_grad_cde
     , mtt.tm_gender_cd AS team_sexdstn_cde
     , mtt.tm_age_cd AS team_age_cde
     , mtt.tm_item_cd AS item_cd
     , mtt.tm_pro_yn AS team_pro_at
  FROM tm_register tr
       LEFT OUTER JOIN master_tm_type mtt
    ON UPPER(tr.tm_grade) = mtt.tm_grade
;
insert into t_team_info ;
SELECT TO_CHAR(now(), 'YYYY') AS stdr_year
     , t.id AS team_id
     , CASE WHEN t.id = tr.teamid AND t.tm_status = 'U' THEN 'R' 
            WHEN t.tm_status = 'D' THEN 'D'
            ELSE 'UR'
        END AS team_sttus_cde
     , t."NAME" AS team_nm
     , t.tm_area AS team_area_cde
     , t.tm_grade AS team_grad_cde
     , t.league_area AS team_league_area_cde
     , mtt.tm_class AS team_class_cde
     , mtt.asso_class AS team_asoc_grad_cde
     , mtt.tm_gender_cd AS team_sexdstn_cde
     , mtt.tm_age_cd AS team_age_cde
     , mtt.tm_item_cd AS item_cd
     , mtt.tm_pro_yn AS team_pro_at
     , t.kind_code AS asort_cde
     , t.kind_code_detail1 AS asort_detail_1_cde
     , t.kind_code_detail2 AS asort_detail_2_cde
     , t.k_junior AS pro_junior_at
     , t.yh_type AS union_team_knd_cde
     , t.par_id AS parnts_team_id
     , t.fifa_id AS fifa_id
     , TO_CHAR(t.disband_date, 'YYYYMMDD') AS dsmntl_de
  FROM "teamtbl#" t
       LEFT OUTER JOIN master_tm_type mtt
    ON UPPER(t.tm_grade) = mtt.tm_grade
       LEFT OUTER JOIN tm_register tr
    ON t.id = tr.teamid 
   AND tr.activity = TO_CHAR(NOW(), 'YYYY')
   where par_id != '&#65533;&#51235;二&#65533;'
   /*where (char_length( t.id) > 20 
        or   char_length( t.par_id) > 20 
        or char_length( t.fifa_id) > 20 )*/
; 

select * from "teamtbl#"
 where par_id ='&#65533;&#51235;二&#65533;'
 ;

select * from t_team_info
 where team_id  = 'a09a0018' 
 --team_sttus_cde is null;
 
select * from "teamtbl#"
 where par_id ~ E'[ㄱ-ㅣ가-힣]'
 ;

select * from "teamtbl#"
 where par_id ='&#65533;&#51235;二&#65533;'
     or par_id ~ E'[ㄱ-ㅣ가-힣]'
 ;
 