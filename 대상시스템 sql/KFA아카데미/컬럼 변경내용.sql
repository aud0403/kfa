SELECT table_name, column_name, ORDINAL_POSITION
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE table_schema = 'kfaacademy'
    and  column_name ~ '[A-Z]'
 ORDER by table_name,  ORDINAL_POSITION;
 


SELECT *  --RELNAME AS TABLE_NAME
  FROM PG_STAT_USER_TABLES
 where schemaname = 'kfaacademy'
  ;
  
 
 ALTER TABLE table_name 
RENAME COLUMN column_name TO new_column_name;

SELECT 
 'ALTER TABLE '||table_name|| 
 ' RENAME COLUMN "' ||column_name|| '" TO ' ||lower(column_name)||';'
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE table_schema = 'kfaacademy'
    and  column_name ~ '[A-Z]'
 ORDER by table_name,  ORDINAL_POSITION;

ALTER TABLE fb_batchjob_log RENAME COLUMN "RESULT" TO result;
ALTER TABLE fb_betaprogress RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_betaprogress_log RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_comp RENAME COLUMN "OWNER" TO owner;
ALTER TABLE fb_course_code RENAME COLUMN "UPPER" TO upper;
ALTER TABLE fb_kfa_mstold RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold RENAME COLUMN "HOUR" TO hour;
ALTER TABLE fb_kfa_mstold170725 RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold170725 RENAME COLUMN "HOUR" TO hour;
ALTER TABLE fb_kfa_mstold20180426 RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold20180426 RENAME COLUMN "HOUR" TO hour;
ALTER TABLE fb_kfa_mstold_bak RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold_bak RENAME COLUMN "HOUR" TO hour;
ALTER TABLE fb_kfa_mstold_noid RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold_temp RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold_work RENAME COLUMN "TYPE" TO type;
ALTER TABLE fb_kfa_mstold_work RENAME COLUMN "HOUR" TO hour;
ALTER TABLE fb_log_sendemail RENAME COLUMN "RESULT" TO result;
ALTER TABLE fb_log_sms RENAME COLUMN "RESULT" TO result;
ALTER TABLE fb_membercode RENAME COLUMN "DEPTH" TO depth;
ALTER TABLE fb_menu RENAME COLUMN "UPPER" TO upper;
ALTER TABLE fb_progress RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_progress_log RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_progress_mobile RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_student RENAME COLUMN "SPECIFIC" TO specific;
ALTER TABLE fb_subjlesson RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_subjlesson_content RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_subjlesson_mobile RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_subjlesson_outlink RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_subjmodule RENAME COLUMN "MODULE" TO module;
ALTER TABLE fb_system_board RENAME COLUMN "POSITION" TO position;
ALTER TABLE fb_usermenu RENAME COLUMN "UPPER" TO upper;
ALTER TABLE fb_usermenu_common RENAME COLUMN "UPPER" TO upper;
ALTER TABLE fb_usermenu_master RENAME COLUMN "UPPER" TO upper;
ALTER TABLE sys_export_schema_01 RENAME COLUMN "DEGREE" TO degree;
ALTER TABLE vw_coach_history RENAME COLUMN "POSITION" TO position;