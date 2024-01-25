CREATE TABLE "fb_adminmenuauth" (
       LUSERID VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,MENU                           VARCHAR(9)
     ,GADMIN                         VARCHAR(4)

 );
CREATE TABLE "fb_batchjob" (
       JOB_SEQ NUMERIC
     ,JOBCLASS                       VARCHAR(20)
     ,JOB                            VARCHAR(30)
     ,URL                            VARCHAR(200)
     ,ISUSE                          CHAR(1)
     ,FREQUENCY                      VARCHAR(20)
     ,REPEAT_DAY                     NUMERIC
     ,REPEAT_WEEK                    VARCHAR(10)
     ,REPEAT_TIME                    NUMERIC
     ,REPEAT_NUM                     NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_batchjob_log" (
       LOGS NUMERIC
     ,JOB_SEQ                        NUMERIC
     ,START_DATE                     VARCHAR(14)
     ,END_DATE                       VARCHAR(14)
     ,"RESULT"                       VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_batch_error_log" (
       IDX NUMERIC
     ,ERROR_MSG                      VARCHAR(4000)
     ,REGDATE                   TIMESTAMP

 );
CREATE TABLE "fb_batch_task_log" (
       SEQ NUMERIC
     ,TASK_DATE                      VARCHAR(14)
     ,TASK_TIME                      VARCHAR(6)
     ,BATCH_NM                       VARCHAR(256)
     ,SERVER_IP                      VARCHAR(20)
     ,TASK_START                     VARCHAR(14)
     ,TASK_END                       VARCHAR(14)
     ,TASK_TYPE                      VARCHAR(20)

 );
CREATE TABLE "fb_betaprogress" (
       SUBJSEQ VARCHAR(4)
     ,SUBJ                           VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,LESSON                         VARCHAR(3)
     , "MODULE"                         NUMERIC
     ,FIRST_DT                       VARCHAR(14)
     ,LAST_DT                        VARCHAR(14)
     ,FINAL_CNT                      NUMERIC
     ,LAST_PATH                      VARCHAR(200)
     ,LAST_PAGENO                    NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,STUDY_TIME                     NUMERIC

 );
CREATE TABLE "fb_betaprogress_log" (
       SUBJSEQ VARCHAR(4)
     ,SUBJ                           VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,LESSON                         VARCHAR(3)
     , "MODULE"                         NUMERIC
     ,SEQ                            NUMERIC
     ,LDATE                          VARCHAR(14)
     ,CHKDATE                        VARCHAR(14)

 );
CREATE TABLE "fb_cancel" (
       CANCEL_SEQ NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,"STATE"                          VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,STATE_DATE                     VARCHAR(14)
     ,STATE_USERID                   VARCHAR(20)
     ,CANCEL_TXT                     VARCHAR(200)
     ,CHANGE_TXT                     TEXT
     ,OLD_SUBJSEQ                    VARCHAR(4)
     ,"CLASS"                        VARCHAR(4)
     ,SCORE                          NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ORDR_IDXX                      VARCHAR(40)

 );
CREATE TABLE "fb_coach_disciplinary" (
       USERID VARCHAR(20)
     ,SEQ                            NUMERIC
     ,EFFECT_START                   VARCHAR(50)
     ,IPIN_CI                        VARCHAR(200)
     ,HNAME                          VARCHAR(50)
     ,CODE_NAME                      VARCHAR(100)
     ,REASON                         TEXT
     ,FST_REG_DT                     VARCHAR(50)
     ,EFFECT_END                     VARCHAR(50)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,D_BOUND                        VARCHAR(2)

 );
CREATE TABLE "fb_coach_history" (
       USERID VARCHAR(20)
     ,SEQ                            NUMERIC
     ,TEAM                           VARCHAR(100)
     ,JIK                            VARCHAR(100)
     ,"STATE"                          VARCHAR(100)
     ,ACTIVITY                       VARCHAR(10)
     ,SDATE                          VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,DEL_YN                         CHAR(1)
     ,AFTER_TEAMID                   VARCHAR(1000)
     ,AFTER_TEAMNAME                 VARCHAR(1000)
     ,AFTER_POSITION                 VARCHAR(1000)
     ,GRADE                          VARCHAR(1000)
     ,BEFORE_TEAMID                  VARCHAR(1000)
     ,BEFORE_TEAMNAME                VARCHAR(1000)
     ,BEFORE_POSITION                VARCHAR(1000)
     ,REGDATE                        VARCHAR(1000)
     ,STATUS                         VARCHAR(100)

 );
CREATE TABLE "fb_coach_trade_history" (
       USERID VARCHAR(20)
     ,SEQ                            NUMERIC
     ,ACTIVITY                       VARCHAR(10)
     ,STATUS                         VARCHAR(50)
     ,AFTER_TEAMNAME                 VARCHAR(100)
     ,AFTER_POSITION                 VARCHAR(100)
     ,BEFORE_TEAMNAME                VARCHAR(100)
     ,BEFORE_POSITION                VARCHAR(100)
     ,REGDATE                        VARCHAR(50)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_code" (
       CODE VARCHAR(20)
     ,CODENM                         VARCHAR(100)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ORDERS                         NUMERIC
     ,GUBUN                          VARCHAR(4)
     ,PUSH_DEVICE                    VARCHAR(20)

 );
CREATE TABLE "fb_codegubun" (
       GUBUN VARCHAR(4)
     ,GUBUNNM                        VARCHAR(100)
     ,ISSYSTEM                       CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_common_except" (
       SEQ NUMERIC
     ,GUBUN                          VARCHAR(100)
     ,SUBJGUBUN                      VARCHAR(30)
     ,USERID                         VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,COMMENTS                       VARCHAR(100)

 );
CREATE TABLE "fb_comp" (
       COMP VARCHAR(20)
     ,COMPNM                         VARCHAR(200)
     ,COMPRESNO                      VARCHAR(13)
     ,"OWNER"                        VARCHAR(20)
     ,POST                           VARCHAR(7)
     ,ADDR1                          VARCHAR(200)
     ,ADDR2                          VARCHAR(200)
     ,PHONE                          VARCHAR(16)
     ,FAX                            VARCHAR(16)
     ,HOMEPAGE                       VARCHAR(100)
     ,COMP_TYPE                      VARCHAR(20)
     ,DEPT_TYPE                      VARCHAR(200)
     ,MEMO                           TEXT
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GUBUN                          VARCHAR(20)
     ,GRADE_TYPE                     VARCHAR(10)
     ,ONLINE_EWORK_YN                CHAR(1)
     ,OFFLINE_EWORK_YN               CHAR(1)
     ,OUTSUBJ_EWORK_YN               CHAR(1)
     ,ORD                            NUMERIC
     ,ONLINE_SELFWORK_YN             CHAR(1)

 );
CREATE TABLE "fb_compclass" (
       COMP VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,USERID                         VARCHAR(20)
     ,CPRATE                         NUMERIC

 );
CREATE TABLE "fb_contents_mediakey" (
       UPLOAD_KEY VARCHAR(20)
     ,FILE_NM                        VARCHAR(200)
     ,MEDIA_KEY                      VARCHAR(10)
     ,CALLBACK_YN                    VARCHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_content_main" (
       SEQ NUMERIC
     ,GRGUBUN                        CHAR(1)
     ,CONTENTTYPE                    CHAR(1)
     ,URL                            VARCHAR(200)
     ,WIDTHSIZE                      NUMERIC
     ,HEIGHTSIZE                     NUMERIC
     ,TITLE                          VARCHAR(200)
     ,CNT                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,IMGTYPE                        CHAR(1)
     ,IMGURL                         VARCHAR(200)

 );
CREATE TABLE "fb_content_mapping" (
       SEQ NUMERIC
     ,GRGUBUN                        CHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SORT                           NUMERIC
     ,MAPPING_YN                     CHAR(1)

 );
CREATE TABLE "fb_course" (
       SUBJ VARCHAR(50)
     ,SUBJSEQ                        VARCHAR(200)
     ,CODE                           VARCHAR(500)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(16)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(16)

 );
CREATE TABLE "fb_course_code" (
       CODE VARCHAR(20)
     ,CODENM_KOR                     VARCHAR(50)
     ,CODENM_ENG                     VARCHAR(200)
     ,"UPPER"                          VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(16)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(16)

 );
CREATE TABLE "fb_culture_mediakey_temp" (
       MEDIA_CONTENT_KEY VARCHAR(20)
     ,NEW_MEDIA_CONTENT_KEY          VARCHAR(20)

 );
CREATE TABLE "fb_culture_play" (
       SUBJ VARCHAR(20)
     ,SEQ                            NUMERIC
     ,USERID                         VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_exam" (
       SUBJ VARCHAR(20)
     ,EXAM_SEQ                       NUMERIC
     ,LEVELS                         VARCHAR(20)
     ,EXAM_TYPE                      VARCHAR(20)
     ,USE_YN                         CHAR(1)
     ,EXAM_TEXT                      VARCHAR(1000)
     ,EXP_TEXT                       VARCHAR(1000)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_exampaper" (
       SUBJ VARCHAR(20)
     ,PAPER_SEQ                      NUMERIC
     ,PAPER_TYPE                     VARCHAR(20)
     ,PAPER_TITLE                    VARCHAR(200)
     ,ISOPEN_ANSWER                  CHAR(1)
     ,ISOPEN_EXP                     CHAR(1)
     ,TYPE2_LEV1_CNT                 NUMERIC
     ,TYPE2_LEV2_CNT                 NUMERIC
     ,TYPE2_LEV3_CNT                 NUMERIC
     ,TYPE1_LEV1_CNT                 NUMERIC
     ,TYPE1_LEV2_CNT                 NUMERIC
     ,TYPE1_LEV3_CNT                 NUMERIC
     ,TYPE4_LEV1_CNT                 NUMERIC
     ,TYPE4_LEV2_CNT                 NUMERIC
     ,TYPE4_LEV3_CNT                 NUMERIC
     ,TYPE3_LEV1_CNT                 NUMERIC
     ,TYPE3_LEV2_CNT                 NUMERIC
     ,TYPE3_LEV3_CNT                 NUMERIC
     ,LEV1_SCORE                     NUMERIC
     ,LEV2_SCORE                     NUMERIC
     ,LEV3_SCORE                     NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_exampaper_exam" (
       SUBJ VARCHAR(20)
     ,PAPER_SEQ                      NUMERIC
     ,EXAM_SEQ                       NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_examresult" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,PAPER_SEQ                      NUMERIC
     ,USERID                         VARCHAR(20)
     ,TOTGETSCORE                    NUMERIC
     ,TOTEXAMCNT                     NUMERIC
     ,TOTANSWER                      NUMERIC
     ,STARTTIME                      VARCHAR(14)
     ,ENDTIME                        VARCHAR(14)
     ,CNT                            NUMERIC
     ,USERIP                         VARCHAR(15)
     ,TYPE4_MARK_YN                  CHAR(1)
     ,TYPE4_MARK_DATE                VARCHAR(14)
     ,TYPE4_MARK_USERID              VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_examsul" (
       SUBJ VARCHAR(20)
     ,EXAM_SEQ                       NUMERIC
     ,SEL_SEQ                        NUMERIC
     ,SEL_TEXT                       VARCHAR(1000)
     ,ISANSWER                       CHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_examsul_result" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,PAPER_SEQ                      NUMERIC
     ,EXAM_SEQ                       NUMERIC
     ,USERID                         VARCHAR(20)
     ,ORD                            NUMERIC
     ,ANSWER                         VARCHAR(1000)
     ,ISANSWER                       CHAR(1)
     ,SCORE                          NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_exam_log" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,PAPER_SEQ                      NUMERIC
     ,USERID                         VARCHAR(20)
     ,SEQ                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,USERIP                         VARCHAR(50)
     ,DEVICE                         VARCHAR(50)

 );
CREATE TABLE "fb_gadmin" (
       GADMIN VARCHAR(4)
     ,GADMINNM                       VARCHAR(80)
     ,COMMENTS                       VARCHAR(100)
     ,PADMIN                         VARCHAR(3)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_gateimage" (
       GRCODE VARCHAR(7)
     ,TOPREALFILE                    VARCHAR(256)
     ,TOPSAVEFILE                    VARCHAR(256)
     ,FOOTERREALFILE                 VARCHAR(256)
     ,FOOTERSAVEFILE                 VARCHAR(256)
     ,FOOTERCOPYREALFILE             VARCHAR(256)
     ,FOOTERCOPYSAVEFILE             VARCHAR(256)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ADMIN_EMAIL                    VARCHAR(80)
     ,ADDR_TXT                       VARCHAR(256)
     ,TOP_TXT                        VARCHAR(256)
     ,SUB_TXT                        VARCHAR(256)
     ,COPY_TXT                       VARCHAR(256)

 );
CREATE TABLE "fb_gate_obj" (
       SEQ NUMERIC
     ,SIZETYPE                       VARCHAR(20)
     ,GUBUN                          VARCHAR(20)
     ,OBJNM                          VARCHAR(80)
     ,OBJTEXT                        TEXT
     ,OBJURL                         VARCHAR(256)
     ,ISBLANK                        CHAR(1)
     ,SAVEFILE                       VARCHAR(256)
     ,REALFILE                       VARCHAR(256)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_gate_obj_grcode" (
       GRCODE VARCHAR(7)
     ,SEQ                            NUMERIC
     ,ORD                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_grcode" (
       GRCODE VARCHAR(7)
     ,GRCODENM                       VARCHAR(50)
     ,INCHARGEID                     VARCHAR(20)
     ,"DOMAIN"                        VARCHAR(200)
     ,LAYOUTTYPE                     VARCHAR(4)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,USEYN                          CHAR(1)
     ,CDPSTATE                       CHAR(1)
     ,REPAIR                         CHAR(1)
     ,REPAIR_DT                      VARCHAR(256)
     ,REPAIR_TXT                     VARCHAR(256)
     ,ORD                            NUMERIC
     ,SUBJCLASSLEVEL                 NUMERIC

 );
CREATE TABLE "fb_grcodeman" (
       USERID VARCHAR(20)
     ,GADMIN                         VARCHAR(4)
     ,GRCODE                         VARCHAR(7)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_grcomp" (
       LUSERID VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GRCODE                         VARCHAR(7)
     ,COMP                           VARCHAR(20)

 );
CREATE TABLE "fb_holyday" (
       HDATE VARCHAR(8)
     ,ISHOLYDAY                      CHAR(1)
     ,ISWEEK                         CHAR(1)
     ,HDATE_TXT                      VARCHAR(20)

 );
CREATE TABLE "fb_homefaq_category" (
       CATEGORY VARCHAR(4)
     ,CATEGORYNAME                   VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_keyword" (
       GRCODE VARCHAR(7)
     ,KEYWORD                        NUMERIC
     ,KEYWORDNM                      VARCHAR(100)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_kfa_license_info" (
       SEQ NUMERIC
     ,RESNO                          VARCHAR(50)
     ,CL_KFA                         VARCHAR(50)
     ,CL_AFC                         VARCHAR(50)
     ,GK_KFA                         VARCHAR(50)
     ,GK_AFC                         VARCHAR(50)
     ,FS_KFA                         VARCHAR(50)
     ,FS_AFC                         VARCHAR(50)
     ,LDATE                          VARCHAR(50)
     ,CL_EDUEND                      VARCHAR(50)
     ,GK_EDUEND                      VARCHAR(50)
     ,FS_EDUEND                      VARCHAR(50)

 );
CREATE TABLE "fb_kfa_mstold" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(8)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)
     ,COMP_NO                        VARCHAR(20)
     ,FIX_ENDED                      VARCHAR(8)
     ,FLAG                           CHAR(1)

 );
CREATE TABLE "fb_kfa_mstold170725" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(8)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)
     ,COMP_NO                        VARCHAR(20)
     ,FIX_ENDED                      VARCHAR(8)

 );
CREATE TABLE "fb_kfa_mstold20180426" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(8)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)

 );
CREATE TABLE "fb_kfa_mstold_bak" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(8)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)

 );
CREATE TABLE "fb_kfa_mstold_noid" (
       GUBUN VARCHAR(50)
     ,GUBUNNM                        VARCHAR(50)
     ,"TYPE"                         VARCHAR(50)
     ,LICENSE                        VARCHAR(50)
     ,ISSUE_DATE                     VARCHAR(50)
     ,"YEAR"                         VARCHAR(50)
     ,IPIN_CI                        VARCHAR(200)
     ,HNAME                          VARCHAR(50)

 );
CREATE TABLE "fb_kfa_mstold_temp" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(30)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)

 );
CREATE TABLE "fb_kfa_mstold_work" (
       SEQ NUMERIC
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"TYPE"                         VARCHAR(200)
     ,SUBJNM                         VARCHAR(200)
     ,"YEAR"                         VARCHAR(4)
     ,STARTED                        VARCHAR(8)
     ,ENDED                          VARCHAR(8)
     ,PACCEPT                        NUMERIC
     ,GRAYN                          CHAR(1)
     ,"HOUR"                          NUMERIC
     ,INSTITUTE                      VARCHAR(200)
     ,TUTORNAME                      VARCHAR(200)
     ,PLCAE                          VARCHAR(200)
     ,ISSUPERIOR                     CHAR(1)
     ,ISBLACKLIST                    CHAR(1)
     ,KFACODE                        VARCHAR(200)
     ,AFCCODE                        VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,RESNO                          VARCHAR(20)
     ,GRADE                          VARCHAR(10)
     ,USERID                         VARCHAR(20)
     ,KFASUBJ                        VARCHAR(20)
     ,KFASUBJSEQ                     VARCHAR(4)
     ,STEP                           VARCHAR(10)
     ,EXAM                           VARCHAR(10)
     ,LICENSE_NDATE                  VARCHAR(14)
     ,LICENSE_UDATE                  VARCHAR(14)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,RENEWAL_CNT                    NUMERIC
     ,HISTORYGUBUN                   VARCHAR(10)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(50)

 );
CREATE TABLE "fb_languagescript" (
       LANGKEY VARCHAR(80)
     ,GUBUN                          VARCHAR(20)
     ,KOREAN                         VARCHAR(1000)
     ,ENGLISH                        VARCHAR(1000)
     ,CHINESE                        VARCHAR(1000)
     ,COMMENTS                       VARCHAR(200)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_languagescript_dev" (
       LANGKEY VARCHAR(80)
     ,GUBUN                          VARCHAR(20)
     ,KOREAN                         VARCHAR(1000)
     ,ENGLISH                        VARCHAR(1000)
     ,CHINESE                        VARCHAR(1000)
     ,COMMENTS                       VARCHAR(200)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_languagescript_real" (
       LANGKEY VARCHAR(80)
     ,GUBUN                          VARCHAR(20)
     ,KOREAN                         VARCHAR(1000)
     ,ENGLISH                        VARCHAR(1000)
     ,CHINESE                        VARCHAR(1000)
     ,COMMENTS                       VARCHAR(200)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_license" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,SUBJGUBUN                      VARCHAR(20)
     ,GETYYMM                        VARCHAR(4)
     ,KFA_NO                         VARCHAR(100)
     ,AFC_NO                         VARCHAR(100)
     ,GETDATE                        VARCHAR(14)
     ,UDATE                          VARCHAR(14)
     ,SENDDATE                       VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,RENEWAL_CNT                    NUMERIC
     ,NDATE                          VARCHAR(14)
     ,CHANGE_YN                      CHAR(1)
     ,GRADE_SUM                      NUMERIC
     ,LIMIT_PROMOTION                CHAR(1)
     ,LIMIT_DATE                     VARCHAR(8)
     ,UNLIMIT_DATE                   VARCHAR(8)
     ,FLAG                           CHAR(1)

 );
CREATE TABLE "fb_license_bak" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,SUBJGUBUN                      VARCHAR(20)
     ,GETYYMM                        VARCHAR(4)
     ,KFA_NO                         VARCHAR(30)
     ,AFC_NO                         VARCHAR(30)
     ,GETDATE                        VARCHAR(14)
     ,UDATE                          VARCHAR(14)
     ,SENDDATE                       VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,RENEWAL_CNT                    NUMERIC
     ,NDATE                          VARCHAR(14)
     ,CHANGE_YN                      CHAR(1)

 );
CREATE TABLE "fb_license_gubun" (
       GUBUN VARCHAR(12)
     ,LICENSENM                      VARCHAR(50)
     ,LICENSE_ORDER                  NUMERIC
     ,OLD_PERIOD                     NUMERIC
     ,OLD_GRADE                      NUMERIC
     ,NEW_PERIOD                     NUMERIC
     ,NEW_GRADE                      NUMERIC

 );
CREATE TABLE "fb_license_issued" (
       LICENSE_NO VARCHAR(30)
     ,ORDR_IDXX                      VARCHAR(40)
     ,SUBJGUBUN                      VARCHAR(20)
     ,APPLY_USERID                   VARCHAR(20)
     ,APPLY_DATE                     VARCHAR(14)
     ,"STATE"                          VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,UDATE                          VARCHAR(14)
     ,ENG_YN                         CHAR(1)

 );
CREATE TABLE "fb_license_temp" (
       SUBJ VARCHAR(20)
     ,"YEAR"                         VARCHAR(4)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,KFA_NO                         VARCHAR(40)
     ,AFC_NO                         VARCHAR(40)
     ,SENDDATE                       VARCHAR(20)
     ,LDATE                          VARCHAR(20)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_license_update_log" (
       SEQ NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,SUBJGUBUN                      VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)

 );
CREATE TABLE "fb_login" (
       LOGIN_SEQ NUMERIC
     ,USERID                         VARCHAR(30)
     ,IPADDRESS                      VARCHAR(20)
     ,LOGINTIME                 TIMESTAMP
     ,OS_TYPE_CODE                   VARCHAR(4)

 );
CREATE TABLE "fb_loginchk_log" (
       SEQ NUMERIC
     ,USERID                         VARCHAR(30)
     ,LASTLOGIN                      VARCHAR(14)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_log_sendemail" (
       YEARMONTH VARCHAR(6)
     ,SEQ                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,SUBJECT                        VARCHAR(200)
     ,RECEIVEEMAIL                   VARCHAR(200)
     ,SENDEMAIL                      VARCHAR(200)
     ,SAVEFILENAME                   VARCHAR(200)
     ,REALFILENAME                   VARCHAR(200)
     ,FILESIZE                       NUMERIC
     ,"RESULT"                       VARCHAR(10)
     ,RESULT_MSG                     TEXT
     ,RECEIVEUSERID                  VARCHAR(20)

 );
CREATE TABLE "fb_log_sms" (
       SEQ NUMERIC
     ,SMSDATE                        VARCHAR(14)
     ,CALL_TO                        VARCHAR(30)
     ,CALL_FROM                      VARCHAR(30)
     ,RESERVATION_TIME               VARCHAR(14)
     ,CONTENT                        VARCHAR(500)
     ,"RESULT"                       CHAR(1)
     ,RESULT_MSG                     TEXT
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(25)
     ,COMP                           VARCHAR(20)

 );
CREATE TABLE "fb_manager" (
       USERID VARCHAR(20)
     ,GADMIN                         VARCHAR(4)
     ,FMON                           VARCHAR(8)
     ,TMON                           VARCHAR(8)
     ,COMMENTS                       VARCHAR(100)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GUBUN                          CHAR(1)

 );
CREATE TABLE "fb_manager_index" (
       USERID VARCHAR(20)
     ,MENUCODE                       VARCHAR(10)
     ,ORD                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,VIEWYN                         CHAR(1)

 );
CREATE TABLE "fb_manager_menuauth" (
       USERID VARCHAR(50)
     ,SUBJ                           VARCHAR(10)
     ,SUBJSEQ                        VARCHAR(10)

 );
CREATE TABLE "fb_manager_remote_menu" (
       USERID VARCHAR(20)
     ,MENU                           VARCHAR(9)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_member" (
       USERID VARCHAR(20)
     ,PWD                            VARCHAR(40)
     ,"NAME"                         VARCHAR(128)
     ,GENDER                         CHAR(1)
     ,BIRTHDAY                       VARCHAR(9)
     ,POST                           CHAR(7)
     ,ADDR1                          VARCHAR(500)
     ,ADDR2                          VARCHAR(200)
     ,HANDPHONE                      VARCHAR(32)
     ,EMAIL                          VARCHAR(256)
     ,SMS_YN                         CHAR(1)
     ,EMAIL_YN                       CHAR(1)
     ,COMP                           VARCHAR(20)
     ,DEPT                           VARCHAR(20)
     ,JIK                            VARCHAR(20)
     ,CLOSE_YN                       CHAR(1)
     ,CLOSE_CODE                     VARCHAR(20)
     ,CLOSE_ETC                      VARCHAR(200)
     ,CLOSE_DT                       VARCHAR(14)
     ,LOGIN_FAIL_CNT                 NUMERIC
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,AUTO_LOGIN                     VARCHAR(20)
     ,AUTO_LOGIN_KEY                 VARCHAR(100)
     ,PHONE                          VARCHAR(32)
     ,JIKGUN                         VARCHAR(20)
     ,JIKJONG                        VARCHAR(20)
     ,JIKMU                          VARCHAR(20)
     ,ISOUTMEM                       CHAR(1)
     ,OUTCOMP                        VARCHAR(20)
     ,OUTDEPTNM                      VARCHAR(80)
     ,OUTJIKNM                       VARCHAR(80)
     ,LOGIN_YN                       CHAR(1)
     ,HRD_SUBJIKMU                   VARCHAR(20)
     ,MANAGER_GUBUN                  CHAR(1)
     ,MANAGER_COMPNM                 VARCHAR(256)
     ,STATUS                         VARCHAR(1)
     ,USER_TYPE                      VARCHAR(2)
     ,PIN                            VARCHAR(200)
     ,FOREIGNER                      VARCHAR(10)
     ,NAME_ENG                       VARCHAR(128)
     ,WORKPLACE                      VARCHAR(100)
     ,TEAM                           VARCHAR(100)
     ,COMP_PHONE                     VARCHAR(32)
     ,BLOODTYPE                      VARCHAR(10)
     ,HEIGHT                         NUMERIC
     ,WEIGHT                         NUMERIC
     ,CLOTHES_SIZE                   VARCHAR(20)
     ,SHOE_SIZE                      VARCHAR(20)
     ,EDU_LEVEL                      VARCHAR(20)
     ,INSTITUTION                    VARCHAR(100)
     ,CAREER                         TEXT
     ,AMATCH_YN                      CHAR(1)
     ,KLEAGUE_YN                     CHAR(1)
     ,FLEAGUE_YN                     CHAR(1)
     ,GOOD_YN                        CHAR(1)
     ,GOLDEN_YN                      CHAR(1)
     ,KLEADER_YN                     CHAR(1)
     ,NATIONAL_YN                    CHAR(1)
     ,FLICENSE_YN                    CHAR(1)
     ,PHONE_EXTENSION                VARCHAR(15)
     ,PHONE_TYPE                     VARCHAR(20)
     ,ADDR_TYPE                      VARCHAR(20)
     ,PHONE2                         VARCHAR(32)
     ,PHONE3                         VARCHAR(60)
     ,HANDPHONE2                     VARCHAR(32)
     ,HANDPHONE3                     VARCHAR(60)
     ,MARKETING_YN                   CHAR(1)
     ,THIRDOFFER_YN                  CHAR(1)
     ,BANK                           VARCHAR(20)
     ,ACCOUNT                        VARCHAR(60)
     ,IPIN_DI                        VARCHAR(200)
     ,IPIN_CI                        VARCHAR(200)
     ,PASSPORT_NO                    VARCHAR(60)
     ,PASSPORT_DATE                  VARCHAR(60)
     ,RESNO                          VARCHAR(20)
     ,IS_TEMP_PWD                    CHAR(1)
     ,SPECIAL_CODE                   VARCHAR(200)
     ,ETC                            VARCHAR(4000)
     ,PUSH_YN                        CHAR(1)
     ,PUSH_MAC_ADRESS                VARCHAR(200)
     ,PUSH_DEVICE                    VARCHAR(20)
     ,SMS_RECEIVE_DENIED             CHAR(1)
     ,SMS_RECEIVE_DENIED_LUSERID     VARCHAR(20)
     ,SMS_RECEIVE_DENIED_LDATE       VARCHAR(14)
     ,LEADER_YN                      CHAR(1)
     ,REFEREE_YN                     CHAR(1)

 );
CREATE TABLE "fb_membercode" (
       CODE VARCHAR(20)
     ,COMP                           VARCHAR(20)
     ,PARENT_CODE                    VARCHAR(20)
     ,CODE_TYPE                      VARCHAR(4)
     ,COMM_CODE                      VARCHAR(13)
     ,"DEPTH"                          VARCHAR(256)
     ,DISPLAY_ORDER                  VARCHAR(256)
     ,DEPT_MANAGER                   VARCHAR(20)
     ,CODENM_KR                      VARCHAR(128)
     ,CODENM_EN                      VARCHAR(128)
     ,USERYN                         CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_member_20180326" (
       USERID VARCHAR(20)
     ,PWD                            VARCHAR(40)
     ,"NAME"                         VARCHAR(128)
     ,GENDER                         CHAR(1)
     ,BIRTHDAY                       VARCHAR(9)
     ,POST                           CHAR(7)
     ,ADDR1                          VARCHAR(200)
     ,ADDR2                          VARCHAR(200)
     ,HANDPHONE                      VARCHAR(32)
     ,EMAIL                          VARCHAR(256)
     ,SMS_YN                         CHAR(1)
     ,EMAIL_YN                       CHAR(1)
     ,COMP                           VARCHAR(20)
     ,DEPT                           VARCHAR(20)
     ,JIK                            VARCHAR(20)
     ,CLOSE_YN                       CHAR(1)
     ,CLOSE_CODE                     VARCHAR(20)
     ,CLOSE_ETC                      VARCHAR(200)
     ,CLOSE_DT                       VARCHAR(14)
     ,LOGIN_FAIL_CNT                 NUMERIC
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,AUTO_LOGIN                     VARCHAR(20)
     ,AUTO_LOGIN_KEY                 VARCHAR(80)
     ,PHONE                          VARCHAR(32)
     ,JIKGUN                         VARCHAR(20)
     ,JIKJONG                        VARCHAR(20)
     ,JIKMU                          VARCHAR(20)
     ,ISOUTMEM                       CHAR(1)
     ,OUTCOMP                        VARCHAR(20)
     ,OUTDEPTNM                      VARCHAR(80)
     ,OUTJIKNM                       VARCHAR(80)
     ,LOGIN_YN                       CHAR(1)
     ,HRD_SUBJIKMU                   VARCHAR(20)
     ,MANAGER_GUBUN                  CHAR(1)
     ,MANAGER_COMPNM                 VARCHAR(256)
     ,STATUS                         VARCHAR(1)
     ,USER_TYPE                      VARCHAR(2)
     ,PIN                            VARCHAR(200)
     ,FOREIGNER                      VARCHAR(10)
     ,NAME_ENG                       VARCHAR(128)
     ,WORKPLACE                      VARCHAR(100)
     ,TEAM                           VARCHAR(100)
     ,COMP_PHONE                     VARCHAR(32)
     ,BLOODTYPE                      VARCHAR(10)
     ,HEIGHT                         NUMERIC
     ,WEIGHT                         NUMERIC
     ,CLOTHES_SIZE                   VARCHAR(20)
     ,SHOE_SIZE                      VARCHAR(20)
     ,EDU_LEVEL                      VARCHAR(20)
     ,INSTITUTION                    VARCHAR(100)
     ,CAREER                         TEXT
     ,AMATCH_YN                      CHAR(1)
     ,KLEAGUE_YN                     CHAR(1)
     ,FLEAGUE_YN                     CHAR(1)
     ,GOOD_YN                        CHAR(1)
     ,GOLDEN_YN                      CHAR(1)
     ,KLEADER_YN                     CHAR(1)
     ,NATIONAL_YN                    CHAR(1)
     ,FLICENSE_YN                    CHAR(1)
     ,PHONE_EXTENSION                VARCHAR(10)
     ,PHONE_TYPE                     VARCHAR(20)
     ,ADDR_TYPE                      VARCHAR(20)
     ,PHONE2                         VARCHAR(32)
     ,PHONE3                         VARCHAR(32)
     ,HANDPHONE2                     VARCHAR(32)
     ,HANDPHONE3                     VARCHAR(32)
     ,MARKETING_YN                   CHAR(1)
     ,THIRDOFFER_YN                  CHAR(1)
     ,BANK                           VARCHAR(20)
     ,ACCOUNT                        VARCHAR(30)
     ,IPIN_DI                        VARCHAR(200)
     ,IPIN_CI                        VARCHAR(200)
     ,PASSPORT_NO                    VARCHAR(20)
     ,PASSPORT_DATE                  VARCHAR(14)
     ,RESNO                          VARCHAR(20)
     ,IS_TEMP_PWD                    CHAR(1)
     ,SPECIAL_CODE                   VARCHAR(200)

 );
CREATE TABLE "fb_member_mobile" (
       SEQ NUMERIC
     ,UUID                           VARCHAR(100)
     ,USERID                         VARCHAR(30)
     ,TOKEN                          VARCHAR(200)
     ,DEVICE_TYPE                    VARCHAR(20)
     ,USE_YN                         CHAR(1)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_menu" (
       MENU VARCHAR(9)
     ,MENUNM                         VARCHAR(40)
     ,LEVELS                         NUMERIC
     ,"UPPER"                          VARCHAR(9)
     ,PGM                            VARCHAR(200)
     ,ISDISPLAY                      CHAR(1)
     ,ORDERS                         NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ISSTEP                         CHAR(1)

 );
CREATE TABLE "fb_mfmenu" (
       MENU VARCHAR(20)
     ,MENUNM                         VARCHAR(80)
     ,URLPATH                        VARCHAR(200)
     ,ISMAIN                         CHAR(1)
     ,ORD                            numeric 
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_mfmenu_subj" (
       SUBJ VARCHAR(20)
     ,MENU                           VARCHAR(20)
     ,ORD                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_oath" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_oath_agree" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)

 );
CREATE TABLE "fb_objatt" (
       OID VARCHAR(10)
     ,ATT                            VARCHAR(10)
     ,SDESC                          VARCHAR(200)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_object" (
       OID VARCHAR(10)
     ,OTYPE                          VARCHAR(4)
     ,FILETYPE                       VARCHAR(4)
     ,NPAGE                          NUMERIC
     ,SDESC                          VARCHAR(200)
     ,MASTER                         VARCHAR(20)
     ,STARTING                       VARCHAR(200)
     ,SERVER                         VARCHAR(10)
     ,SUBJ                           VARCHAR(20)
     ,PARAMETERSTRING                VARCHAR(255)
     ,IDENTIFIER                     VARCHAR(255)
     ,PREREQUISITES                  VARCHAR(255)
     ,MASTERYSCORE                   NUMERIC
     ,MAXTIMEALLOWED                 VARCHAR(20)
     ,TIMELIMITACTION                VARCHAR(255)
     ,SEQUENCE                       NUMERIC
     ,THELEVEL                       NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,OIDNUMERIC                     NUMERIC
     ,HIGHOID                        VARCHAR(10)
     ,METALOCATION                   VARCHAR(200)
     ,SCOLOCATE                      VARCHAR(10)
     ,SCOALL                         NUMERIC
     ,SCOTITLE                       VARCHAR(255)
     ,DATAFROMLMS                    VARCHAR(255)
     ,PRODUCER                       VARCHAR(18)
     ,INUSERID                       VARCHAR(20)
     ,CPSEQ                          VARCHAR(25)

 );
CREATE TABLE "fb_payment" (
       ORDR_IDXX VARCHAR(40)
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,LICENSE_NO                     VARCHAR(30)
     ,REQ_TX                         VARCHAR(3)
     ,USE_PAY_METHOD                 VARCHAR(12)
     ,GOOD_NAME                      VARCHAR(200)
     ,BUYR_NAME                      VARCHAR(30)
     ,BUYR_TEL1                      VARCHAR(60)
     ,BUYR_TEL2                      VARCHAR(60)
     ,BUYR_MAIL                      VARCHAR(256)
     ,TNO                            VARCHAR(14)
     ,RES_CD                         VARCHAR(4)
     ,RES_MSG                        VARCHAR(100)
     ,APP_TIME                       NUMERIC
     ,AMOUNT                         NUMERIC
     ,TOTAL_AMOUNT                   NUMERIC
     ,COUPON_MNY                     NUMERIC
     ,CARD_CD                        VARCHAR(4)
     ,CARD_NAME                      VARCHAR(32)
     ,CARD_NO                        VARCHAR(60)
     ,VNUM_NO                        VARCHAR(12)
     ,EXPR_DT                        NUMERIC
     ,ARS_TRADE_NO                   NUMERIC
     ,APP_NO                         VARCHAR(8)
     ,NOINF                          CHAR(1)
     ,NOINF_TYPE                     VARCHAR(4)
     ,QUOTA                          VARCHAR(2)
     ,CARD_MNY                       NUMERIC
     ,PARTCANC_YN                    CHAR(1)
     ,CARD_BIN_TYPE_01               NUMERIC
     ,CARD_BIN_TYPE_02               NUMERIC
     ,ISP_ISSUER_CD                  VARCHAR(4)
     ,ISP_ISSUER_NM                  VARCHAR(32)
     ,BANK_CD                        VARCHAR(4)
     ,BANK_NAME                      VARCHAR(20)
     ,BK_MNY                         NUMERIC
     ,BANKNAME                       VARCHAR(20)
     ,BANKCODE                       VARCHAR(4)
     ,ACCOUNT                        VARCHAR(60)
     ,VA_DATE                        NUMERIC
     ,DEPOSITOR                      VARCHAR(50)
     ,VAN_CD                         VARCHAR(4)
     ,VAN_ID                         VARCHAR(4)
     ,COMMID                         VARCHAR(3)
     ,MOBILE_NO                      NUMERIC
     ,PNT_AMOUNT                     NUMERIC
     ,PNT_ISSUE                      VARCHAR(4)
     ,PNT_APP_TIME                   NUMERIC
     ,PNT_APP_NO                     VARCHAR(20)
     ,PNT_RECEIPT_GUBN               CHAR(1)
     ,ADD_PNT                        VARCHAR(14)
     ,USE_PNT                        VARCHAR(14)
     ,RSV_PNT                        VARCHAR(14)
     ,SHOP_USER_ID                   VARCHAR(20)
     ,TK_MNY                         NUMERIC
     ,TK_VAN_CODE                    VARCHAR(4)
     ,TK_APP_NO                      NUMERIC
     ,TK_APP_TIME                    VARCHAR(14)
     ,CASH_YN                        CHAR(1)
     ,CASH_TR_CODE                   VARCHAR(1)
     ,CASH_ID_INFO                   VARCHAR(14)
     ,CASH_AUTHNO                    NUMERIC
     ,CASH_NO                        VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,MOD_SUB_TYPE                   VARCHAR(6)
     ,MOD_COMP_TYPE                  VARCHAR(6)
     ,MOD_DESC                       VARCHAR(100)
     ,MOD_ACCOUNT                    VARCHAR(60)
     ,MOD_DEPOSITOR                  VARCHAR(30)
     ,MOD_BANKCODE                   VARCHAR(4)
     ,MOD_SOCNAME                    VARCHAR(30)
     ,MOD_SOCNO                      NUMERIC
     ,MOD_MNY                        NUMERIC
     ,REM_MNY                        NUMERIC
     ,TAX_FLAG                       VARCHAR(4)
     ,MOD_TAX_MNY                    NUMERIC
     ,MOD_FREE_MNY                   NUMERIC
     ,MOD_VAT_MNY                    NUMERIC

 );
CREATE TABLE "fb_payment_20180326" (
       ORDR_IDXX VARCHAR(40)
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,LICENSE_NO                     VARCHAR(30)
     ,REQ_TX                         VARCHAR(3)
     ,USE_PAY_METHOD                 VARCHAR(12)
     ,GOOD_NAME                      VARCHAR(200)
     ,BUYR_NAME                      VARCHAR(30)
     ,BUYR_TEL1                      VARCHAR(60)
     ,BUYR_TEL2                      VARCHAR(60)
     ,BUYR_MAIL                      VARCHAR(256)
     ,TNO                            VARCHAR(14)
     ,RES_CD                         VARCHAR(4)
     ,RES_MSG                        VARCHAR(100)
     ,APP_TIME                       NUMERIC
     ,AMOUNT                         NUMERIC
     ,TOTAL_AMOUNT                   NUMERIC
     ,COUPON_MNY                     NUMERIC
     ,CARD_CD                        VARCHAR(4)
     ,CARD_NAME                      VARCHAR(32)
     ,CARD_NO                        VARCHAR(30)
     ,VNUM_NO                        VARCHAR(12)
     ,EXPR_DT                        NUMERIC
     ,ARS_TRADE_NO                   NUMERIC
     ,APP_NO                         VARCHAR(8)
     ,NOINF                          CHAR(1)
     ,NOINF_TYPE                     VARCHAR(4)
     ,QUOTA                          VARCHAR(2)
     ,CARD_MNY                       NUMERIC
     ,PARTCANC_YN                    CHAR(1)
     ,CARD_BIN_TYPE_01               NUMERIC
     ,CARD_BIN_TYPE_02               NUMERIC
     ,ISP_ISSUER_CD                  VARCHAR(4)
     ,ISP_ISSUER_NM                  VARCHAR(32)
     ,BANK_CD                        VARCHAR(4)
     ,BANK_NAME                      VARCHAR(20)
     ,BK_MNY                         NUMERIC
     ,BANKNAME                       VARCHAR(20)
     ,BANKCODE                       VARCHAR(4)
     ,ACCOUNT                        VARCHAR(14)
     ,VA_DATE                        NUMERIC
     ,DEPOSITOR                      VARCHAR(14)
     ,VAN_CD                         VARCHAR(4)
     ,VAN_ID                         VARCHAR(4)
     ,COMMID                         VARCHAR(3)
     ,MOBILE_NO                      NUMERIC
     ,PNT_AMOUNT                     NUMERIC
     ,PNT_ISSUE                      VARCHAR(4)
     ,PNT_APP_TIME                   NUMERIC
     ,PNT_APP_NO                     VARCHAR(20)
     ,PNT_RECEIPT_GUBN               CHAR(1)
     ,ADD_PNT                        VARCHAR(14)
     ,USE_PNT                        VARCHAR(14)
     ,RSV_PNT                        VARCHAR(14)
     ,SHOP_USER_ID                   VARCHAR(20)
     ,TK_MNY                         NUMERIC
     ,TK_VAN_CODE                    VARCHAR(4)
     ,TK_APP_NO                      NUMERIC
     ,TK_APP_TIME                    VARCHAR(14)
     ,CASH_YN                        CHAR(1)
     ,CASH_TR_CODE                   VARCHAR(1)
     ,CASH_ID_INFO                   VARCHAR(14)
     ,CASH_AUTHNO                    NUMERIC
     ,CASH_NO                        VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,MOD_SUB_TYPE                   VARCHAR(6)
     ,MOD_COMP_TYPE                  VARCHAR(6)
     ,MOD_DESC                       VARCHAR(100)
     ,MOD_ACCOUNT                    VARCHAR(30)
     ,MOD_DEPOSITOR                  VARCHAR(30)
     ,MOD_BANKCODE                   VARCHAR(4)
     ,MOD_SOCNAME                    VARCHAR(30)
     ,MOD_SOCNO                      NUMERIC
     ,MOD_MNY                        NUMERIC
     ,REM_MNY                        NUMERIC
     ,TAX_FLAG                       VARCHAR(4)
     ,MOD_TAX_MNY                    NUMERIC
     ,MOD_FREE_MNY                   NUMERIC
     ,MOD_VAT_MNY                    NUMERIC

 );
CREATE TABLE "fb_player_history" (
       USERID VARCHAR(20)
     ,SEQ                            NUMERIC
     ,TEAM                           VARCHAR(100)
     ,"STATE"                          VARCHAR(100)
     ,SDATE                          VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_process" (
       PROCESS VARCHAR(9)
     ,PROCESSNM                      VARCHAR(40)
     ,MENU                           VARCHAR(9)
     ,PGM                            VARCHAR(200)
     ,ISUSE                          CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,PROCESS_EXP                    VARCHAR(200)

 );
CREATE TABLE "fb_progress" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         VARCHAR(3)
     ,FIRST_DT                       VARCHAR(14)
     ,LAST_DT                        VARCHAR(14)
     ,FINAL_CNT                      NUMERIC
     ,LAST_PATH                      VARCHAR(200)
     ,LAST_PAGENO                    NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,STUDY_TIME                     NUMERIC

 );
CREATE TABLE "fb_progress_log" (
       SUBJSEQ VARCHAR(4)
     ,SUBJ                           VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,LESSON                         VARCHAR(3)
     , "MODULE"                         NUMERIC
     ,SEQ                            NUMERIC
     ,LDATE                          VARCHAR(14)
     ,CHKDATE                        VARCHAR(14)
     ,DEVICE                         VARCHAR(100)

 );
CREATE TABLE "fb_progress_mobile" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         VARCHAR(3)
     ,CONTENTNO                      NUMERIC
     ,ATTEND_YN                      CHAR(1)
     ,LDATE                          VARCHAR(14)
     ,LAST_PLAY_AT                   NUMERIC

 );
CREATE TABLE "fb_propose" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,"STATE"                          VARCHAR(20)
     ,STATE_USERID                   VARCHAR(20)
     ,STATE_DATE                     VARCHAR(14)
     ,REJECT_TXT                     TEXT
     ,CHANGE_TXT                     TEXT
     ,OLD_SUBJSEQ                    VARCHAR(4)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,RESNO                          VARCHAR(256)
     ,HANDPHONE                      VARCHAR(16)
     ,PHONE                          VARCHAR(16)
     ,DELIVERY_GUBUN                 CHAR(1)
     ,DELIVERY_LOC                   VARCHAR(20)
     ,DELIVERY_ZIP                   VARCHAR(6)
     ,DELIVERY_ADDR1                 VARCHAR(256)
     ,DELIVERY_ADDR2                 VARCHAR(256)
     ,INUSERID                       VARCHAR(20)
     ,NOSHOW_TXT                     TEXT
     ,PAYMENT_YN                     VARCHAR(10)
     ,PERMIT_YN                      VARCHAR(10)
     ,ORDR_IDXX                      VARCHAR(40)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_pwd_history" (
       USERID VARCHAR(20)
     ,SEQ                            NUMERIC
     ,PWD                            VARCHAR(40)
     ,TEMP_YN                        CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_refund_master" (
       SEQ NUMERIC
     ,SUBJGUBUN                      VARCHAR(30)
     ,"YEAR"                         VARCHAR(4)
     ,REFUND_PER                     NUMERIC
     ,START_DATE                     VARCHAR(10)
     ,END_DATE                       VARCHAR(10)
     ,USE_YN                         CHAR(1)

 );
CREATE TABLE "fb_report_result" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,REPORT                         NUMERIC
     ,USERID                         VARCHAR(20)
     ,TITLE                          VARCHAR(200)
     ,CONTENTS                       TEXT
     ,REALFILENAME                   VARCHAR(200)
     ,SAVEFILENAME                   VARCHAR(200)
     ,TUTORID                        VARCHAR(20)
     ,MARK_DATE                      VARCHAR(14)
     ,MARK_YN                        CHAR(1)
     ,SCORE                          NUMERIC
     ,NOTE                           VARCHAR(512)
     ,"STATE"                          VARCHAR(20)
     ,REPORT_DATE                    VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_repository_file" (
       FILESEQ NUMERIC
     ,CNT                            NUMERIC
     ,REALFILENAME                   VARCHAR(200)
     ,SAVEFILENAME                   VARCHAR(200)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SEQ                            VARCHAR(30)
     ,MASTERSEQ                      VARCHAR(30)
     ,FILESIZE                       NUMERIC
     ,SUMMARY                        VARCHAR(256)

 );
CREATE TABLE "fb_retest" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,RETESTSEQ                      NUMERIC
     ,PRACTICAL                      VARCHAR(20)
     ,RESEARCH                       VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_return_url" (
       SDT VARCHAR(14)
     ,EDT                            VARCHAR(14)
     ,MENU_NAME                      VARCHAR(200)
     ,URL                            VARCHAR(200)

 );
CREATE TABLE "fb_senddate_temp" (
       SUBJ VARCHAR(20)
     ,"YEAR"                         VARCHAR(4)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,KFA_NO                         VARCHAR(40)
     ,SENDDATE                       VARCHAR(20)

 );
CREATE TABLE "fb_send_history" (
       GUBUN VARCHAR(5)
     ,FORM_ID                        NUMERIC
     ,SEND_SEQ                       NUMERIC
     ,SEND_TITLE                     VARCHAR(225)
     ,SEND_CONTENTS                  TEXT
     ,SENDER_ID                      VARCHAR(20)
     ,SEND_INFO                      VARCHAR(320)
     ,RECEIVER_ID                    VARCHAR(20)
     ,RECEIVE_INFO                   VARCHAR(320)
     ,SEND_DATE                      VARCHAR(14)
     ,"STATE"                          VARCHAR(20)

 );
CREATE TABLE "fb_send_main" (
       GUBUN VARCHAR(5)
     ,FORM_ID                        NUMERIC
     ,TITLE                          VARCHAR(100)
     ,CONTENTS                       TEXT
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GUBUNNM                        VARCHAR(100)
     ,EMAIL                          VARCHAR(100)

 );
CREATE TABLE "fb_send_param" (
       GUBUN VARCHAR(5)
     ,FORM_ID                        NUMERIC
     ,PARAM_NM                       VARCHAR(50)
     ,PARAM_EXP                      VARCHAR(225)

 );
CREATE TABLE "fb_stold" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,SCORE                          NUMERIC
     ,STOLD_YN                       CHAR(1)
     ,STOLD_CD                       VARCHAR(20)
     ,STOLD_TXT                      TEXT
     ,STOLD_USERID                   VARCHAR(20)
     ,STOLD_DATE                     VARCHAR(14)
     ,CERTNO                         VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,COMP_NO                        VARCHAR(20)
     ,LIMIT_PROMOTION                CHAR(1)

 );
CREATE TABLE "fb_student" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,"CLASS"                        VARCHAR(4)
     ,SCORE                          NUMERIC
     ,TEST1                          NUMERIC
     ,TEST2                          NUMERIC
     ,TEST3                          NUMERIC
     ,"SPECIFIC"                       NUMERIC
     ,"GENERAL"                      NUMERIC
     ,DISSERTATION                   NUMERIC
     ,GRADES                         VARCHAR(20)
     ,GOOD_YN                        VARCHAR(20)
     ,"STATE"                          VARCHAR(20)
     ,TUTOR_REMARK                   TEXT
     ,ISGOYONG                       CHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,LAWS                           NUMERIC
     ,PERFORMANCE                    NUMERIC
     ,ORGANISATION                   NUMERIC
     ,COMMUNICATION                  NUMERIC
     ,SHOOT                          VARCHAR(20)
     ,DRIBBLE                        VARCHAR(20)
     ,PASS                           VARCHAR(20)
     ,JUGGLING                       VARCHAR(20)
     ,LIMIT_PROMOTION                CHAR(1)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_student_grade" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,GRADE                          NUMERIC
     ,SCORE                          NUMERIC
     ,PER_SCORE                      NUMERIC
     ,MARK_YN                        CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subj" (
       SUBJ VARCHAR(20)
     ,SUBJ_TYPE                      VARCHAR(20)
     ,SUBJNM                         VARCHAR(200)
     ,SUBJ_RFILE                     VARCHAR(200)
     ,SUBJ_SFILE                     VARCHAR(200)
     ,SUBJCLASS                      VARCHAR(20)
     ,CONTENT_TYPE                   VARCHAR(20)
     ,ISRECOM                        CHAR(1)
     ,ISREQUI                        CHAR(1)
     ,MOBILE_YN                      CHAR(1)
     ,CLOSE_YN                       CHAR(1)
     ,EDU_DAY                        NUMERIC
     ,EDU_TIME                       NUMERIC
     ,SUBJ_USERID                    VARCHAR(20)
     ,EDU_PRICE                      NUMERIC
     ,AGENCYNM                       VARCHAR(80)
     ,GOYONG_YN                      CHAR(1)
     ,GOYONG_PRICE_MAJOR             NUMERIC
     ,GOYONG_PRICE_MIJOR             NUMERIC
     ,CONTENT_COMP                   VARCHAR(20)
     ,LINK_COMP                      VARCHAR(20)
     ,LINK_EDU                       VARCHAR(200)
     ,LINK_PREVIEW                   VARCHAR(200)
     ,LINK_LESSON                    VARCHAR(200)
     ,SUBJ_PURPOSE                   TEXT
     ,SUBJ_CONTENT                   TEXT
     ,SUBJ_TARGET                    TEXT
     ,SUBJ_ETC                       TEXT
     ,ADMIN_MEMO                     TEXT
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SCREENX                        NUMERIC
     ,SCREENY                        NUMERIC
     ,SUBJNM_EN                      VARCHAR(200)
     ,SUBJGUBUN                      VARCHAR(30)
     ,ISCOMMON                       CHAR(1)
     ,ISSELECT                       CHAR(1)
     ,APPROVAL_YN                    CHAR(1)
     ,GENDER                         VARCHAR(10)
     ,ROOM_PRICE                     NUMERIC
     ,FOOD_PRICE                     NUMERIC
     ,INSURANCE_PRICE                NUMERIC
     ,SUM_EDU_PRICE                  NUMERIC
     ,SUBJPROGRAM                    NUMERIC
     ,BOSU_GRADE                     NUMERIC
     ,KFA_SUBJ                       VARCHAR(20)
     ,OVERLAP_YN                     CHAR(1)
     ,CERTI_YN                       CHAR(1)
     ,CERTI_MID_NO                   VARCHAR(10)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_subjatt" (
       GRCODE VARCHAR(7)
     ,SUBJCLASS                      NUMERIC
     ,CLASSNAME                      VARCHAR(80)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ORDERS                         VARCHAR(10)
     ,USE_YN                         VARCHAR(1)
     ,PARENT_SUBJCLASS               VARCHAR(12)
     ,ROOT_SUBJCLASS                 VARCHAR(12)

 );
CREATE TABLE "fb_subjatt_program" (
       GRCODE VARCHAR(12)
     ,SUBJCLASS                      VARCHAR(7)
     ,SEQ                            NUMERIC
     ,PROGRAMNM                      VARCHAR(100)
     ,MAXGRADE                       NUMERIC
     ,MINGRADE                       NUMERIC

 );
CREATE TABLE "fb_subject" (
       SUBJECT NUMERIC
     ,SUBJECT_NM                     VARCHAR(200)
     ,ORD                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SUBJ                           VARCHAR(20)

 );
CREATE TABLE "fb_subjlesson" (
       SUBJ VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         NUMERIC
     ,LESSONNM                       VARCHAR(200)
     ,PAGECNT                        NUMERIC
     ,EDUTIME                        NUMERIC
     ,STARTPATH                      VARCHAR(200)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjlesson_content" (
       SUBJ VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         NUMERIC
     ,CONTENTNO                      NUMERIC
     ,PAGENO                         VARCHAR(200)
     ,STARTTIME                      NUMERIC
     ,ENDTIME                        NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,PAGEPATH                       VARCHAR(200)

 );
CREATE TABLE "fb_subjlesson_mobile" (
       SUBJ VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         NUMERIC
     ,CONTENTNO                      NUMERIC
     ,CONTENTNM                      VARCHAR(200)
     ,START_PAGE                     VARCHAR(10)
     ,END_PAGE                       VARCHAR(10)
     ,CONTENT_PATH                   VARCHAR(200)
     ,CONTENT_TIME                   NUMERIC
     ,MEDIA_KEY                      VARCHAR(50)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subjlesson_outlink" (
       SUBJ VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,LESSON                         NUMERIC
     ,CONTENTNO                      NUMERIC
     ,PAGEPATH                       VARCHAR(800)
     ,PAGEWIDTH                      NUMERIC
     ,PAGEHEIGHT                     NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subjmodule" (
       SUBJ VARCHAR(20)
     , "MODULE"                         NUMERIC
     ,MODULENM                       VARCHAR(200)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjobj" (
       LESSON VARCHAR(3)
     ,ORDERING                       NUMERIC
     ,SDESC                          VARCHAR(200)
     ,TYPES                          VARCHAR(4)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,COMMENTSFROMLMS                VARCHAR(1000)
     , "MODULE"                         NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,OID                            VARCHAR(10)

 );
CREATE TABLE "fb_subjseq" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,"YEAR"                         VARCHAR(4)
     ,PROP_START                     VARCHAR(14)
     ,PROP_END                       VARCHAR(14)
     ,EDU_START                      VARCHAR(14)
     ,EDU_END                        VARCHAR(14)
     ,CANCEL_START                   VARCHAR(14)
     ,CANCEL_END                     VARCHAR(14)
     ,EDU_CNT                        NUMERIC
     ,USER_YN                        CHAR(1)
     ,AGENCYNM                       VARCHAR(200)
     ,SUBJ_PLACE                     VARCHAR(200)
     ,EDU_PRICE                      NUMERIC
     ,GOYONG_YN                      CHAR(1)
     ,GOYONG_PRICE_MAJOR             NUMERIC
     ,GOYONG_PRICE_MIJOR             NUMERIC
     ,SUBJ_PURPOSE                   TEXT
     ,SUBJ_CONTENT                   TEXT
     ,SUBJ_TARGET                    TEXT
     ,SUBJ_ETC                       TEXT
     ,ADMIN_MEMO                     TEXT
     ,GRADE_TOTAL                    NUMERIC
     ,ISCLOSED                       CHAR(1)
     ,ISCLOSED_DT                    VARCHAR(14)
     ,SUBJ_TUTOR                     VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GRCODE                         VARCHAR(7)
     ,COMPSUBJSEQ                    VARCHAR(4)
     ,EDU_TYPE                       VARCHAR(20)
     ,EDU_REVIEW                     NUMERIC
     ,SUBJSEQNM                      VARCHAR(200)
     ,APPROVAL_YN                    CHAR(1)
     ,ROOM_PRICE                     NUMERIC
     ,FOOD_PRICE                     NUMERIC
     ,INSURANCE_PRICE                NUMERIC
     ,SUM_EDU_PRICE                  NUMERIC
     ,PROP_CLOSEYN                   CHAR(1)
     ,PROP_CLOSEDT                   VARCHAR(14)
     ,BOSU_GRADE                     NUMERIC
     ,SUB_TUTOR                      VARCHAR(100)
     ,SUB_TUTOR_ENG                  VARCHAR(100)
     ,SUB_TUTOR2                     VARCHAR(100)
     ,SUB_TUTOR2_ENG                 VARCHAR(100)
     ,MEETING                        VARCHAR(200)
     ,INSURANCE_TXT                  TEXT
     ,SUPPLY                         TEXT
     ,KFA_SUBJ                       VARCHAR(20)
     ,KFA_SUBJSEQ                    VARCHAR(10)
     ,KFA_YEAR                       VARCHAR(4)
     ,GRADE                          NUMERIC
     ,SUBJADDR                       VARCHAR(200)
     ,SUBJ_LOCATION                  VARCHAR(200)
     ,COMEDU_YN                      CHAR(1)
     ,COMEDU_CONFIRM_TXT             VARCHAR(2000)
     ,COMEDU_CANCEL_TXT              VARCHAR(2000)
     ,OBLIGATION_TUTOR               VARCHAR(1000)
     ,S_LECTURE_TUTOR                VARCHAR(1000)
     ,SUBJ_TUTOR2                    VARCHAR(20)
     ,SUBJ_TUTOR3                    VARCHAR(20)
     ,SUBJ_TUTOR4                    VARCHAR(20)
     ,SUBJ_TUTOR5                    VARCHAR(20)
     ,SUBJ_TUTOR_SUB                 VARCHAR(20)
     ,SUBJ_TUTOR_SUB2                VARCHAR(20)
     ,CANCEL_YN                      CHAR(1)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_subjseq_exam" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,PAPER_SEQ                      NUMERIC
     ,DISPLAYNM                      VARCHAR(256)
     ,SDATE                          VARCHAR(12)
     ,EDATE                          VARCHAR(12)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,STIME                          VARCHAR(12)
     ,ETIME                          VARCHAR(12)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjseq_grade" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,GRADE                          VARCHAR(20)
     ,GRADENM                        VARCHAR(256)
     ,SCORE                          NUMERIC
     ,PER                            NUMERIC
     ,ORD                            NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GRADETYPE                      VARCHAR(20)
     ,PAPER_SEQ                      NUMERIC
     ,REPORT                         NUMERIC
     ,ISAPPEND                       CHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjseq_qualification" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,CODE                           VARCHAR(20)
     ,LUSERID                        VARCHAR(30)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subjseq_report" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,REPORT                         NUMERIC
     ,DISPLAYNM                      VARCHAR(80)
     ,SDATE                          VARCHAR(12)
     ,EDATE                          VARCHAR(12)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,Q_REALFILENAME                 VARCHAR(200)
     ,Q_SAVEFILENAME                 VARCHAR(200)
     ,A_SAVEFILENAME                 VARCHAR(200)
     ,A_REALFILENAME                 VARCHAR(200)
     ,USE_YN                         CHAR(1)
     ,CONTENTS                       TEXT
     ,USER_DISPLAYNM                 VARCHAR(80)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjseq_sulpage" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,SULPAGE                        NUMERIC
     ,DISPLAYNM                      VARCHAR(256)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SDATE                          VARCHAR(12)
     ,EDATE                          VARCHAR(12)
     ,ISGRADE                        CHAR(1)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subjseq_tutor" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,CLASSTIME                      NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subj_culture" (
       SUBJ VARCHAR(20)
     ,GUBUN                          VARCHAR(20)
     ,TITLE                          VARCHAR(80)
     ,CONTENTS                       VARCHAR(1000)
     ,TUTOR_NM                       VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subj_culture_seq" (
       SUBJ VARCHAR(20)
     ,SEQ                            NUMERIC
     ,TITLE                          VARCHAR(100)
     ,"PATH"                           VARCHAR(100)
     ,MEDIA_KEY                      VARCHAR(10)
     ,RUNTIME                        VARCHAR(5)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subj_grcode" (
       GRCODE VARCHAR(7)
     ,SUBJ                           VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subj_gubun" (
       GRCODE VARCHAR(7)
     ,GUBUN                          VARCHAR(12)
     ,GUBUNNM                        VARCHAR(200)
     ,GUBUNNM_KR                     VARCHAR(200)
     ,GUBUNNM_EN                     VARCHAR(200)
     ,APPROVAL_YN                    CHAR(1)
     ,KFA_CD                         VARCHAR(30)
     ,AFC_CD                         VARCHAR(30)
     ,BOSUCHK_YN                     CHAR(1)
     ,LICENSE_GUBUN                  VARCHAR(50)
     ,LICENSE_ORDER                  NUMERIC
     ,LICENSENM                      VARCHAR(50)
     ,LICENSE_PERIOD                 NUMERIC
     ,LICENSE_GRADE                  NUMERIC
     ,LICENSE_GROUP                  VARCHAR(50)

 );
CREATE TABLE "fb_subj_keyword" (
       GRCODE VARCHAR(7)
     ,SUBJ                           VARCHAR(20)
     ,KEYWORD                        NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_subj_schedule" (
       SUBJ_SCHEDULE NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,EDU_DAY                        NUMERIC
     ,SDATE                          VARCHAR(14)
     ,EDATE                          VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,SUBJECTNM                      VARCHAR(100)
     ,TUTORID                        VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,SUBJECT_PLACE                  VARCHAR(200)

 );
CREATE TABLE "fb_subj_schedule_detail" (
       SUBJ_SCHEDULE NUMERIC
     ,SUB_SEQ                        NUMERIC
     ,SUBJECTTXT                     TEXT
     ,SDATE                          VARCHAR(4)
     ,EDATE                          VARCHAR(4)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,EDU_DAY                        NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_subj_schedule_temp" (
       SUBJ_SCHEDULE NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,"YEAR"                         VARCHAR(4)
     ,SUBJSEQ                        VARCHAR(4)
     ,EDU_DAY                        NUMERIC
     ,SCHEDULE_TYPE                  VARCHAR(20)
     ,SUBJECTNM                      VARCHAR(100)
     ,SDATE                          VARCHAR(4)
     ,EDATE                          VARCHAR(4)
     ,TUTORID                        VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sul" (
       SUL NUMERIC
     ,ISSUBJ                         VARCHAR(20)
     ,SUL_TYPE                       VARCHAR(20)
     ,DISTCODE                       VARCHAR(20)
     ,SUL_TEXT                       VARCHAR(1000)
     ,SCALE                          NUMERIC
     ,GRCODE                         VARCHAR(7)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulpage" (
       SULPAGE NUMERIC
     ,SULPAGE_TYPE                   VARCHAR(20)
     ,GUBUN                          VARCHAR(20)
     ,GRCODE                         VARCHAR(7)
     ,SULPAGENM                      VARCHAR(200)
     ,SULPAGE_TXT                    TEXT
     ,SDATE                          VARCHAR(14)
     ,EDATE                          VARCHAR(14)
     ,PROGRESS                       NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulpage_comp" (
       COMP VARCHAR(7)
     ,SULPAGE                        NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulpage_result" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,COMP                           VARCHAR(20)
     ,SULPAGE                        NUMERIC
     ,USERID                         VARCHAR(20)
     ,RESULTDATE                     VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulpage_sul" (
       SULPAGE NUMERIC
     ,SUL                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulpage_sul_result" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,COMP                           VARCHAR(20)
     ,SULPAGE                        NUMERIC
     ,SUL                            NUMERIC
     ,USERID                         VARCHAR(20)
     ,ANSWER                         TEXT
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulsel" (
       SUL NUMERIC
     ,SULSEL                         NUMERIC
     ,SULSEL_TEXT                    VARCHAR(80)
     ,SULSEL_POINT                   NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sulsel_scale" (
       SCALE NUMERIC
     ,SCALE_SEL                      NUMERIC
     ,SCALE_SELNM                    VARCHAR(80)
     ,SCALE_POINT                    NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_sul_scale" (
       SCALE NUMERIC
     ,SCALE_TYPE                     VARCHAR(20)
     ,SCALENM                        VARCHAR(200)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_system_board" (
       MASTERSEQ VARCHAR(30)
     ,SEQ                            NUMERIC
     ,GUBUN                          CHAR(1)
     ,NOTICECLASS                    CHAR(1)
     ,CATEGORY                       VARCHAR(4)
     ,ISUSE                          CHAR(1)
     ,ISTOP                          CHAR(1)
     ,ISTITLE                        CHAR(1)
     ,ISQUESTION                     CHAR(1)
     ,ISSECRET                       CHAR(1)
     ,WIDTHSIZE                      NUMERIC
     ,HEIGHTSIZE                     NUMERIC
     ,"POSITION"                     VARCHAR(7)
     ,ISLOGIN                        CHAR(1)
     ,STARTDATE                      VARCHAR(14)
     ,ENDDATE                        VARCHAR(14)
     ,TITLE                          VARCHAR(200)
     ,CONTENT                        TEXT
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,CNT                            NUMERIC
     ,PARENTSEQ                      NUMERIC
     ,SEQLEVELS                      NUMERIC
     ,SEQORDER                       NUMERIC
     ,RECOMMEND                      NUMERIC
     ,URL                            VARCHAR(200)
     ,COUNSELINGCLASS                VARCHAR(10)
     ,MAIL_YN                        CHAR(1)
     ,ISPOP                          CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,POPSDATE                       VARCHAR(14)
     ,POPEDATE                       VARCHAR(14)
     ,ISBROADCAST                    CHAR(1)
     ,ISNECESSARY                    CHAR(1)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_system_boardcategory" (
       MASTERSEQ VARCHAR(30)
     ,CATEGORY                       VARCHAR(4)
     ,CATEGORYNAME                   VARCHAR(200)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_system_boardmaster" (
       MASTERSEQ VARCHAR(30)
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,BOARDNAME                      VARCHAR(200)
     ,BOARDDESCRIPTION               VARCHAR(500)
     ,BOARDORDER                     NUMERIC
     ,ISUSE                          CHAR(1)
     ,BOARDTYPE                      VARCHAR(20)
     ,BOARDAUTHORITY                 VARCHAR(2)
     ,ISEDITOR                       CHAR(1)
     ,FILECNT                        VARCHAR(50)
     ,ISREPLY                        CHAR(1)
     ,ISCOMMENT                      CHAR(1)
     ,ISRECOMMEND                    CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,"YEAR"                         VARCHAR(4)
     ,BOARDGUBUN                     VARCHAR(20)
     ,GRGUBUN                        CHAR(1)

 );
CREATE TABLE "fb_system_board_log" (
       MASTERSEQ VARCHAR(30)
     ,SEQ                            NUMERIC
     ,USERID                         VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_system_grcode" (
       GRCODE VARCHAR(7)
     ,MASTERSEQ                      VARCHAR(30)
     ,SEQ                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_system_license" (
       MASTERSEQ VARCHAR(30)
     ,SEQ                            NUMERIC
     ,LICENSE                        VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor" (
       USERID VARCHAR(20)
     ,ACADEMIC                       TEXT
     ,CAREER                         TEXT
     ,BOOK                           TEXT
     ,ETC                            TEXT
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,GUBUN                          CHAR(1)
     ,TUTOR_TYPE                     CHAR(1)

 );
CREATE TABLE "fb_tutor_field" (
       FIELDGUBUN VARCHAR(50)
     ,FIELDCODE                      VARCHAR(100)
     ,FIELDNAME                      VARCHAR(200)

 );
CREATE TABLE "fb_tutor_notice" (
       SEQ NUMERIC
     ,TITLE                          VARCHAR(200)
     ,CONTENT                        TEXT
     ,CNT                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor_pay_master" (
       "YEAR" NUMERIC
     ,MONTH                          NUMERIC
     ,GRADE                          VARCHAR(10)
     ,ONLINE_PAY                     NUMERIC
     ,OFFLINE_PAY                    NUMERIC
     ,REPORT_PAY                     NUMERIC
     ,QNA_PAY                        NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor_qna" (
       SEQ NUMERIC
     ,TITLE                          VARCHAR(200)
     ,CONTENT                        TEXT
     ,CNT                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor_qna_result" (
       SEQ NUMERIC
     ,QNA_SEQ                        NUMERIC
     ,TITLE                          VARCHAR(200)
     ,CONTENT                        TEXT
     ,CNT                            NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor_subj" (
       USERID VARCHAR(20)
     ,SUBJ                           VARCHAR(20)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_tutor_sul_monitoring" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,MONITORING_SCORE               NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)

 );
CREATE TABLE "fb_usermenu" (
       MENU VARCHAR(9)
     ,GRCODE                         VARCHAR(7)
     ,MENUNM                         VARCHAR(40)
     ,LEVELS                         NUMERIC
     ,"UPPER"                          VARCHAR(9)
     ,PGM                            VARCHAR(200)
     ,ISDISPLAY                      CHAR(1)
     ,ORDERS                         NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ISBLANK                        CHAR(1)
     ,MENUNM_ZH                      VARCHAR(40)
     ,MENUNM_EN                      VARCHAR(40)

 );
CREATE TABLE "fb_usermenu_common" (
       MENU VARCHAR(9)
     ,MENUNM                         VARCHAR(40)
     ,LEVELS                         NUMERIC
     ,"UPPER"                          VARCHAR(8)
     ,PGM                            VARCHAR(256)
     ,ORDERS                         NUMERIC
     ,ISDISPLAY                      CHAR(1)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ISBLANK                        CHAR(1)
     ,MENUNM_EN                      VARCHAR(40)
     ,MENUNM_ZH                      VARCHAR(40)

 );
CREATE TABLE "fb_usermenu_master" (
       MENU VARCHAR(9)
     ,MENUNM                         VARCHAR(40)
     ,LEVELS                         NUMERIC
     ,"UPPER"                          VARCHAR(9)
     ,PGM                            VARCHAR(200)
     ,ISDISPLAY                      CHAR(1)
     ,ORDERS                         NUMERIC
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ISBLANK                        CHAR(1)
     ,MENUNM_EN                      VARCHAR(40)
     ,MENUNM_ZH                      VARCHAR(40)

 );
CREATE TABLE "fb_user_favorite" (
       GRCODE VARCHAR(14)
     ,SUBJ                           VARCHAR(40)
     ,USERID                         VARCHAR(40)
     ,INDATE                         VARCHAR(28)
     ,SUBJ_GRCODE                    VARCHAR(14)
     ,UFSUBJSEQ                      VARCHAR(10)

 );
CREATE TABLE "fb_user_favorite_temp" (
       SUBJ VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,GRCODE                         VARCHAR(7)
     ,SUBJ_GRCODE                    VARCHAR(7)

 );
CREATE TABLE "fb_waitinglist" (
       SUBJ VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,PROPDATE                       VARCHAR(14)
     ,WAITNO                         NUMERIC
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "fb_waitinglist_history" (
       SEQ NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USERID                         VARCHAR(20)
     ,PROPDATE                       VARCHAR(14)
     ,WAITNO                         NUMERIC
     ,WAIT_INUSERID                  VARCHAR(20)
     ,WAIT_INDATE                    VARCHAR(14)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,HISTORY_TXT                    VARCHAR(100)

 );
CREATE TABLE "fb_zipcode_busan" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_chungbuk" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_chungnam" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_daegu" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_daejeon" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_gangwon" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_gwangju" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_gyeongbuk" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_gyeonggi" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_gyeongnam" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_incheon" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_jeju" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_jeonbuk" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_jeonnam" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_sejong" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_seoul" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "fb_zipcode_ulsan" (
       ZIPCODE VARCHAR(10)
     ,SIDO                           VARCHAR(40)
     ,SIDO_ENG                       VARCHAR(80)
     ,SIGUNGU                        VARCHAR(40)
     ,SIGUNGU_ENG                    VARCHAR(80)
     ,EUP                            VARCHAR(40)
     ,EUP_ENG                        VARCHAR(80)
     ,STREETCODE                     VARCHAR(24)
     ,STREET                         VARCHAR(160)
     ,STREET_ENG                     VARCHAR(160)
     ,ISUNDER                        CHAR(2)
     ,BUILDINGNUM1                   NUMERIC
     ,BUILDINGNUM2                   NUMERIC
     ,BUILDINGCODE                   VARCHAR(50)
     ,MASSDESTINATION                VARCHAR(400)
     ,BUILDING                       VARCHAR(400)
     ,DONGCODE                       VARCHAR(20)
     ,DONG                           VARCHAR(40)
     ,RI                             VARCHAR(40)
     ,HANGDONG                       VARCHAR(80)
     ,ISMOUNTAIN                     CHAR(2)
     ,JIBUN1                         NUMERIC
     ,DONGSEQ                        VARCHAR(4)
     ,JIBUN2                         NUMERIC
     ,ZIPCODE2                       VARCHAR(12)
     ,ZIPSEQ                         VARCHAR(6)

 );
CREATE TABLE "if_ref_kfaedu_sub" (
       IPIN_CI VARCHAR(200)
     ,GUBUN                          VARCHAR(10)
     ,"CLASS"                        VARCHAR(10)
     ,ACQUIREMENT_DATE               VARCHAR(20)
     ,ACTIVITY                       VARCHAR(20)
     ,LASTUPDATE                     VARCHAR(20)
     ,LDATE                          VARCHAR(20)

 );
CREATE TABLE "join_edu_progress" (
       USER_KEY VARCHAR(400)
     ,MEDIA_KEY                      VARCHAR(100)
     ,START_AT                       VARCHAR(20)
     ,CHECK_AT                       VARCHAR(20)
     ,PLAYTIME_PERCENT               VARCHAR(20)
     ,INDATE                         VARCHAR(20)

 );
CREATE TABLE "kfa_license" (
       IPIN_CI VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,"CLASS"                        VARCHAR(200)
     ,LICENSE                        VARCHAR(200)
     ,ISSUE_DATE                     VARCHAR(200)

 );
CREATE TABLE "kfa_user" (
       USERID VARCHAR(200)
     ,IPIN_CI                        VARCHAR(200)
     ,"NAME"                         VARCHAR(200)

 );
CREATE TABLE "multy_license" (
       IPIN_CI VARCHAR(200)
     ,USERID                         VARCHAR(200)
     ,"NAME"                         VARCHAR(200)
     ,CL                             VARCHAR(200)
     ,GK                             VARCHAR(200)
     ,FS                             VARCHAR(200)
     ,ETC                            VARCHAR(200)
     ,LICENSE                        VARCHAR(200)
     ,ISSUE_DATE                     VARCHAR(200)

 );
CREATE TABLE "non_member" (
       SEQ NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,"NAME"                         VARCHAR(256)
     ,HANDPHONE_1                    VARCHAR(3)
     ,HANDPHONE_2                    VARCHAR(20)
     ,HANDPHONE_3                    VARCHAR(20)
     ,EMAIL                          VARCHAR(708)
     ,PLAYERGUBUN                    CHAR(1)
     ,STAFF_QUESTION                 TEXT
     ,USER_YN                        CHAR(1)
     ,"STATE"                          CHAR(1)
     ,STATE_DATE                     VARCHAR(14)
     ,STATE_USERID                   VARCHAR(20)
     ,INUSERID                       VARCHAR(20)
     ,INDATE                         VARCHAR(14)
     ,LUSERID                        VARCHAR(20)
     ,LDATE                          VARCHAR(14)
     ,ORDR_IDXX                      VARCHAR(40)
     ,CANCEL_TXT                     VARCHAR(200)
     ,USER_IP                        VARCHAR(40)
     ,USER_AGENT                     VARCHAR(400)
     ,PAYMENT_YN                     CHAR(1)
     ,WITH_CNT                       NUMERIC

 );
CREATE TABLE "non_member_connect" (
       SEQ NUMERIC
     ,SUBJ                           VARCHAR(20)
     ,SUBJSEQ                        VARCHAR(4)
     ,USER_REFERER                   VARCHAR(400)
     ,USER_IP                        VARCHAR(40)
     ,USER_AGENT                     VARCHAR(400)
     ,INDATE                         VARCHAR(14)

 );
CREATE TABLE "sys_export_schema_01" (
       PROCESS_ORDER NUMERIC
     ,DUPLICATE                      NUMERIC
     ,DUMP_FILEID                    NUMERIC
     ,DUMP_POSITION                  NUMERIC
     ,DUMP_LENGTH                    NUMERIC
     ,DUMP_ORIG_LENGTH               NUMERIC
     ,DUMP_ALLOCATION                NUMERIC
     ,COMPLETED_ROWS                 NUMERIC
     ,ERROR_COUNT                    NUMERIC
     ,ELAPSED_TIME                   NUMERIC
     ,OBJECT_TYPE_PATH               VARCHAR(200)
     ,OBJECT_PATH_SEQNO              NUMERIC
     ,OBJECT_TYPE                    VARCHAR(30)
     ,IN_PROGRESS                    CHAR(1)
     ,OBJECT_NAME                    VARCHAR(500)
     ,OBJECT_LONG_NAME               VARCHAR(4000)
     ,OBJECT_SCHEMA                  VARCHAR(30)
     ,ORIGINAL_OBJECT_SCHEMA         VARCHAR(30)
     ,ORIGINAL_OBJECT_NAME           VARCHAR(4000)
     ,PARTITION_NAME                 VARCHAR(30)
     ,SUBPARTITION_NAME              VARCHAR(30)
     ,DATAOBJ_NUM                    NUMERIC
     ,FLAGS                          NUMERIC
     ,PROPERTY                       NUMERIC
     ,TRIGFLAG                       NUMERIC
     ,CREATION_LEVEL                 NUMERIC
     ,COMPLETION_TIME           TIMESTAMP
     ,OBJECT_TABLESPACE              VARCHAR(30)
     ,SIZE_ESTIMATE                  NUMERIC
     ,OBJECT_ROW                     NUMERIC
     ,PROCESSING_STATE              CHAR(1)
     ,PROCESSING_STATUS              CHAR(1)
     ,BASE_PROCESS_ORDER             NUMERIC
     ,BASE_OBJECT_TYPE               VARCHAR(30)
     ,BASE_OBJECT_NAME               VARCHAR(30)
     ,BASE_OBJECT_SCHEMA             VARCHAR(30)
     ,ANCESTOR_PROCESS_ORDER         NUMERIC
     ,DOMAIN_PROCESS_ORDER           NUMERIC
     ,PARALLELIZATION                NUMERIC
     ,UNLOAD_METHOD                  NUMERIC
     ,LOAD_METHOD                    NUMERIC
     ,GRANULES                       NUMERIC
     ,SCN                            NUMERIC
     ,GRANTOR                        VARCHAR(30)
     ,XML_CLOB                       TEXT
     ,PARENT_PROCESS_ORDER           NUMERIC
     ,"NAME"                         VARCHAR(30)
     ,VALUE_T                        VARCHAR(4000)
     ,VALUE_N                        NUMERIC
     ,IS_DEFAULT                     NUMERIC
     ,FILE_TYPE                      NUMERIC
     ,USER_DIRECTORY                 VARCHAR(4000)
     ,USER_FILE_NAME                 VARCHAR(4000)
     ,FILE_NAME                      VARCHAR(4000)
     ,EXTEND_SIZE                    NUMERIC
     ,FILE_MAX_SIZE                  NUMERIC
     ,PROCESS_NAME                   VARCHAR(30)
     ,LAST_UPDATE               TIMESTAMP
     ,WORK_ITEM                      VARCHAR(30)
     ,OBJECT_NUMBER                  NUMERIC
     ,COMPLETED_BYTES                NUMERIC
     ,TOTAL_BYTES                    NUMERIC
     ,METADATA_IO                    NUMERIC
     ,DATA_IO                        NUMERIC
     ,CUMULATIVE_TIME                NUMERIC
     ,PACKET_NUMBER                  NUMERIC
     ,INSTANCE_ID                    NUMERIC
     ,OLD_VALUE                      VARCHAR(4000)
     ,SEED                           NUMERIC
     ,LAST_FILE                      NUMERIC
     ,USER_NAME                      VARCHAR(30)
     ,OPERATION                      VARCHAR(30)
     ,JOB_MODE                       VARCHAR(30)
     ,QUEUE_TABNUM                   NUMERIC
     ,CONTROL_QUEUE                  VARCHAR(30)
     ,STATUS_QUEUE                   VARCHAR(30)
     ,REMOTE_LINK                    VARCHAR(4000)
     ,VERSION                        NUMERIC
     ,JOB_VERSION                    VARCHAR(30)
     ,DB_VERSION                     VARCHAR(30)
     ,TIMEZONE                       VARCHAR(64)
     ,"STATE"                          VARCHAR(30)
     ,PHASE                          NUMERIC
     ,GUID                           BYTEA
     ,START_TIME                TIMESTAMP
     ,BLOCK_SIZE                     NUMERIC
     ,METADATA_BUFFER_SIZE           NUMERIC
     ,DATA_BUFFER_SIZE               NUMERIC
     ,DEGREE                         NUMERIC
     ,PLATFORM                       VARCHAR(101)
     ,ABORT_STEP                     NUMERIC
     ,INSTANCE                       VARCHAR(60)
     ,CLUSTER_OK                     NUMERIC
     ,SERVICE_NAME                   VARCHAR(100)
     ,OBJECT_INT_OID                 VARCHAR(32)

 );
CREATE TABLE "temp_sejong2" (
       ZIPCODE VARCHAR(1000)
     ,SIDO                           VARCHAR(1000)
     ,SIDO_ENG                       VARCHAR(1000)
     ,SIGUNGU                        VARCHAR(1000)
     ,SIGUNGU_ENG                    VARCHAR(1000)
     ,EUP                            VARCHAR(1000)
     ,EUP_ENG                        VARCHAR(1000)
     ,STREETCODE                     VARCHAR(1000)
     ,STREET                         VARCHAR(1000)
     ,STREET_ENG                     VARCHAR(1000)
     ,ISUNDER                        VARCHAR(1000)
     ,BUILDINGNUM1                   VARCHAR(1000)
     ,BUILDINGNUM2                   VARCHAR(1000)
     ,BUILDINGCODE                   VARCHAR(1000)
     ,MASSDESTINATION                VARCHAR(1000)
     ,BUILDING                       VARCHAR(1000)
     ,DONGCODE                       VARCHAR(1000)
     ,DONG                           VARCHAR(1000)
     ,RI                             VARCHAR(1000)
     ,HANGDONG                       VARCHAR(1000)
     ,ISMOUNTAIN                     VARCHAR(1000)
     ,JIBUN1                         VARCHAR(1000)
     ,DONGSEQ                        VARCHAR(1000)
     ,JIBUN2                         VARCHAR(1000)
     ,ZIPCODE2                       VARCHAR(1000)
     ,ZIPSEQ                         VARCHAR(1000)

 );
CREATE TABLE "vw_coach_academy_info" (
       ACA_IDX NUMERIC
     ,TITLE                          VARCHAR(400)
     ,"LOCATION"                     VARCHAR(400)
     ,INSTRUCTOR_HNAME               VARCHAR(1000)
     ,TARGETS                        VARCHAR(1000)
     ,TERMSDT                        VARCHAR(20)
     ,TERMEDT                        VARCHAR(20)
     ,ACADEMY_TIME_MINUTE            VARCHAR(100)
     ,PROCESS                        VARCHAR(4)
     ,BIRTH                          VARCHAR(16)
     ,IPIN_CI                        VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,CHILDREN                       VARCHAR(200)

 );
CREATE TABLE "vw_coach_disciplinary" (
       EFFECT_START VARCHAR(100)
     ,IPIN_CI                        VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,CODE_NAME                      VARCHAR(200)
     ,REASON                         TEXT
     ,FST_REG_DT                     VARCHAR(100)
     ,EFFECT_END                     VARCHAR(100)
     ,KEYDATE                        VARCHAR(20)
     ,D_BOUND                        VARCHAR(2)

 );
CREATE TABLE "vw_coach_education_info" (
       IPIN_CI VARCHAR(400)
     ,HNAME                          VARCHAR(200)
     ,EDU_TYPE                       VARCHAR(20)
     ,TITLE                          VARCHAR(200)
     ,GUBUN                          VARCHAR(100)
     ,EDU_YEAR                       VARCHAR(20)
     ,TERM_START                     VARCHAR(20)
     ,TERM_END                       VARCHAR(20)
     ,INSTRUCTOR_HNAME               VARCHAR(100)
     ,PLACE                          VARCHAR(200)
     ,BEST                           VARCHAR(100)
     ,CANCEL_TYPE                    VARCHAR(100)
     ,KFA_CODE                       VARCHAR(200)
     ,AFC_CODE                       VARCHAR(200)
     ,EDU_TIME                       VARCHAR(100)

 );
CREATE TABLE "vw_coach_history" (
       IPIN_CI VARCHAR(400)
     ,HNAME                          VARCHAR(200)
     ,ACTIVITY                       VARCHAR(20)
     ,TEAMNAME                       VARCHAR(200)
     ,"POSITION"                     VARCHAR(100)
     ,STATUS                         VARCHAR(100)
     ,KEYDATE                        VARCHAR(16)
     ,AFTER_TEAMID                   VARCHAR(1000)
     ,AFTER_TEAMNAME                 VARCHAR(1000)
     ,AFTER_POSITION                 VARCHAR(1000)
     ,GRADE                          VARCHAR(1000)
     ,BEFORE_TEAMID                  VARCHAR(1000)
     ,BEFORE_TEAMNAME                VARCHAR(1000)
     ,BEFORE_POSITION                VARCHAR(1000)
     ,REGDATE                        VARCHAR(1000)
     ,DEL_YN                         CHAR(1)

 );
CREATE TABLE "vw_coach_info_apply" (
       IPIN_CI VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,COACH_CAREER                   VARCHAR(100)
     ,COACH_PLAYER                   VARCHAR(100)

 );
CREATE TABLE "vw_coach_info_kfaedu_main" (
       IDX NUMERIC
     ,IPIN_CI                        VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,BIRTHDAY                       VARCHAR(20)
     ,GENDER                         VARCHAR(4)
     ,PHOTO                          VARCHAR(200)
     ,FOREIGNER                      VARCHAR(4)
     ,REGDATE                        VARCHAR(20)
     ,SENDYN                         VARCHAR(1)

 );
CREATE TABLE "vw_coach_info_kfaedu_main_bak" (
       IDX NUMERIC
     ,IPIN_CI                        VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,BIRTHDAY                       VARCHAR(20)
     ,GENDER                         VARCHAR(4)
     ,PHOTO                          VARCHAR(200)
     ,FOREINGNER                     VARCHAR(4)
     ,REGDATE                        VARCHAR(20)

 );
CREATE TABLE "vw_coach_info_kfaedu_main_log" (
       IDX NUMERIC
     ,CI                             VARCHAR(88)
     ,HNAME                          VARCHAR(30)
     ,BIRTHDAY                  TIMESTAMP
     ,GENDER                         CHAR(1)
     ,PHOTO                          VARCHAR(500)
     ,FOREIGNER                      CHAR(1)
     ,REGDATE                   TIMESTAMP
     ,LOG_IDX                        NUMERIC
     ,LOG_STATE                     CHAR(1)

 );
CREATE TABLE "vw_coach_info_kfaedu_rfsh" (
       IPIN_CI VARCHAR(88)
     ,RFSH_PASS_YN                   CHAR(1)
     ,REGDATE                   TIMESTAMP
     ,COACHNUM                       VARCHAR(30)
     ,"CLASS"                        VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,COACHNUM_GUBUN                 VARCHAR(20)
     ,LICENSE_ORDER                  NUMERIC
     ,NEED_SYEAR                     VARCHAR(20)
     ,NEED_EYEAR                     VARCHAR(20)
     ,NEED_GRADE                     NUMERIC
     ,BOSU_GRADE                     NUMERIC
     ,IDX                            NUMERIC
     ,SENDYN                         CHAR(1)

 );
CREATE TABLE "vw_coach_info_kfaedu_rfsh_log" (
       IPIN_CI VARCHAR(88)
     ,RFSH_PASS_YN                   CHAR(1)
     ,REGDATE                   TIMESTAMP
     ,COACHNUM                       VARCHAR(30)
     ,"CLASS"                        VARCHAR(20)
     ,USERID                         VARCHAR(20)
     ,COACHNUM_GUBUN                 VARCHAR(20)
     ,LICENSE_ORDER                  NUMERIC
     ,NEED_SYEAR                     VARCHAR(20)
     ,NEED_EYEAR                     VARCHAR(20)
     ,NEED_GRADE                     NUMERIC
     ,BOSU_GRADE                     NUMERIC
     ,LOG_IDX                        NUMERIC
     ,LOG_STATE                    CHAR(1)

 );
CREATE TABLE "vw_coach_info_kfaedu_sub" (
       IDX NUMERIC
     ,IPIN_CI                        VARCHAR(400)
     ,GUBUN                          VARCHAR(100)
     ,"CLASS"                        VARCHAR(100)
     ,COACHNUM                       VARCHAR(200)
     ,ACQUIREMENT_DATE               VARCHAR(20)
     ,ISSUE_DATE                     VARCHAR(20)
     ,REGDATE                        VARCHAR(20)
     ,SENDYN                         VARCHAR(4)

 );
CREATE TABLE "vw_coach_info_kfaedu_sub_bak" (
       IDX NUMERIC
     ,IPIN_CI                        VARCHAR(400)
     ,GUBUN                          VARCHAR(100)
     ,"CLASS"                        VARCHAR(100)
     ,COACHNUM                       VARCHAR(200)
     ,ACQUIREMENT_DATE               VARCHAR(20)
     ,ISSUE_DATE                     VARCHAR(20)
     ,REGDATE                        VARCHAR(20)
     ,SENDYN                         VARCHAR(4)

 );
CREATE TABLE "vw_coach_info_kfaedu_sub_bak14" (
       IDX NUMERIC
     ,IPIN_CI                        VARCHAR(400)
     ,GUBUN                          VARCHAR(100)
     ,"CLASS"                        VARCHAR(100)
     ,COACHNUM                       VARCHAR(200)
     ,ACQUIREMENT_DATE               VARCHAR(20)
     ,ISSUE_DATE                     VARCHAR(20)
     ,REGDATE                        VARCHAR(20)
     ,SENDYN                         VARCHAR(4)

 );
CREATE TABLE "vw_coach_info_kfaedu_sub_log" (
       IDX NUMERIC
     ,CI                             VARCHAR(88)
     ,COACHNUM                       VARCHAR(30)
     ,"CLASS"                        VARCHAR(20)
     ,GUBUN                          CHAR(3)
     ,ACQUIREMENT_DATE          TIMESTAMP
     ,ISSUE_DATE                TIMESTAMP
     ,TRANSFER_YN                    CHAR(1)
     ,REGDATE                   TIMESTAMP
     ,LOG_IDX                        NUMERIC
     ,LOG_STATE                     CHAR(1)

 );
CREATE TABLE "vw_coach_license_info" (
       IPIN_CI VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,KFA_CODE                       VARCHAR(200)
     ,AFC_CODE                       VARCHAR(200)
     ,GK_KFA_CODE                    VARCHAR(200)
     ,GK_AFC_CODE                    VARCHAR(200)
     ,FUSAL_CODE                     VARCHAR(200)
     ,KFA_REGDATE                    VARCHAR(100)
     ,AFC_REGDATE                    VARCHAR(100)
     ,GK_KFA_REGDATE                 VARCHAR(100)
     ,GK_AFC_REGDATE                 VARCHAR(100)
     ,FUSAL_REGDATE                  VARCHAR(100)
     ,KFA_UPDATE                     VARCHAR(100)
     ,AFC_UPDATE                     VARCHAR(100)
     ,GK_KFA_UPDATE                  VARCHAR(100)
     ,GK_AFC_UPDATE                  VARCHAR(100)
     ,FUSAL_UPDATE                   VARCHAR(100)
     ,FUSAL_AFC_CODE                 VARCHAR(200)

 );
CREATE TABLE "vw_coach_license_lastnum" (
       GUBUN VARCHAR(200)
     ,LIC_IDX                        VARCHAR(100)

 );
CREATE TABLE "vw_coach_player_history" (
       IPIN_CI VARCHAR(400)
     ,HNAME                          VARCHAR(100)
     ,PROCESSING_DATE                VARCHAR(200)
     ,TEAMNAME                       VARCHAR(200)
     ,FLAG                           VARCHAR(100)
     ,KEYDATE                        VARCHAR(16)

 );
CREATE TABLE "vw_coach_trade_history" (
       IPIN_CI VARCHAR(400)
     ,ACTIVITY                       VARCHAR(20)
     ,STATUS                         VARCHAR(100)
     ,HNAME                          VARCHAR(100)
     ,AFTER_TEAMNAME                 VARCHAR(200)
     ,AFTER_POSITION                 VARCHAR(200)
     ,BEFORE_TEAMNAME                VARCHAR(200)
     ,BEFORE_POSITION                VARCHAR(200)
     ,REGDATE                        VARCHAR(100)
     ,KEYDATE                        VARCHAR(20)

 );
CREATE TABLE "za_table_cnt" (
       TABLE_NAME VARCHAR(100)
     ,CNT                            NUMERIC
     ,REG_DT                    TIMESTAMP

 );
COMMENT ON TABLE  "fb_adminmenuauth" IS '권한별메뉴접근정보';
COMMENT ON COLUMN "fb_adminmenuauth".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_adminmenuauth".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_adminmenuauth".MENU IS '메뉴코드';
COMMENT ON COLUMN "fb_adminmenuauth".GADMIN IS '권한코드';
COMMENT ON TABLE  "fb_batchjob" IS 'BATCH_JOB정보';
COMMENT ON COLUMN "fb_batchjob".JOB_SEQ IS 'JOB코드';
COMMENT ON COLUMN "fb_batchjob".JOBCLASS IS 'JOB구분';
COMMENT ON COLUMN "fb_batchjob".JOB IS 'JOB이름';
COMMENT ON COLUMN "fb_batchjob".URL IS '실행URL';
COMMENT ON COLUMN "fb_batchjob".ISUSE IS '사용여부';
COMMENT ON COLUMN "fb_batchjob".FREQUENCY IS '반복빈도코드';
COMMENT ON COLUMN "fb_batchjob".REPEAT_DAY IS '반복일';
COMMENT ON COLUMN "fb_batchjob".REPEAT_WEEK IS '반복요일';
COMMENT ON COLUMN "fb_batchjob".REPEAT_TIME IS '반복시간';
COMMENT ON COLUMN "fb_batchjob".REPEAT_NUM IS '반복회수';
COMMENT ON COLUMN "fb_batchjob".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_batchjob".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_batchjob_log" IS 'BATCH_JOB로그';
COMMENT ON COLUMN "fb_batchjob_log".LOGS IS '로그번호';
COMMENT ON COLUMN "fb_batchjob_log".JOB_SEQ IS 'JOB코드';
COMMENT ON COLUMN "fb_batchjob_log".START_DATE IS '실행시작일시';
COMMENT ON COLUMN "fb_batchjob_log".END_DATE IS '실행끝일시';
COMMENT ON COLUMN "fb_batchjob_log"."RESULT" IS '결과';
COMMENT ON COLUMN "fb_batchjob_log".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_batchjob_log".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_batch_error_log" IS '';
COMMENT ON COLUMN "fb_batch_error_log".IDX IS '인덱스';
COMMENT ON COLUMN "fb_batch_error_log".ERROR_MSG IS '에러메세지';
COMMENT ON COLUMN "fb_batch_error_log".REGDATE IS '등록일';
COMMENT ON TABLE  "fb_batch_task_log" IS '배치수행정보';
COMMENT ON COLUMN "fb_batch_task_log".SEQ IS '시퀀스';
COMMENT ON COLUMN "fb_batch_task_log".TASK_DATE IS '수행일자';
COMMENT ON COLUMN "fb_batch_task_log".TASK_TIME IS '수행시간';
COMMENT ON COLUMN "fb_batch_task_log".BATCH_NM IS '배치명';
COMMENT ON COLUMN "fb_batch_task_log".SERVER_IP IS '수행서버아이피';
COMMENT ON COLUMN "fb_batch_task_log".TASK_START IS '수행시작시간';
COMMENT ON COLUMN "fb_batch_task_log".TASK_END IS '수행종료시간';
COMMENT ON COLUMN "fb_batch_task_log".TASK_TYPE IS '구분';
COMMENT ON TABLE  "fb_betaprogress" IS '관리자진도체크';
COMMENT ON COLUMN "fb_betaprogress".SUBJSEQ IS '과정차수코드';
COMMENT ON COLUMN "fb_betaprogress".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_betaprogress".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_betaprogress".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_betaprogress"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_betaprogress".FIRST_DT IS '학습시작시간';
COMMENT ON COLUMN "fb_betaprogress".LAST_DT IS '학습종료시간';
COMMENT ON COLUMN "fb_betaprogress".FINAL_CNT IS '학습회수';
COMMENT ON COLUMN "fb_betaprogress".LAST_PATH IS '마지막학습경로';
COMMENT ON COLUMN "fb_betaprogress".LAST_PAGENO IS '마지막학습페이지번호';
COMMENT ON COLUMN "fb_betaprogress".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_betaprogress".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_betaprogress".STUDY_TIME IS '총학습시간';
COMMENT ON TABLE  "fb_betaprogress_log" IS '관리자학습로그';
COMMENT ON COLUMN "fb_betaprogress_log".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_betaprogress_log".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_betaprogress_log".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_betaprogress_log".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_betaprogress_log"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_betaprogress_log".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_betaprogress_log".LDATE IS '학습시작시간';
COMMENT ON COLUMN "fb_betaprogress_log".CHKDATE IS '학습진도체크시간';
COMMENT ON TABLE  "fb_cancel" IS '수강생취소정보';
COMMENT ON COLUMN "fb_cancel".CANCEL_SEQ IS '취소번호';
COMMENT ON COLUMN "fb_cancel".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_cancel".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_cancel".USERID IS '통합사번';
COMMENT ON COLUMN "fb_cancel"."STATE" IS '학습자상태코드';
COMMENT ON COLUMN "fb_cancel".INDATE IS '신청일자';
COMMENT ON COLUMN "fb_cancel".STATE_DATE IS '처리일자';
COMMENT ON COLUMN "fb_cancel".STATE_USERID IS '처리자통합사번';
COMMENT ON COLUMN "fb_cancel".CANCEL_TXT IS '취소사유';
COMMENT ON COLUMN "fb_cancel".CHANGE_TXT IS '차수변경사유';
COMMENT ON COLUMN "fb_cancel".OLD_SUBJSEQ IS '변경전과정차수';
COMMENT ON COLUMN "fb_cancel"."CLASS" IS '클래스코드';
COMMENT ON COLUMN "fb_cancel".SCORE IS '총취득점수';
COMMENT ON COLUMN "fb_cancel".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_cancel".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_cancel".ORDR_IDXX IS '주문번호';
COMMENT ON TABLE  "fb_coach_disciplinary" IS '지도자징계현황IF';
COMMENT ON COLUMN "fb_coach_disciplinary".USERID IS '통합사번';
COMMENT ON COLUMN "fb_coach_disciplinary".SEQ IS '번호';
COMMENT ON COLUMN "fb_coach_disciplinary".EFFECT_START IS '효과시작일';
COMMENT ON COLUMN "fb_coach_disciplinary".IPIN_CI IS '아이핀CI';
COMMENT ON COLUMN "fb_coach_disciplinary".HNAME IS '';
COMMENT ON COLUMN "fb_coach_disciplinary".CODE_NAME IS '코드명';
COMMENT ON COLUMN "fb_coach_disciplinary".REASON IS '';
COMMENT ON COLUMN "fb_coach_disciplinary".FST_REG_DT IS '';
COMMENT ON COLUMN "fb_coach_disciplinary".EFFECT_END IS '효과종료일';
COMMENT ON COLUMN "fb_coach_disciplinary".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_coach_disciplinary".INDATE IS '등록일';
COMMENT ON COLUMN "fb_coach_disciplinary".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_coach_disciplinary".LDATE IS '수정일';
COMMENT ON COLUMN "fb_coach_disciplinary".D_BOUND IS '출전불가 적용범위 M:전국대회(match), L:리그(league), 3:시군구, 4:시도, 5:연맹, 6:협회전체';
COMMENT ON TABLE  "fb_coach_history" IS '지도자경력IF';
COMMENT ON COLUMN "fb_coach_history".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_coach_history".SEQ IS '번호';
COMMENT ON COLUMN "fb_coach_history".TEAM IS '소속팀';
COMMENT ON COLUMN "fb_coach_history".JIK IS '직급';
COMMENT ON COLUMN "fb_coach_history"."STATE" IS '상태';
COMMENT ON COLUMN "fb_coach_history".ACTIVITY IS '';
COMMENT ON COLUMN "fb_coach_history".SDATE IS '처리일';
COMMENT ON COLUMN "fb_coach_history".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_coach_history".INDATE IS '등록일';
COMMENT ON COLUMN "fb_coach_history".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_coach_history".LDATE IS '수정일';
COMMENT ON COLUMN "fb_coach_history".DEL_YN IS '';
COMMENT ON COLUMN "fb_coach_history".AFTER_TEAMID IS '';
COMMENT ON COLUMN "fb_coach_history".AFTER_TEAMNAME IS '';
COMMENT ON COLUMN "fb_coach_history".AFTER_POSITION IS '';
COMMENT ON COLUMN "fb_coach_history".GRADE IS '';
COMMENT ON COLUMN "fb_coach_history".BEFORE_TEAMID IS '';
COMMENT ON COLUMN "fb_coach_history".BEFORE_TEAMNAME IS '';
COMMENT ON COLUMN "fb_coach_history".BEFORE_POSITION IS '';
COMMENT ON COLUMN "fb_coach_history".REGDATE IS '';
COMMENT ON COLUMN "fb_coach_history".STATUS IS '';
COMMENT ON TABLE  "fb_coach_trade_history" IS '지도자팀이적기록IF';
COMMENT ON COLUMN "fb_coach_trade_history".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_coach_trade_history".SEQ IS '번호';
COMMENT ON COLUMN "fb_coach_trade_history".ACTIVITY IS '';
COMMENT ON COLUMN "fb_coach_trade_history".STATUS IS '상태코드';
COMMENT ON COLUMN "fb_coach_trade_history".AFTER_TEAMNAME IS '이적팀명';
COMMENT ON COLUMN "fb_coach_trade_history".AFTER_POSITION IS '이적포지션';
COMMENT ON COLUMN "fb_coach_trade_history".BEFORE_TEAMNAME IS '이전팀명';
COMMENT ON COLUMN "fb_coach_trade_history".BEFORE_POSITION IS '이전포지션';
COMMENT ON COLUMN "fb_coach_trade_history".REGDATE IS '이적일';
COMMENT ON COLUMN "fb_coach_trade_history".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_coach_trade_history".INDATE IS '등록일';
COMMENT ON COLUMN "fb_coach_trade_history".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_coach_trade_history".LDATE IS '수정일';
COMMENT ON TABLE  "fb_code" IS '공통코드정보';
COMMENT ON COLUMN "fb_code".CODE IS '코드';
COMMENT ON COLUMN "fb_code".CODENM IS '코드명';
COMMENT ON COLUMN "fb_code".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_code".LDATE IS '수정일';
COMMENT ON COLUMN "fb_code".ORDERS IS '정렬순서';
COMMENT ON COLUMN "fb_code".GUBUN IS '구분코드';
COMMENT ON COLUMN "fb_code".PUSH_DEVICE IS '';
COMMENT ON TABLE  "fb_codegubun" IS '공통코드구분정보';
COMMENT ON COLUMN "fb_codegubun".GUBUN IS '구분코드';
COMMENT ON COLUMN "fb_codegubun".GUBUNNM IS '구분코드명';
COMMENT ON COLUMN "fb_codegubun".ISSYSTEM IS '하위코드수동등록여부';
COMMENT ON COLUMN "fb_codegubun".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_codegubun".LDATE IS '수정일';
COMMENT ON TABLE  "fb_common_except" IS '제외자정보';
COMMENT ON COLUMN "fb_common_except".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_common_except".GUBUN IS '제외구분';
COMMENT ON COLUMN "fb_common_except".SUBJGUBUN IS '과정구분코드(자격증)';
COMMENT ON COLUMN "fb_common_except".USERID IS '통합사번';
COMMENT ON COLUMN "fb_common_except".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_common_except".LDATE IS '수정일';
COMMENT ON COLUMN "fb_common_except".COMMENTS IS '비고';
COMMENT ON TABLE  "fb_comp" IS '회사정보';
COMMENT ON COLUMN "fb_comp".COMP IS '회사코드';
COMMENT ON COLUMN "fb_comp".COMPNM IS '회사명';
COMMENT ON COLUMN "fb_comp".COMPRESNO IS '사업자등록번호';
COMMENT ON COLUMN "fb_comp"."OWNER" IS '대표자성명';
COMMENT ON COLUMN "fb_comp".POST IS '우편번호';
COMMENT ON COLUMN "fb_comp".ADDR1 IS '사업장주소';
COMMENT ON COLUMN "fb_comp".ADDR2 IS '사업장상세주소';
COMMENT ON COLUMN "fb_comp".PHONE IS '전화번호';
COMMENT ON COLUMN "fb_comp".FAX IS '팩스번호';
COMMENT ON COLUMN "fb_comp".HOMEPAGE IS '홈페이지';
COMMENT ON COLUMN "fb_comp".COMP_TYPE IS '기업규모코드';
COMMENT ON COLUMN "fb_comp".DEPT_TYPE IS '업종코드';
COMMENT ON COLUMN "fb_comp".MEMO IS '회사설명';
COMMENT ON COLUMN "fb_comp".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_comp".INDATE IS '등록일';
COMMENT ON COLUMN "fb_comp".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_comp".LDATE IS '수정일';
COMMENT ON COLUMN "fb_comp".GUBUN IS '회사구분';
COMMENT ON COLUMN "fb_comp".GRADE_TYPE IS '';
COMMENT ON COLUMN "fb_comp".ONLINE_EWORK_YN IS '';
COMMENT ON COLUMN "fb_comp".OFFLINE_EWORK_YN IS '';
COMMENT ON COLUMN "fb_comp".OUTSUBJ_EWORK_YN IS '';
COMMENT ON COLUMN "fb_comp".ORD IS '정렬순서';
COMMENT ON COLUMN "fb_comp".ONLINE_SELFWORK_YN IS '';
COMMENT ON TABLE  "fb_compclass" IS '외부업체정보';
COMMENT ON COLUMN "fb_compclass".COMP IS '회사코드';
COMMENT ON COLUMN "fb_compclass".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_compclass".INDATE IS '등록일';
COMMENT ON COLUMN "fb_compclass".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_compclass".LDATE IS '수정일';
COMMENT ON COLUMN "fb_compclass".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_compclass".CPRATE IS '';
COMMENT ON TABLE  "fb_contents_mediakey" IS '컨텐츠 미디어키';
COMMENT ON COLUMN "fb_contents_mediakey".UPLOAD_KEY IS '업로드키';
COMMENT ON COLUMN "fb_contents_mediakey".FILE_NM IS '파일명';
COMMENT ON COLUMN "fb_contents_mediakey".MEDIA_KEY IS '미디어키';
COMMENT ON COLUMN "fb_contents_mediakey".CALLBACK_YN IS '콜백여부';
COMMENT ON COLUMN "fb_contents_mediakey".INUSERID IS '등록자자';
COMMENT ON COLUMN "fb_contents_mediakey".INDATE IS '등록일';
COMMENT ON COLUMN "fb_contents_mediakey".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_contents_mediakey".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_content_main" IS '메인콘텐츠관리';
COMMENT ON COLUMN "fb_content_main".SEQ IS '글번호';
COMMENT ON COLUMN "fb_content_main".GRGUBUN IS '그룹구분(지도자:L, 심판:R)';
COMMENT ON COLUMN "fb_content_main".CONTENTTYPE IS '공지구분';
COMMENT ON COLUMN "fb_content_main".URL IS 'URL';
COMMENT ON COLUMN "fb_content_main".WIDTHSIZE IS '가로사이즈';
COMMENT ON COLUMN "fb_content_main".HEIGHTSIZE IS '세로사이즈';
COMMENT ON COLUMN "fb_content_main".TITLE IS '제목';
COMMENT ON COLUMN "fb_content_main".CNT IS '조회수';
COMMENT ON COLUMN "fb_content_main".INUSERID IS '작성자';
COMMENT ON COLUMN "fb_content_main".INDATE IS '작성일';
COMMENT ON COLUMN "fb_content_main".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_content_main".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_content_main".IMGTYPE IS '이미지타입(L : URL, F : 첨부파일)';
COMMENT ON COLUMN "fb_content_main".IMGURL IS '이미지정보';
COMMENT ON TABLE  "fb_content_mapping" IS '메인콘텐츠매핑';
COMMENT ON COLUMN "fb_content_mapping".SEQ IS '글번호';
COMMENT ON COLUMN "fb_content_mapping".GRGUBUN IS '그룹구분(지도자:L, 심판:R)';
COMMENT ON COLUMN "fb_content_mapping".INUSERID IS '';
COMMENT ON COLUMN "fb_content_mapping".INDATE IS '작성일';
COMMENT ON COLUMN "fb_content_mapping".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_content_mapping".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_content_mapping".SORT IS '';
COMMENT ON COLUMN "fb_content_mapping".MAPPING_YN IS '매핑유무';
COMMENT ON TABLE  "fb_course" IS '코스레프트';
COMMENT ON COLUMN "fb_course".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_course".SUBJSEQ IS '차수코드';
COMMENT ON COLUMN "fb_course".CODE IS '코스코드';
COMMENT ON COLUMN "fb_course".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_course".INDATE IS '등록일';
COMMENT ON COLUMN "fb_course".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_course".LDATE IS '수정일';
COMMENT ON TABLE  "fb_course_code" IS '코스레프트코드';
COMMENT ON COLUMN "fb_course_code".CODE IS '코스코드';
COMMENT ON COLUMN "fb_course_code".CODENM_KOR IS '코스명한글';
COMMENT ON COLUMN "fb_course_code".CODENM_ENG IS '코스명영문';
COMMENT ON COLUMN "fb_course_code"."UPPER" IS '상위코드';
COMMENT ON COLUMN "fb_course_code".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_course_code".INDATE IS '등록일';
COMMENT ON COLUMN "fb_course_code".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_course_code".LDATE IS '수정일';
COMMENT ON TABLE  "fb_culture_mediakey_temp" IS '';
COMMENT ON COLUMN "fb_culture_mediakey_temp".MEDIA_CONTENT_KEY IS '';
COMMENT ON COLUMN "fb_culture_mediakey_temp".NEW_MEDIA_CONTENT_KEY IS '';
COMMENT ON TABLE  "fb_culture_play" IS '교양강좌학습정보';
COMMENT ON COLUMN "fb_culture_play".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_culture_play".SEQ IS '번호';
COMMENT ON COLUMN "fb_culture_play".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_culture_play".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_culture_play".INDATE IS '등록일';
COMMENT ON TABLE  "fb_exam" IS '평가문제정보';
COMMENT ON COLUMN "fb_exam".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_exam".EXAM_SEQ IS '문제번호';
COMMENT ON COLUMN "fb_exam".LEVELS IS '난이도';
COMMENT ON COLUMN "fb_exam".EXAM_TYPE IS '문제분류';
COMMENT ON COLUMN "fb_exam".USE_YN IS '사용여부';
COMMENT ON COLUMN "fb_exam".EXAM_TEXT IS '문제';
COMMENT ON COLUMN "fb_exam".EXP_TEXT IS '문제해설';
COMMENT ON COLUMN "fb_exam".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_exam".INDATE IS '등록일';
COMMENT ON COLUMN "fb_exam".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_exam".LDATE IS '수정일';
COMMENT ON TABLE  "fb_exampaper" IS '평가지정보';
COMMENT ON COLUMN "fb_exampaper".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_exampaper".PAPER_SEQ IS '문제지번호';
COMMENT ON COLUMN "fb_exampaper".PAPER_TYPE IS '문제지구분';
COMMENT ON COLUMN "fb_exampaper".PAPER_TITLE IS '문제지명';
COMMENT ON COLUMN "fb_exampaper".ISOPEN_ANSWER IS '점수결과공개여부';
COMMENT ON COLUMN "fb_exampaper".ISOPEN_EXP IS '문제해설공개여부';
COMMENT ON COLUMN "fb_exampaper".TYPE2_LEV1_CNT IS '객관식난이도상문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE2_LEV2_CNT IS '객관식난이도중문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE2_LEV3_CNT IS '객관식난이도하문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE1_LEV1_CNT IS '단답형난이도상문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE1_LEV2_CNT IS '단답형난이도중문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE1_LEV3_CNT IS '단답형난이도하문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE4_LEV1_CNT IS '서술형난이도상문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE4_LEV2_CNT IS '서술형난이도중문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE4_LEV3_CNT IS '서술형난이도하문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE3_LEV1_CNT IS 'OX난이도상문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE3_LEV2_CNT IS 'OX난이도중문제수';
COMMENT ON COLUMN "fb_exampaper".TYPE3_LEV3_CNT IS 'OX난이도하문제수';
COMMENT ON COLUMN "fb_exampaper".LEV1_SCORE IS '난이도상배점';
COMMENT ON COLUMN "fb_exampaper".LEV2_SCORE IS '난이도중배점';
COMMENT ON COLUMN "fb_exampaper".LEV3_SCORE IS '난이도하배점';
COMMENT ON COLUMN "fb_exampaper".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_exampaper".INDATE IS '등록일';
COMMENT ON COLUMN "fb_exampaper".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_exampaper".LDATE IS '수정일';
COMMENT ON TABLE  "fb_exampaper_exam" IS '평가지별문제맵핑정보';
COMMENT ON COLUMN "fb_exampaper_exam".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_exampaper_exam".PAPER_SEQ IS '문제지번호';
COMMENT ON COLUMN "fb_exampaper_exam".EXAM_SEQ IS '문제번호';
COMMENT ON COLUMN "fb_exampaper_exam".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_exampaper_exam".INDATE IS '등록일';
COMMENT ON COLUMN "fb_exampaper_exam".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_exampaper_exam".LDATE IS '수정일';
COMMENT ON TABLE  "fb_examresult" IS '평가지결과정보';
COMMENT ON COLUMN "fb_examresult".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_examresult".SUBJSEQ IS '과정차수번호';
COMMENT ON COLUMN "fb_examresult".PAPER_SEQ IS '문제지번호';
COMMENT ON COLUMN "fb_examresult".USERID IS '통합사번';
COMMENT ON COLUMN "fb_examresult".TOTGETSCORE IS '총획득점수';
COMMENT ON COLUMN "fb_examresult".TOTEXAMCNT IS '총문제수';
COMMENT ON COLUMN "fb_examresult".TOTANSWER IS '총정답수';
COMMENT ON COLUMN "fb_examresult".STARTTIME IS '시작시간';
COMMENT ON COLUMN "fb_examresult".ENDTIME IS '종료시간';
COMMENT ON COLUMN "fb_examresult".CNT IS '사용자응시횟수';
COMMENT ON COLUMN "fb_examresult".USERIP IS '평가자IP';
COMMENT ON COLUMN "fb_examresult".TYPE4_MARK_YN IS '서술형채점상태';
COMMENT ON COLUMN "fb_examresult".TYPE4_MARK_DATE IS '서술형채점일';
COMMENT ON COLUMN "fb_examresult".TYPE4_MARK_USERID IS '서?형채점자';
COMMENT ON COLUMN "fb_examresult".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_examresult".INDATE IS '등록일';
COMMENT ON COLUMN "fb_examresult".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_examresult".LDATE IS '수정일';
COMMENT ON TABLE  "fb_examsul" IS '평가문제보기정보';
COMMENT ON COLUMN "fb_examsul".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_examsul".EXAM_SEQ IS '문제번호';
COMMENT ON COLUMN "fb_examsul".SEL_SEQ IS '보기번호';
COMMENT ON COLUMN "fb_examsul".SEL_TEXT IS '보기';
COMMENT ON COLUMN "fb_examsul".ISANSWER IS '정답유무';
COMMENT ON COLUMN "fb_examsul".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_examsul".INDATE IS '등록일';
COMMENT ON COLUMN "fb_examsul".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_examsul".LDATE IS '수정일';
COMMENT ON TABLE  "fb_examsul_result" IS '평가문제결과정보';
COMMENT ON COLUMN "fb_examsul_result".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_examsul_result".SUBJSEQ IS '과정차수번호';
COMMENT ON COLUMN "fb_examsul_result".PAPER_SEQ IS '문제지번호';
COMMENT ON COLUMN "fb_examsul_result".EXAM_SEQ IS '문제번호';
COMMENT ON COLUMN "fb_examsul_result".USERID IS '통합사번';
COMMENT ON COLUMN "fb_examsul_result".ORD IS '문제순서';
COMMENT ON COLUMN "fb_examsul_result".ANSWER IS '사용자입력답';
COMMENT ON COLUMN "fb_examsul_result".ISANSWER IS '정답유무';
COMMENT ON COLUMN "fb_examsul_result".SCORE IS '획득점수';
COMMENT ON COLUMN "fb_examsul_result".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_examsul_result".INDATE IS '등록일';
COMMENT ON COLUMN "fb_examsul_result".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_examsul_result".LDATE IS '수정일';
COMMENT ON TABLE  "fb_exam_log" IS '시험응시로그';
COMMENT ON COLUMN "fb_exam_log".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_exam_log".SUBJSEQ IS '과정차수번호';
COMMENT ON COLUMN "fb_exam_log".PAPER_SEQ IS '문제지번호';
COMMENT ON COLUMN "fb_exam_log".USERID IS '통합사번';
COMMENT ON COLUMN "fb_exam_log".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_exam_log".LUSERID IS '응시자';
COMMENT ON COLUMN "fb_exam_log".LDATE IS '응시일';
COMMENT ON COLUMN "fb_exam_log".USERIP IS '학습자IP';
COMMENT ON COLUMN "fb_exam_log".DEVICE IS '접속방법';
COMMENT ON TABLE  "fb_gadmin" IS '권한정보';
COMMENT ON COLUMN "fb_gadmin".GADMIN IS '권한코드';
COMMENT ON COLUMN "fb_gadmin".GADMINNM IS '권한명';
COMMENT ON COLUMN "fb_gadmin".COMMENTS IS '권한설명';
COMMENT ON COLUMN "fb_gadmin".PADMIN IS '상위권한코드';
COMMENT ON COLUMN "fb_gadmin".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_gadmin".LDATE IS '수정일';
COMMENT ON TABLE  "fb_gateimage" IS '게이트페이지이미지정보';
COMMENT ON COLUMN "fb_gateimage".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_gateimage".TOPREALFILE IS 'TOP로고실제파일명';
COMMENT ON COLUMN "fb_gateimage".TOPSAVEFILE IS 'TOP로고저장파일명';
COMMENT ON COLUMN "fb_gateimage".FOOTERREALFILE IS 'FOOTER로고실제파일명';
COMMENT ON COLUMN "fb_gateimage".FOOTERSAVEFILE IS 'FOOTER로고저장파일명';
COMMENT ON COLUMN "fb_gateimage".FOOTERCOPYREALFILE IS 'FOOTER카피라이터저장파일명';
COMMENT ON COLUMN "fb_gateimage".FOOTERCOPYSAVEFILE IS 'FOOTER카피라이터실제파일명';
COMMENT ON COLUMN "fb_gateimage".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_gateimage".LDATE IS '수정일';
COMMENT ON COLUMN "fb_gateimage".ADMIN_EMAIL IS '운영자이메일';
COMMENT ON COLUMN "fb_gateimage".ADDR_TXT IS '주소';
COMMENT ON COLUMN "fb_gateimage".TOP_TXT IS '상단안내멘트';
COMMENT ON COLUMN "fb_gateimage".SUB_TXT IS '서브안내멘트';
COMMENT ON COLUMN "fb_gateimage".COPY_TXT IS '카피라이터멘트';
COMMENT ON TABLE  "fb_gate_obj" IS '게이트콘텐츠정보';
COMMENT ON COLUMN "fb_gate_obj".SEQ IS '콘텐츠번호';
COMMENT ON COLUMN "fb_gate_obj".SIZETYPE IS '사이즈코드';
COMMENT ON COLUMN "fb_gate_obj".GUBUN IS '콘텐츠구분코드';
COMMENT ON COLUMN "fb_gate_obj".OBJNM IS '콘텐츠명';
COMMENT ON COLUMN "fb_gate_obj".OBJTEXT IS '콘텐츠설명';
COMMENT ON COLUMN "fb_gate_obj".OBJURL IS '콘텐츠URL';
COMMENT ON COLUMN "fb_gate_obj".ISBLANK IS '타겟구분';
COMMENT ON COLUMN "fb_gate_obj".SAVEFILE IS '이미지저장파일명';
COMMENT ON COLUMN "fb_gate_obj".REALFILE IS '이미지실제파일명';
COMMENT ON COLUMN "fb_gate_obj".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_gate_obj".LDATE IS '수정일';
COMMENT ON TABLE  "fb_gate_obj_grcode" IS '게이트콘텐츠맵핑정보';
COMMENT ON COLUMN "fb_gate_obj_grcode".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_gate_obj_grcode".SEQ IS '콘텐츠정보';
COMMENT ON COLUMN "fb_gate_obj_grcode".ORD IS '순번';
COMMENT ON COLUMN "fb_gate_obj_grcode".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_gate_obj_grcode".LDATE IS '수정일';
COMMENT ON TABLE  "fb_grcode" IS '주관처정보';
COMMENT ON COLUMN "fb_grcode".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_grcode".GRCODENM IS '주관처명';
COMMENT ON COLUMN "fb_grcode".INCHARGEID IS '담당자아이디';
COMMENT ON COLUMN "fb_grcode"."DOMAIN" IS '도메인';
COMMENT ON COLUMN "fb_grcode".LAYOUTTYPE IS '레이아웃타입';
COMMENT ON COLUMN "fb_grcode".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_grcode".LDATE IS '수정일';
COMMENT ON COLUMN "fb_grcode".USEYN IS '사용여부';
COMMENT ON COLUMN "fb_grcode".CDPSTATE IS 'CDP상태값';
COMMENT ON COLUMN "fb_grcode".REPAIR IS '서비스점검여부';
COMMENT ON COLUMN "fb_grcode".REPAIR_DT IS '서비스점검일시';
COMMENT ON COLUMN "fb_grcode".REPAIR_TXT IS '서비스점검내용';
COMMENT ON COLUMN "fb_grcode".ORD IS '노출순서';
COMMENT ON COLUMN "fb_grcode".SUBJCLASSLEVEL IS '과정분류레벨';
COMMENT ON TABLE  "fb_grcodeman" IS '주관처관리자맵핑정보';
COMMENT ON COLUMN "fb_grcodeman".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_grcodeman".GADMIN IS '권한코드';
COMMENT ON COLUMN "fb_grcodeman".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_grcodeman".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_grcodeman".LDATE IS '수정일';
COMMENT ON TABLE  "fb_grcomp" IS '주관처대상정보';
COMMENT ON COLUMN "fb_grcomp".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_grcomp".LDATE IS '수정일';
COMMENT ON COLUMN "fb_grcomp".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_grcomp".COMP IS '회사코드';
COMMENT ON TABLE  "fb_holyday" IS '공휴일정보';
COMMENT ON COLUMN "fb_holyday".HDATE IS '공휴일';
COMMENT ON COLUMN "fb_holyday".ISHOLYDAY IS '공휴일여부';
COMMENT ON COLUMN "fb_holyday".ISWEEK IS '주말여부';
COMMENT ON COLUMN "fb_holyday".HDATE_TXT IS '비고';
COMMENT ON TABLE  "fb_homefaq_category" IS '홈페이지FAQ카테고리정보';
COMMENT ON COLUMN "fb_homefaq_category".CATEGORY IS '카테고리코드';
COMMENT ON COLUMN "fb_homefaq_category".CATEGORYNAME IS '카테고리명';
COMMENT ON COLUMN "fb_homefaq_category".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_homefaq_category".LDATE IS '수정일';
COMMENT ON TABLE  "fb_keyword" IS '키워드정보';
COMMENT ON COLUMN "fb_keyword".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_keyword".KEYWORD IS '키워드코드';
COMMENT ON COLUMN "fb_keyword".KEYWORDNM IS '키워드명';
COMMENT ON COLUMN "fb_keyword".INDATE IS '등록일';
COMMENT ON COLUMN "fb_keyword".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_keyword".LDATE IS '수정일';
COMMENT ON COLUMN "fb_keyword".LUSERID IS '수정자';
COMMENT ON TABLE  "fb_kfa_license_info" IS '이력에없는자격증';
COMMENT ON COLUMN "fb_kfa_license_info".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_license_info".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_license_info".CL_KFA IS '';
COMMENT ON COLUMN "fb_kfa_license_info".CL_AFC IS '';
COMMENT ON COLUMN "fb_kfa_license_info".GK_KFA IS '';
COMMENT ON COLUMN "fb_kfa_license_info".GK_AFC IS '';
COMMENT ON COLUMN "fb_kfa_license_info".FS_KFA IS '';
COMMENT ON COLUMN "fb_kfa_license_info".FS_AFC IS '';
COMMENT ON COLUMN "fb_kfa_license_info".LDATE IS '';
COMMENT ON COLUMN "fb_kfa_license_info".CL_EDUEND IS '';
COMMENT ON COLUMN "fb_kfa_license_info".GK_EDUEND IS '';
COMMENT ON COLUMN "fb_kfa_license_info".FS_EDUEND IS '';
COMMENT ON TABLE  "fb_kfa_mstold" IS 'KFA과거교육이력';
COMMENT ON COLUMN "fb_kfa_mstold".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_kfa_mstold".IPIN_CI IS 'IPIN_CI';
COMMENT ON COLUMN "fb_kfa_mstold"."NAME" IS '이름';
COMMENT ON COLUMN "fb_kfa_mstold"."TYPE" IS '자격증코드';
COMMENT ON COLUMN "fb_kfa_mstold".SUBJNM IS '과정명';
COMMENT ON COLUMN "fb_kfa_mstold"."YEAR" IS '년도';
COMMENT ON COLUMN "fb_kfa_mstold".STARTED IS '교육시작일';
COMMENT ON COLUMN "fb_kfa_mstold".ENDED IS '교육종료일';
COMMENT ON COLUMN "fb_kfa_mstold".PACCEPT IS '총점';
COMMENT ON COLUMN "fb_kfa_mstold".GRAYN IS '합격여부(Y:합격,N:불합격,R:재시험)';
COMMENT ON COLUMN "fb_kfa_mstold"."HOUR"IS '이수시간';
COMMENT ON COLUMN "fb_kfa_mstold".INSTITUTE IS '교육기관';
COMMENT ON COLUMN "fb_kfa_mstold".TUTORNAME IS '강사명';
COMMENT ON COLUMN "fb_kfa_mstold".PLCAE IS '장소';
COMMENT ON COLUMN "fb_kfa_mstold".ISSUPERIOR IS '우수자여부';
COMMENT ON COLUMN "fb_kfa_mstold".ISBLACKLIST IS '블랙리스트대상여부';
COMMENT ON COLUMN "fb_kfa_mstold".KFACODE IS 'KFA코드';
COMMENT ON COLUMN "fb_kfa_mstold".AFCCODE IS 'AFC코드';
COMMENT ON COLUMN "fb_kfa_mstold".EDU_TYPE IS '교육구분(1:자격교육,2:보수교육)';
COMMENT ON COLUMN "fb_kfa_mstold".RESNO IS '과거회원번호';
COMMENT ON COLUMN "fb_kfa_mstold".GRADE IS '학점';
COMMENT ON COLUMN "fb_kfa_mstold".USERID IS '매칭아이디';
COMMENT ON COLUMN "fb_kfa_mstold".KFASUBJ IS '과거과정코드';
COMMENT ON COLUMN "fb_kfa_mstold".KFASUBJSEQ IS '과거과정차수';
COMMENT ON COLUMN "fb_kfa_mstold".STEP IS '진도율';
COMMENT ON COLUMN "fb_kfa_mstold".EXAM IS '평가점수';
COMMENT ON COLUMN "fb_kfa_mstold".LICENSE_NDATE IS '자격증갱신일';
COMMENT ON COLUMN "fb_kfa_mstold".LICENSE_UDATE IS '자격증만료일';
COMMENT ON COLUMN "fb_kfa_mstold".SUBJ_TYPE IS '교육형태';
COMMENT ON COLUMN "fb_kfa_mstold".RENEWAL_CNT IS '갱신횟수';
COMMENT ON COLUMN "fb_kfa_mstold".HISTORYGUBUN IS 'KFA/MULTI 구분';
COMMENT ON COLUMN "fb_kfa_mstold".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_kfa_mstold".LDATE IS '수정일';
COMMENT ON COLUMN "fb_kfa_mstold".COMP_NO IS '';
COMMENT ON COLUMN "fb_kfa_mstold".FIX_ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold".FLAG IS '배치등록여부 구분값(Y: 배치 등록, N:배치 미등록)';
COMMENT ON TABLE  "fb_kfa_mstold170725" IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725"."NAME" IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".SUBJNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".STARTED IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".PACCEPT IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".GRAYN IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725"."HOUR"IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".INSTITUTE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".TUTORNAME IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".PLCAE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".ISSUPERIOR IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".ISBLACKLIST IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".KFACODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".AFCCODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".EDU_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".GRADE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".USERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".KFASUBJ IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".KFASUBJSEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".STEP IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".EXAM IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".LICENSE_NDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".LICENSE_UDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".SUBJ_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".HISTORYGUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".LUSERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".LDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".COMP_NO IS '';
COMMENT ON COLUMN "fb_kfa_mstold170725".FIX_ENDED IS '';
COMMENT ON TABLE  "fb_kfa_mstold20180426" IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426"."NAME" IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".SUBJNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".STARTED IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".PACCEPT IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".GRAYN IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426"."HOUR"IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".INSTITUTE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".TUTORNAME IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".PLCAE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".ISSUPERIOR IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".ISBLACKLIST IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".KFACODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".AFCCODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".EDU_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".GRADE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".USERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".KFASUBJ IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".KFASUBJSEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".STEP IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".EXAM IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".LICENSE_NDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".LICENSE_UDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".SUBJ_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".HISTORYGUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".LUSERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold20180426".LDATE IS '';
COMMENT ON TABLE  "fb_kfa_mstold_bak" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak"."NAME" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".SUBJNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".STARTED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".PACCEPT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".GRAYN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak"."HOUR"IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".INSTITUTE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".TUTORNAME IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".PLCAE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".ISSUPERIOR IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".ISBLACKLIST IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".KFACODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".AFCCODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".EDU_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".GRADE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".USERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".KFASUBJ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".KFASUBJSEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".STEP IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".EXAM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".LICENSE_NDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".LICENSE_UDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".SUBJ_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".HISTORYGUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".LUSERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_bak".LDATE IS '';
COMMENT ON TABLE  "fb_kfa_mstold_noid" IS '20180126KFAJOIN데이터아이디없음';
COMMENT ON COLUMN "fb_kfa_mstold_noid".GUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid".GUBUNNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid".LICENSE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid".ISSUE_DATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold_noid".HNAME IS '';
COMMENT ON TABLE  "fb_kfa_mstold_temp" IS '20180126KFAJOIN데이터등록';
COMMENT ON COLUMN "fb_kfa_mstold_temp".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp"."NAME" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".SUBJNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".STARTED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".PACCEPT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".GRAYN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp"."HOUR"IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".INSTITUTE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".TUTORNAME IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".PLCAE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".ISSUPERIOR IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".ISBLACKLIST IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".KFACODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".AFCCODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".EDU_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".GRADE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".USERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".KFASUBJ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".KFASUBJSEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".STEP IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".EXAM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".LICENSE_NDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".LICENSE_UDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".SUBJ_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".HISTORYGUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".LUSERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_temp".LDATE IS '';
COMMENT ON TABLE  "fb_kfa_mstold_work" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".SEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".IPIN_CI IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work"."NAME" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work"."TYPE" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".SUBJNM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work"."YEAR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".STARTED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".ENDED IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".PACCEPT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".GRAYN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work"."HOUR" IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".INSTITUTE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".TUTORNAME IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".PLCAE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".ISSUPERIOR IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".ISBLACKLIST IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".KFACODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".AFCCODE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".EDU_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".RESNO IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".GRADE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".USERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".KFASUBJ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".KFASUBJSEQ IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".STEP IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".EXAM IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".LICENSE_NDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".LICENSE_UDATE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".SUBJ_TYPE IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".HISTORYGUBUN IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".LUSERID IS '';
COMMENT ON COLUMN "fb_kfa_mstold_work".LDATE IS '';
COMMENT ON TABLE  "fb_languagescript" IS '다국어관리';
COMMENT ON COLUMN "fb_languagescript".LANGKEY IS '키';
COMMENT ON COLUMN "fb_languagescript".GUBUN IS '구분';
COMMENT ON COLUMN "fb_languagescript".KOREAN IS '한국어';
COMMENT ON COLUMN "fb_languagescript".ENGLISH IS '영어';
COMMENT ON COLUMN "fb_languagescript".CHINESE IS '중국어';
COMMENT ON COLUMN "fb_languagescript".COMMENTS IS '메모';
COMMENT ON COLUMN "fb_languagescript".INDATE IS '등록일';
COMMENT ON COLUMN "fb_languagescript".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_languagescript".LDATE IS '수정일';
COMMENT ON COLUMN "fb_languagescript".LUSERID IS '수정자';
COMMENT ON TABLE  "fb_languagescript_dev" IS '다국어관리_개발';
COMMENT ON COLUMN "fb_languagescript_dev".LANGKEY IS '키';
COMMENT ON COLUMN "fb_languagescript_dev".GUBUN IS '구분';
COMMENT ON COLUMN "fb_languagescript_dev".KOREAN IS '한국어';
COMMENT ON COLUMN "fb_languagescript_dev".ENGLISH IS '영어';
COMMENT ON COLUMN "fb_languagescript_dev".CHINESE IS '중국어';
COMMENT ON COLUMN "fb_languagescript_dev".COMMENTS IS '메모';
COMMENT ON COLUMN "fb_languagescript_dev".INDATE IS '등록일';
COMMENT ON COLUMN "fb_languagescript_dev".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_languagescript_dev".LDATE IS '수정일';
COMMENT ON COLUMN "fb_languagescript_dev".LUSERID IS '수정자';
COMMENT ON TABLE  "fb_languagescript_real" IS '다국어관리_운영';
COMMENT ON COLUMN "fb_languagescript_real".LANGKEY IS '키';
COMMENT ON COLUMN "fb_languagescript_real".GUBUN IS '구분';
COMMENT ON COLUMN "fb_languagescript_real".KOREAN IS '한국어';
COMMENT ON COLUMN "fb_languagescript_real".ENGLISH IS '영어';
COMMENT ON COLUMN "fb_languagescript_real".CHINESE IS '중국어';
COMMENT ON COLUMN "fb_languagescript_real".COMMENTS IS '메모';
COMMENT ON COLUMN "fb_languagescript_real".INDATE IS '등록일';
COMMENT ON COLUMN "fb_languagescript_real".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_languagescript_real".LDATE IS '수정일';
COMMENT ON COLUMN "fb_languagescript_real".LUSERID IS '수정자';
COMMENT ON TABLE  "fb_license" IS '자격증테이블';
COMMENT ON COLUMN "fb_license".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_license".SUBJSEQ IS '차수코드';
COMMENT ON COLUMN "fb_license".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_license".SUBJGUBUN IS '지도자급수';
COMMENT ON COLUMN "fb_license".GETYYMM IS '취득년월';
COMMENT ON COLUMN "fb_license".KFA_NO IS 'KFA자격증번호';
COMMENT ON COLUMN "fb_license".AFC_NO IS 'AFC자격증번호';
COMMENT ON COLUMN "fb_license".GETDATE IS '취득일';
COMMENT ON COLUMN "fb_license".UDATE IS '만료일';
COMMENT ON COLUMN "fb_license".SENDDATE IS '발송일';
COMMENT ON COLUMN "fb_license".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_license".INDATE IS '등록일';
COMMENT ON COLUMN "fb_license".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_license".LDATE IS '수정일';
COMMENT ON COLUMN "fb_license".RENEWAL_CNT IS '갱신횟수';
COMMENT ON COLUMN "fb_license".NDATE IS '최종갱신일';
COMMENT ON COLUMN "fb_license".CHANGE_YN IS '자격전환여부';
COMMENT ON COLUMN "fb_license".GRADE_SUM IS '';
COMMENT ON COLUMN "fb_license".LIMIT_PROMOTION IS '';
COMMENT ON COLUMN "fb_license".LIMIT_DATE IS '';
COMMENT ON COLUMN "fb_license".UNLIMIT_DATE IS '';
COMMENT ON COLUMN "fb_license".FLAG IS '배치등록여부 구분값(Y: 배치 등록, N:배치 미등록)';
COMMENT ON TABLE  "fb_license_bak" IS '';
COMMENT ON COLUMN "fb_license_bak".SUBJ IS '';
COMMENT ON COLUMN "fb_license_bak".SUBJSEQ IS '';
COMMENT ON COLUMN "fb_license_bak".USERID IS '';
COMMENT ON COLUMN "fb_license_bak".SUBJGUBUN IS '';
COMMENT ON COLUMN "fb_license_bak".GETYYMM IS '';
COMMENT ON COLUMN "fb_license_bak".KFA_NO IS '';
COMMENT ON COLUMN "fb_license_bak".AFC_NO IS '';
COMMENT ON COLUMN "fb_license_bak".GETDATE IS '';
COMMENT ON COLUMN "fb_license_bak".UDATE IS '';
COMMENT ON COLUMN "fb_license_bak".SENDDATE IS '';
COMMENT ON COLUMN "fb_license_bak".INUSERID IS '';
COMMENT ON COLUMN "fb_license_bak".INDATE IS '';
COMMENT ON COLUMN "fb_license_bak".LUSERID IS '';
COMMENT ON COLUMN "fb_license_bak".LDATE IS '';
COMMENT ON COLUMN "fb_license_bak".RENEWAL_CNT IS '';
COMMENT ON COLUMN "fb_license_bak".NDATE IS '';
COMMENT ON COLUMN "fb_license_bak".CHANGE_YN IS '';
COMMENT ON TABLE  "fb_license_gubun" IS '';
COMMENT ON COLUMN "fb_license_gubun".GUBUN IS '과정구분코드';
COMMENT ON COLUMN "fb_license_gubun".LICENSENM IS '자격증명';
COMMENT ON COLUMN "fb_license_gubun".LICENSE_ORDER IS '자격증 순서(숫자가 클수록 높은 자격증)';
COMMENT ON COLUMN "fb_license_gubun".OLD_PERIOD IS 'OLD_의무이행기간';
COMMENT ON COLUMN "fb_license_gubun".OLD_GRADE IS 'OLD_의무이행점수';
COMMENT ON COLUMN "fb_license_gubun".NEW_PERIOD IS 'NEW_의무이행기간';
COMMENT ON COLUMN "fb_license_gubun".NEW_GRADE IS 'NEW_의무이행점수';
COMMENT ON TABLE  "fb_license_issued" IS '자격증 재발급';
COMMENT ON COLUMN "fb_license_issued".LICENSE_NO IS '자격증번호';
COMMENT ON COLUMN "fb_license_issued".ORDR_IDXX IS '주문번호';
COMMENT ON COLUMN "fb_license_issued".SUBJGUBUN IS '지도자급수';
COMMENT ON COLUMN "fb_license_issued".APPLY_USERID IS '신청자';
COMMENT ON COLUMN "fb_license_issued".APPLY_DATE IS '신청일';
COMMENT ON COLUMN "fb_license_issued"."STATE" IS '진행상태';
COMMENT ON COLUMN "fb_license_issued".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_license_issued".INDATE IS '등록자';
COMMENT ON COLUMN "fb_license_issued".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_license_issued".LDATE IS '최종수정자';
COMMENT ON COLUMN "fb_license_issued".UDATE IS '만료';
COMMENT ON COLUMN "fb_license_issued".ENG_YN IS '영문 자격확인서 여부';
COMMENT ON TABLE  "fb_license_temp" IS '';
COMMENT ON COLUMN "fb_license_temp".SUBJ IS '';
COMMENT ON COLUMN "fb_license_temp"."YEAR" IS '';
COMMENT ON COLUMN "fb_license_temp".SUBJSEQ IS '';
COMMENT ON COLUMN "fb_license_temp".USERID IS '';
COMMENT ON COLUMN "fb_license_temp".KFA_NO IS '';
COMMENT ON COLUMN "fb_license_temp".AFC_NO IS '';
COMMENT ON COLUMN "fb_license_temp".SENDDATE IS '';
COMMENT ON COLUMN "fb_license_temp".LDATE IS '';
COMMENT ON COLUMN "fb_license_temp".LUSERID IS '';
COMMENT ON TABLE  "fb_license_update_log" IS '자격증 갱신 로그';
COMMENT ON COLUMN "fb_license_update_log".SEQ IS '로그 시퀀스';
COMMENT ON COLUMN "fb_license_update_log".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_license_update_log".SUBJSEQ IS '차수코드';
COMMENT ON COLUMN "fb_license_update_log".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_license_update_log".SUBJGUBUN IS '지도자급수';
COMMENT ON COLUMN "fb_license_update_log".INDATE IS '갱신일';
COMMENT ON COLUMN "fb_license_update_log".INUSERID IS '갱신자';
COMMENT ON TABLE  "fb_login" IS '';
COMMENT ON COLUMN "fb_login".LOGIN_SEQ IS '로그인일련번호';
COMMENT ON COLUMN "fb_login".USERID IS '아이디';
COMMENT ON COLUMN "fb_login".IPADDRESS IS 'IP';
COMMENT ON COLUMN "fb_login".LOGINTIME IS '로그인 시간';
COMMENT ON COLUMN "fb_login".OS_TYPE_CODE IS '운영체계유형코드';
COMMENT ON TABLE  "fb_loginchk_log" IS '90일 미접속 비밀번호 변경 체크 배치 로그';
COMMENT ON COLUMN "fb_loginchk_log".SEQ IS '시퀀스';
COMMENT ON COLUMN "fb_loginchk_log".USERID IS '아이디';
COMMENT ON COLUMN "fb_loginchk_log".LASTLOGIN IS '마지막접속일';
COMMENT ON COLUMN "fb_loginchk_log".INDATE IS '등록일';
COMMENT ON TABLE  "fb_log_sendemail" IS '';
COMMENT ON COLUMN "fb_log_sendemail".YEARMONTH IS '';
COMMENT ON COLUMN "fb_log_sendemail".SEQ IS '';
COMMENT ON COLUMN "fb_log_sendemail".INUSERID IS '';
COMMENT ON COLUMN "fb_log_sendemail".INDATE IS '';
COMMENT ON COLUMN "fb_log_sendemail".SUBJECT IS '';
COMMENT ON COLUMN "fb_log_sendemail".RECEIVEEMAIL IS '';
COMMENT ON COLUMN "fb_log_sendemail".SENDEMAIL IS '';
COMMENT ON COLUMN "fb_log_sendemail".SAVEFILENAME IS '';
COMMENT ON COLUMN "fb_log_sendemail".REALFILENAME IS '';
COMMENT ON COLUMN "fb_log_sendemail".FILESIZE IS '';
COMMENT ON COLUMN "fb_log_sendemail"."RESULT" IS '';
COMMENT ON COLUMN "fb_log_sendemail".RESULT_MSG IS '';
COMMENT ON COLUMN "fb_log_sendemail".RECEIVEUSERID IS '';
COMMENT ON TABLE  "fb_log_sms" IS '';
COMMENT ON COLUMN "fb_log_sms".SEQ IS '';
COMMENT ON COLUMN "fb_log_sms".SMSDATE IS '';
COMMENT ON COLUMN "fb_log_sms".CALL_TO IS '';
COMMENT ON COLUMN "fb_log_sms".CALL_FROM IS '';
COMMENT ON COLUMN "fb_log_sms".RESERVATION_TIME IS '';
COMMENT ON COLUMN "fb_log_sms".CONTENT IS '';
COMMENT ON COLUMN "fb_log_sms"."RESULT" IS '';
COMMENT ON COLUMN "fb_log_sms".RESULT_MSG IS '';
COMMENT ON COLUMN "fb_log_sms".INDATE IS '';
COMMENT ON COLUMN "fb_log_sms".INUSERID IS '';
COMMENT ON COLUMN "fb_log_sms".COMP IS '';
COMMENT ON TABLE  "fb_manager" IS '사내사외구분';
COMMENT ON COLUMN "fb_manager".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_manager".GADMIN IS '권한코드';
COMMENT ON COLUMN "fb_manager".FMON IS '권한시작일';
COMMENT ON COLUMN "fb_manager".TMON IS '권한종료일';
COMMENT ON COLUMN "fb_manager".COMMENTS IS '비고';
COMMENT ON COLUMN "fb_manager".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_manager".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_manager".GUBUN IS '사내사외구분';
COMMENT ON TABLE  "fb_manager_index" IS '관리자 메인 메뉴관리 정보';
COMMENT ON COLUMN "fb_manager_index".USERID IS '관리자 아이디';
COMMENT ON COLUMN "fb_manager_index".MENUCODE IS '메뉴코드';
COMMENT ON COLUMN "fb_manager_index".ORD IS '정렬순서';
COMMENT ON COLUMN "fb_manager_index".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_manager_index".LDATE IS '수정일';
COMMENT ON COLUMN "fb_manager_index".VIEWYN IS '보이기여';
COMMENT ON TABLE  "fb_manager_menuauth" IS '';
COMMENT ON COLUMN "fb_manager_menuauth".USERID IS '회원아이디';
COMMENT ON COLUMN "fb_manager_menuauth".SUBJ IS '강좌코드';
COMMENT ON COLUMN "fb_manager_menuauth".SUBJSEQ IS '차수코드';
COMMENT ON TABLE  "fb_manager_remote_menu" IS '관리자 리모컨메뉴 정보';
COMMENT ON COLUMN "fb_manager_remote_menu".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_manager_remote_menu".MENU IS '메뉴코드';
COMMENT ON COLUMN "fb_manager_remote_menu".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_manager_remote_menu".INDATE IS '등록일';
COMMENT ON TABLE  "fb_member" IS '회원정보';
COMMENT ON COLUMN "fb_member".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_member".PWD IS '비밀번호';
COMMENT ON COLUMN "fb_member"."NAME" IS '성명';
COMMENT ON COLUMN "fb_member".GENDER IS '성별';
COMMENT ON COLUMN "fb_member".BIRTHDAY IS '생년월일';
COMMENT ON COLUMN "fb_member".POST IS '우편번호';
COMMENT ON COLUMN "fb_member".ADDR1 IS '주소';
COMMENT ON COLUMN "fb_member".ADDR2 IS '상세주소';
COMMENT ON COLUMN "fb_member".HANDPHONE IS '휴대폰번호';
COMMENT ON COLUMN "fb_member".EMAIL IS '이메일주소';
COMMENT ON COLUMN "fb_member".SMS_YN IS 'SMS수신동의여부';
COMMENT ON COLUMN "fb_member".EMAIL_YN IS '이메일수신동의여부';
COMMENT ON COLUMN "fb_member".COMP IS '회사코드';
COMMENT ON COLUMN "fb_member".DEPT IS '통합부서코드';
COMMENT ON COLUMN "fb_member".JIK IS '직급코드';
COMMENT ON COLUMN "fb_member".CLOSE_YN IS '탈퇴여부';
COMMENT ON COLUMN "fb_member".CLOSE_CODE IS '탈퇴사유코드';
COMMENT ON COLUMN "fb_member".CLOSE_ETC IS '탈퇴사유';
COMMENT ON COLUMN "fb_member".CLOSE_DT IS '탈퇴일';
COMMENT ON COLUMN "fb_member".LOGIN_FAIL_CNT IS '로그인실패횟수';
COMMENT ON COLUMN "fb_member".INDATE IS '가입일';
COMMENT ON COLUMN "fb_member".INUSERID IS '가입자';
COMMENT ON COLUMN "fb_member".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_member".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_member".AUTO_LOGIN IS '자동로그인코드';
COMMENT ON COLUMN "fb_member".AUTO_LOGIN_KEY IS '자동로그인대칭키';
COMMENT ON COLUMN "fb_member".PHONE IS '집전화';
COMMENT ON COLUMN "fb_member".JIKGUN IS '직군';
COMMENT ON COLUMN "fb_member".JIKJONG IS '직종';
COMMENT ON COLUMN "fb_member".JIKMU IS '직무';
COMMENT ON COLUMN "fb_member".ISOUTMEM IS '[미사용]';
COMMENT ON COLUMN "fb_member".OUTCOMP IS '[미사용]';
COMMENT ON COLUMN "fb_member".OUTDEPTNM IS '[미사용]';
COMMENT ON COLUMN "fb_member".OUTJIKNM IS '[미사용]';
COMMENT ON COLUMN "fb_member".LOGIN_YN IS '로그인가능여부';
COMMENT ON COLUMN "fb_member".HRD_SUBJIKMU IS '[미사용]';
COMMENT ON COLUMN "fb_member".MANAGER_GUBUN IS '관리자회원가입여부';
COMMENT ON COLUMN "fb_member".MANAGER_COMPNM IS '관리자가입회사명';
COMMENT ON COLUMN "fb_member".STATUS IS '상태 (재직 : 1, 휴직 : 2, 퇴직 : 3)';
COMMENT ON COLUMN "fb_member".USER_TYPE IS '회원구분';
COMMENT ON COLUMN "fb_member".PIN IS 'PIN 번호';
COMMENT ON COLUMN "fb_member".FOREIGNER IS '내외국인(0:내국인, 1:외국인)';
COMMENT ON COLUMN "fb_member".NAME_ENG IS '영문이름';
COMMENT ON COLUMN "fb_member".WORKPLACE IS '사업장';
COMMENT ON COLUMN "fb_member".TEAM IS '소속팀';
COMMENT ON COLUMN "fb_member".COMP_PHONE IS '회사전화';
COMMENT ON COLUMN "fb_member".BLOODTYPE IS '혈액형';
COMMENT ON COLUMN "fb_member".HEIGHT IS '신장';
COMMENT ON COLUMN "fb_member".WEIGHT IS '체중';
COMMENT ON COLUMN "fb_member".CLOTHES_SIZE IS '의류사이즈';
COMMENT ON COLUMN "fb_member".SHOE_SIZE IS '신발사이즈';
COMMENT ON COLUMN "fb_member".EDU_LEVEL IS '최종학력';
COMMENT ON COLUMN "fb_member".INSTITUTION IS '교육기관';
COMMENT ON COLUMN "fb_member".CAREER IS '지도자 경력';
COMMENT ON COLUMN "fb_member".AMATCH_YN IS 'A매치 20경기 이상 출전선수 여부';
COMMENT ON COLUMN "fb_member".KLEAGUE_YN IS 'K리그 100경기 이상 출전선수 여부';
COMMENT ON COLUMN "fb_member".FLEAGUE_YN IS '해외리그 5년이상 활동선수 여부';
COMMENT ON COLUMN "fb_member".GOOD_YN IS '강습회 성적 우수자 여부';
COMMENT ON COLUMN "fb_member".GOLDEN_YN IS '골든에이지 지역지도자 여부';
COMMENT ON COLUMN "fb_member".KLEADER_YN IS 'KFA 전임지도자/전임강사 경력 여부';
COMMENT ON COLUMN "fb_member".NATIONAL_YN IS '국제대회 참가경력 여부';
COMMENT ON COLUMN "fb_member".FLICENSE_YN IS '해외 축구 자격증 소지자 여부';
COMMENT ON COLUMN "fb_member".PHONE_EXTENSION IS '전화번호내선';
COMMENT ON COLUMN "fb_member".PHONE_TYPE IS '전화타입';
COMMENT ON COLUMN "fb_member".ADDR_TYPE IS '주소타입';
COMMENT ON COLUMN "fb_member".PHONE2 IS '집전화2';
COMMENT ON COLUMN "fb_member".PHONE3 IS '집전화3';
COMMENT ON COLUMN "fb_member".HANDPHONE2 IS '휴대폰번호2';
COMMENT ON COLUMN "fb_member".HANDPHONE3 IS '휴대폰번호3';
COMMENT ON COLUMN "fb_member".MARKETING_YN IS '개인정보 마케팅 활용 동의';
COMMENT ON COLUMN "fb_member".THIRDOFFER_YN IS '개인정보 제3자 제공 동의';
COMMENT ON COLUMN "fb_member".BANK IS '환불은행코드';
COMMENT ON COLUMN "fb_member".ACCOUNT IS '환불계좌번호';
COMMENT ON COLUMN "fb_member".IPIN_DI IS 'IPIN_DI';
COMMENT ON COLUMN "fb_member".IPIN_CI IS 'IPIN_CI';
COMMENT ON COLUMN "fb_member".PASSPORT_NO IS '여권번호';
COMMENT ON COLUMN "fb_member".PASSPORT_DATE IS '여권 만료';
COMMENT ON COLUMN "fb_member".RESNO IS '과거회원번호';
COMMENT ON COLUMN "fb_member".IS_TEMP_PWD IS '임시비밀번호여';
COMMENT ON COLUMN "fb_member".SPECIAL_CODE IS '특이사항';
COMMENT ON COLUMN "fb_member".ETC IS '';
COMMENT ON COLUMN "fb_member".PUSH_YN IS '';
COMMENT ON COLUMN "fb_member".PUSH_MAC_ADRESS IS '';
COMMENT ON COLUMN "fb_member".PUSH_DEVICE IS '';
COMMENT ON COLUMN "fb_member".SMS_RECEIVE_DENIED IS 'SMS수신 거부/해제 (Y 거부 ,null 해제)';
COMMENT ON COLUMN "fb_member".SMS_RECEIVE_DENIED_LUSERID IS 'SMS수신 거부/해제 처리자 (처리한 userid)';
COMMENT ON COLUMN "fb_member".SMS_RECEIVE_DENIED_LDATE IS 'SMS수신 거부/해제 날짜 (처리한 날짜)';
COMMENT ON COLUMN "fb_member".LEADER_YN IS '(회원구분)지도자 여부';
COMMENT ON COLUMN "fb_member".REFEREE_YN IS '(회원구분)심판 여부';
COMMENT ON TABLE  "fb_membercode" IS '회원관리통합코드';
COMMENT ON COLUMN "fb_membercode".CODE IS '회원관리통합코드';
COMMENT ON COLUMN "fb_membercode".COMP IS '회사코드';
COMMENT ON COLUMN "fb_membercode".PARENT_CODE IS '상위회원관리통합코드';
COMMENT ON COLUMN "fb_membercode".CODE_TYPE IS '구분코드';
COMMENT ON COLUMN "fb_membercode".COMM_CODE IS '회원관리코드';
COMMENT ON COLUMN "fb_membercode"."DEPTH" IS '부서레벨';
COMMENT ON COLUMN "fb_membercode".DISPLAY_ORDER IS '정렬순서';
COMMENT ON COLUMN "fb_membercode".DEPT_MANAGER IS '부서장아이디';
COMMENT ON COLUMN "fb_membercode".CODENM_KR IS '한글코드명';
COMMENT ON COLUMN "fb_membercode".CODENM_EN IS '영문코드명';
COMMENT ON COLUMN "fb_membercode".USERYN IS '사용여부';
COMMENT ON COLUMN "fb_membercode".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_membercode".LDATE IS '수정일';
COMMENT ON TABLE  "fb_member_20180326" IS '회원정보';
COMMENT ON COLUMN "fb_member_20180326".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_member_20180326".PWD IS '비밀번호';
COMMENT ON COLUMN "fb_member_20180326"."NAME" IS '성명';
COMMENT ON COLUMN "fb_member_20180326".GENDER IS '성별';
COMMENT ON COLUMN "fb_member_20180326".BIRTHDAY IS '생년월일';
COMMENT ON COLUMN "fb_member_20180326".POST IS '우편번호';
COMMENT ON COLUMN "fb_member_20180326".ADDR1 IS '주소';
COMMENT ON COLUMN "fb_member_20180326".ADDR2 IS '상세주소';
COMMENT ON COLUMN "fb_member_20180326".HANDPHONE IS '휴대폰번호';
COMMENT ON COLUMN "fb_member_20180326".EMAIL IS '이메일주소';
COMMENT ON COLUMN "fb_member_20180326".SMS_YN IS 'SMS수신동의여부';
COMMENT ON COLUMN "fb_member_20180326".EMAIL_YN IS '이메일수신동의여부';
COMMENT ON COLUMN "fb_member_20180326".COMP IS '회사코드';
COMMENT ON COLUMN "fb_member_20180326".DEPT IS '통합부서코드';
COMMENT ON COLUMN "fb_member_20180326".JIK IS '직급코드';
COMMENT ON COLUMN "fb_member_20180326".CLOSE_YN IS '탈퇴여부';
COMMENT ON COLUMN "fb_member_20180326".CLOSE_CODE IS '탈퇴사유코드';
COMMENT ON COLUMN "fb_member_20180326".CLOSE_ETC IS '탈퇴사유';
COMMENT ON COLUMN "fb_member_20180326".CLOSE_DT IS '탈퇴일';
COMMENT ON COLUMN "fb_member_20180326".LOGIN_FAIL_CNT IS '로그인실패횟수';
COMMENT ON COLUMN "fb_member_20180326".INDATE IS '가입일';
COMMENT ON COLUMN "fb_member_20180326".INUSERID IS '가입자';
COMMENT ON COLUMN "fb_member_20180326".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_member_20180326".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_member_20180326".AUTO_LOGIN IS '자동로그인코드';
COMMENT ON COLUMN "fb_member_20180326".AUTO_LOGIN_KEY IS '자동로그인대칭키';
COMMENT ON COLUMN "fb_member_20180326".PHONE IS '집전화';
COMMENT ON COLUMN "fb_member_20180326".JIKGUN IS '직군';
COMMENT ON COLUMN "fb_member_20180326".JIKJONG IS '직종';
COMMENT ON COLUMN "fb_member_20180326".JIKMU IS '직무';
COMMENT ON COLUMN "fb_member_20180326".ISOUTMEM IS '[미사용]';
COMMENT ON COLUMN "fb_member_20180326".OUTCOMP IS '[미사용]';
COMMENT ON COLUMN "fb_member_20180326".OUTDEPTNM IS '[미사용]';
COMMENT ON COLUMN "fb_member_20180326".OUTJIKNM IS '[미사용]';
COMMENT ON COLUMN "fb_member_20180326".LOGIN_YN IS '로그인가능여부';
COMMENT ON COLUMN "fb_member_20180326".HRD_SUBJIKMU IS '[미사용]';
COMMENT ON COLUMN "fb_member_20180326".MANAGER_GUBUN IS '관리자회원가입여부';
COMMENT ON COLUMN "fb_member_20180326".MANAGER_COMPNM IS '관리자가입회사명';
COMMENT ON COLUMN "fb_member_20180326".STATUS IS '상태 (재직 : 1, 휴직 : 2, 퇴직 : 3)';
COMMENT ON COLUMN "fb_member_20180326".USER_TYPE IS '회원구분';
COMMENT ON COLUMN "fb_member_20180326".PIN IS 'PIN 번호';
COMMENT ON COLUMN "fb_member_20180326".FOREIGNER IS '내외국인(0:내국인, 1:외국인)';
COMMENT ON COLUMN "fb_member_20180326".NAME_ENG IS '영문이름';
COMMENT ON COLUMN "fb_member_20180326".WORKPLACE IS '사업장';
COMMENT ON COLUMN "fb_member_20180326".TEAM IS '소속팀';
COMMENT ON COLUMN "fb_member_20180326".COMP_PHONE IS '회사전화';
COMMENT ON COLUMN "fb_member_20180326".BLOODTYPE IS '혈액형';
COMMENT ON COLUMN "fb_member_20180326".HEIGHT IS '신장';
COMMENT ON COLUMN "fb_member_20180326".WEIGHT IS '체중';
COMMENT ON COLUMN "fb_member_20180326".CLOTHES_SIZE IS '의류사이즈';
COMMENT ON COLUMN "fb_member_20180326".SHOE_SIZE IS '신발사이즈';
COMMENT ON COLUMN "fb_member_20180326".EDU_LEVEL IS '최종학력';
COMMENT ON COLUMN "fb_member_20180326".INSTITUTION IS '교육기관';
COMMENT ON COLUMN "fb_member_20180326".CAREER IS '지도자 경력';
COMMENT ON COLUMN "fb_member_20180326".AMATCH_YN IS 'A매치 20경기 이상 출전선수 여부';
COMMENT ON COLUMN "fb_member_20180326".KLEAGUE_YN IS 'K리그 100경기 이상 출전선수 여부';
COMMENT ON COLUMN "fb_member_20180326".FLEAGUE_YN IS '해외리그 5년이상 활동선수 여부';
COMMENT ON COLUMN "fb_member_20180326".GOOD_YN IS '강습회 성적 우수자 여부';
COMMENT ON COLUMN "fb_member_20180326".GOLDEN_YN IS '골든에이지 지역지도자 여부';
COMMENT ON COLUMN "fb_member_20180326".KLEADER_YN IS 'KFA 전임지도자/전임강사 경력 여부';
COMMENT ON COLUMN "fb_member_20180326".NATIONAL_YN IS '국제대회 참가경력 여부';
COMMENT ON COLUMN "fb_member_20180326".FLICENSE_YN IS '해외 축구 자격증 소지자 여부';
COMMENT ON COLUMN "fb_member_20180326".PHONE_EXTENSION IS '전화번호내선';
COMMENT ON COLUMN "fb_member_20180326".PHONE_TYPE IS '전화타입';
COMMENT ON COLUMN "fb_member_20180326".ADDR_TYPE IS '주소타입';
COMMENT ON COLUMN "fb_member_20180326".PHONE2 IS '집전화2';
COMMENT ON COLUMN "fb_member_20180326".PHONE3 IS '집전화3';
COMMENT ON COLUMN "fb_member_20180326".HANDPHONE2 IS '휴대폰번호2';
COMMENT ON COLUMN "fb_member_20180326".HANDPHONE3 IS '휴대폰번호3';
COMMENT ON COLUMN "fb_member_20180326".MARKETING_YN IS '개인정보 마케팅 활용 동의';
COMMENT ON COLUMN "fb_member_20180326".THIRDOFFER_YN IS '개인정보 제3자 제공 동의';
COMMENT ON COLUMN "fb_member_20180326".BANK IS '환불은행코드';
COMMENT ON COLUMN "fb_member_20180326".ACCOUNT IS '환불계좌번호';
COMMENT ON COLUMN "fb_member_20180326".IPIN_DI IS 'IPIN_DI';
COMMENT ON COLUMN "fb_member_20180326".IPIN_CI IS 'IPIN_CI';
COMMENT ON COLUMN "fb_member_20180326".PASSPORT_NO IS '여권번호';
COMMENT ON COLUMN "fb_member_20180326".PASSPORT_DATE IS '여권 만료';
COMMENT ON COLUMN "fb_member_20180326".RESNO IS '과거회원번호';
COMMENT ON COLUMN "fb_member_20180326".IS_TEMP_PWD IS '임시비밀번호여';
COMMENT ON COLUMN "fb_member_20180326".SPECIAL_CODE IS '특이사항';
COMMENT ON TABLE  "fb_member_mobile" IS '모바일접속정보';
COMMENT ON COLUMN "fb_member_mobile".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_member_mobile".UUID IS '기기UUID';
COMMENT ON COLUMN "fb_member_mobile".USERID IS '회원아이디';
COMMENT ON COLUMN "fb_member_mobile".TOKEN IS 'TOKEN';
COMMENT ON COLUMN "fb_member_mobile".DEVICE_TYPE IS '디바이스종류';
COMMENT ON COLUMN "fb_member_mobile".USE_YN IS '사용여부';
COMMENT ON COLUMN "fb_member_mobile".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_menu" IS '운영자메뉴정보';
COMMENT ON COLUMN "fb_menu".MENU IS '메뉴코드';
COMMENT ON COLUMN "fb_menu".MENUNM IS '메뉴명';
COMMENT ON COLUMN "fb_menu".LEVELS IS '메뉴레벨';
COMMENT ON COLUMN "fb_menu"."UPPER" IS '상위메뉴코드';
COMMENT ON COLUMN "fb_menu".PGM IS '관련프로그램';
COMMENT ON COLUMN "fb_menu".ISDISPLAY IS '사용여부';
COMMENT ON COLUMN "fb_menu".ORDERS IS '메뉴순서';
COMMENT ON COLUMN "fb_menu".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_menu".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_menu".ISSTEP IS '단계별메뉴사용여부';
COMMENT ON TABLE  "fb_mfmenu" IS '학습창메뉴정보';
COMMENT ON COLUMN "fb_mfmenu".MENU IS '';
COMMENT ON COLUMN "fb_mfmenu".MENUNM IS '';
COMMENT ON COLUMN "fb_mfmenu".URLPATH IS '';
COMMENT ON COLUMN "fb_mfmenu".ISMAIN IS '';
COMMENT ON COLUMN "fb_mfmenu".ORD IS '';
COMMENT ON COLUMN "fb_mfmenu".LUSERID IS '';
COMMENT ON COLUMN "fb_mfmenu".LDATE IS '';
COMMENT ON TABLE  "fb_mfmenu_subj" IS '과정학습창메뉴맵핑정보';
COMMENT ON COLUMN "fb_mfmenu_subj".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_mfmenu_subj".MENU IS '메뉴코드';
COMMENT ON COLUMN "fb_mfmenu_subj".ORD IS '순번';
COMMENT ON COLUMN "fb_mfmenu_subj".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_mfmenu_subj".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_mfmenu_subj".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_mfmenu_subj".INDATE IS '등록일';
COMMENT ON TABLE  "fb_oath" IS '';
COMMENT ON COLUMN "fb_oath".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_oath".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_oath".USERID IS '통합사번';
COMMENT ON COLUMN "fb_oath".INDATE IS '서약일';
COMMENT ON COLUMN "fb_oath".INUSERID IS '서약자';
COMMENT ON COLUMN "fb_oath".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_oath".LUSERID IS '최종수정자';
COMMENT ON TABLE  "fb_oath_agree" IS '';
COMMENT ON COLUMN "fb_oath_agree".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_oath_agree".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_oath_agree".USERID IS '통합사번';
COMMENT ON COLUMN "fb_oath_agree".INDATE IS '동의일';
COMMENT ON COLUMN "fb_oath_agree".INUSERID IS '동의자';
COMMENT ON COLUMN "fb_oath_agree".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_oath_agree".LUSERID IS '최종수정자';
COMMENT ON TABLE  "fb_objatt" IS '오브젝트 속성정보';
COMMENT ON COLUMN "fb_objatt".OID IS '';
COMMENT ON COLUMN "fb_objatt".ATT IS '';
COMMENT ON COLUMN "fb_objatt".SDESC IS '';
COMMENT ON COLUMN "fb_objatt".LUSERID IS '';
COMMENT ON COLUMN "fb_objatt".LDATE IS '';
COMMENT ON TABLE  "fb_object" IS '오브젝트 정보';
COMMENT ON COLUMN "fb_object".OID IS '';
COMMENT ON COLUMN "fb_object".OTYPE IS '';
COMMENT ON COLUMN "fb_object".FILETYPE IS '';
COMMENT ON COLUMN "fb_object".NPAGE IS '';
COMMENT ON COLUMN "fb_object".SDESC IS '';
COMMENT ON COLUMN "fb_object".MASTER IS '';
COMMENT ON COLUMN "fb_object".STARTING IS '';
COMMENT ON COLUMN "fb_object".SERVER IS '';
COMMENT ON COLUMN "fb_object".SUBJ IS '';
COMMENT ON COLUMN "fb_object".PARAMETERSTRING IS '';
COMMENT ON COLUMN "fb_object".IDENTIFIER IS '';
COMMENT ON COLUMN "fb_object".PREREQUISITES IS '';
COMMENT ON COLUMN "fb_object".MASTERYSCORE IS '';
COMMENT ON COLUMN "fb_object".MAXTIMEALLOWED IS '';
COMMENT ON COLUMN "fb_object".TIMELIMITACTION IS '';
COMMENT ON COLUMN "fb_object".SEQUENCE IS '';
COMMENT ON COLUMN "fb_object".THELEVEL IS '';
COMMENT ON COLUMN "fb_object".LUSERID IS '';
COMMENT ON COLUMN "fb_object".LDATE IS '';
COMMENT ON COLUMN "fb_object".OIDNUMERIC IS '';
COMMENT ON COLUMN "fb_object".HIGHOID IS '';
COMMENT ON COLUMN "fb_object".METALOCATION IS '';
COMMENT ON COLUMN "fb_object".SCOLOCATE IS '';
COMMENT ON COLUMN "fb_object".SCOALL IS '';
COMMENT ON COLUMN "fb_object".SCOTITLE IS '';
COMMENT ON COLUMN "fb_object".DATAFROMLMS IS '';
COMMENT ON COLUMN "fb_object".PRODUCER IS '';
COMMENT ON COLUMN "fb_object".INUSERID IS '';
COMMENT ON COLUMN "fb_object".CPSEQ IS '';
COMMENT ON TABLE  "fb_payment" IS '결제';
COMMENT ON COLUMN "fb_payment".ORDR_IDXX IS '주문번호';
COMMENT ON COLUMN "fb_payment".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_payment".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_payment".USERID IS '통합사번';
COMMENT ON COLUMN "fb_payment".LICENSE_NO IS '자격증번';
COMMENT ON COLUMN "fb_payment".REQ_TX IS '요청구분';
COMMENT ON COLUMN "fb_payment".USE_PAY_METHOD IS '결제방법';
COMMENT ON COLUMN "fb_payment".GOOD_NAME IS '상품명';
COMMENT ON COLUMN "fb_payment".BUYR_NAME IS '주문자명';
COMMENT ON COLUMN "fb_payment".BUYR_TEL1 IS '주문자 전화번호';
COMMENT ON COLUMN "fb_payment".BUYR_TEL2 IS '주문자 핸드폰번호';
COMMENT ON COLUMN "fb_payment".BUYR_MAIL IS '주문자Email주소';
COMMENT ON COLUMN "fb_payment".TNO IS 'KCP거래고유번호';
COMMENT ON COLUMN "fb_payment".RES_CD IS '응답코드';
COMMENT ON COLUMN "fb_payment".RES_MSG IS '응답 메세지';
COMMENT ON COLUMN "fb_payment".APP_TIME IS '승인시간';
COMMENT ON COLUMN "fb_payment".AMOUNT IS '실거래금액';
COMMENT ON COLUMN "fb_payment".TOTAL_AMOUNT IS '복합결재 총 거래금액';
COMMENT ON COLUMN "fb_payment".COUPON_MNY IS '쿠폰금액';
COMMENT ON COLUMN "fb_payment".CARD_CD IS '신용카드코드';
COMMENT ON COLUMN "fb_payment".CARD_NAME IS '신용카드명';
COMMENT ON COLUMN "fb_payment".CARD_NO IS '신용카드번호';
COMMENT ON COLUMN "fb_payment".VNUM_NO IS 'ARS가상번호';
COMMENT ON COLUMN "fb_payment".EXPR_DT IS 'ARS유효기간';
COMMENT ON COLUMN "fb_payment".ARS_TRADE_NO IS 'ARS상품등록번호';
COMMENT ON COLUMN "fb_payment".APP_NO IS '신용카드승인번호';
COMMENT ON COLUMN "fb_payment".NOINF IS '신용카드 무이자 여부';
COMMENT ON COLUMN "fb_payment".NOINF_TYPE IS '무이자이벤트주체(CARD,SHOP)';
COMMENT ON COLUMN "fb_payment".QUOTA IS '신용카드 할부개월';
COMMENT ON COLUMN "fb_payment".CARD_MNY IS '카드결제금액';
COMMENT ON COLUMN "fb_payment".PARTCANC_YN IS '부분취소 가능유무';
COMMENT ON COLUMN "fb_payment".CARD_BIN_TYPE_01 IS '카드구분1';
COMMENT ON COLUMN "fb_payment".CARD_BIN_TYPE_02 IS '카드구분2';
COMMENT ON COLUMN "fb_payment".ISP_ISSUER_CD IS 'ISP계열사코드';
COMMENT ON COLUMN "fb_payment".ISP_ISSUER_NM IS 'ISP계열사명';
COMMENT ON COLUMN "fb_payment".BANK_CD IS '은행코드';
COMMENT ON COLUMN "fb_payment".BANK_NAME IS '은행명';
COMMENT ON COLUMN "fb_payment".BK_MNY IS '계좌이체결제금액';
COMMENT ON COLUMN "fb_payment".BANKNAME IS '입금은행명';
COMMENT ON COLUMN "fb_payment".BANKCODE IS '계좌이체은행코드';
COMMENT ON COLUMN "fb_payment".ACCOUNT IS '입금계좌번호';
COMMENT ON COLUMN "fb_payment".VA_DATE IS '가상계좌입금마감시간';
COMMENT ON COLUMN "fb_payment".DEPOSITOR IS '입금자명';
COMMENT ON COLUMN "fb_payment".VAN_CD IS '휴대폰결제사 코드';
COMMENT ON COLUMN "fb_payment".VAN_ID IS '실물/컨텐츠구분';
COMMENT ON COLUMN "fb_payment".COMMID IS '통신사코드';
COMMENT ON COLUMN "fb_payment".MOBILE_NO IS '휴대폰번호';
COMMENT ON COLUMN "fb_payment".PNT_AMOUNT IS '적립금액 OR 사용금액';
COMMENT ON COLUMN "fb_payment".PNT_ISSUE IS '결제포인트사코드';
COMMENT ON COLUMN "fb_payment".PNT_APP_TIME IS '승인시간';
COMMENT ON COLUMN "fb_payment".PNT_APP_NO IS '승인번호';
COMMENT ON COLUMN "fb_payment".PNT_RECEIPT_GUBN IS '현금영수증여부';
COMMENT ON COLUMN "fb_payment".ADD_PNT IS '발생 포인트';
COMMENT ON COLUMN "fb_payment".USE_PNT IS '사용가능 포인트';
COMMENT ON COLUMN "fb_payment".RSV_PNT IS '총 누적포인트';
COMMENT ON COLUMN "fb_payment".SHOP_USER_ID IS '가맹점 고객아이디';
COMMENT ON COLUMN "fb_payment".TK_MNY IS '상품권 결제금액';
COMMENT ON COLUMN "fb_payment".TK_VAN_CODE IS '발급사코드';
COMMENT ON COLUMN "fb_payment".TK_APP_NO IS '상품권승인번호';
COMMENT ON COLUMN "fb_payment".TK_APP_TIME IS '상품권승인시간';
COMMENT ON COLUMN "fb_payment".CASH_YN IS '현금영수증등록여부';
COMMENT ON COLUMN "fb_payment".CASH_TR_CODE IS '현금영수증발행구분';
COMMENT ON COLUMN "fb_payment".CASH_ID_INFO IS '현금영수증등록번호';
COMMENT ON COLUMN "fb_payment".CASH_AUTHNO IS '현금영수증승인번호';
COMMENT ON COLUMN "fb_payment".CASH_NO IS '현금영수증거래번호';
COMMENT ON COLUMN "fb_payment".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_payment".INDATE IS '등록일';
COMMENT ON COLUMN "fb_payment".MOD_SUB_TYPE IS '환불타입(전체,부분,복합과세 부분)';
COMMENT ON COLUMN "fb_payment".MOD_COMP_TYPE IS '인증타입(계좌,계좌+실명)';
COMMENT ON COLUMN "fb_payment".MOD_DESC IS '환불사유';
COMMENT ON COLUMN "fb_payment".MOD_ACCOUNT IS '환불계좌';
COMMENT ON COLUMN "fb_payment".MOD_DEPOSITOR IS '환불계좌주명';
COMMENT ON COLUMN "fb_payment".MOD_BANKCODE IS '환불은행코드';
COMMENT ON COLUMN "fb_payment".MOD_SOCNAME IS '환불요청자명(실명인증)';
COMMENT ON COLUMN "fb_payment".MOD_SOCNO IS '요청자주민번호(실명인증)';
COMMENT ON COLUMN "fb_payment".MOD_MNY IS '환불요청금액(부분환불)';
COMMENT ON COLUMN "fb_payment".REM_MNY IS '환불전금액(부분환불)';
COMMENT ON COLUMN "fb_payment".TAX_FLAG IS '복합과세구분(복합과세환불)';
COMMENT ON COLUMN "fb_payment".MOD_TAX_MNY IS '과세금액(복합과세환불)';
COMMENT ON COLUMN "fb_payment".MOD_FREE_MNY IS '비과세금액(복합과세환불)';
COMMENT ON COLUMN "fb_payment".MOD_VAT_MNY IS '부가세금액(복합과세환불)';
COMMENT ON TABLE  "fb_payment_20180326" IS '결제';
COMMENT ON COLUMN "fb_payment_20180326".ORDR_IDXX IS '주문번호';
COMMENT ON COLUMN "fb_payment_20180326".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_payment_20180326".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_payment_20180326".USERID IS '통합사번';
COMMENT ON COLUMN "fb_payment_20180326".LICENSE_NO IS '자격증번';
COMMENT ON COLUMN "fb_payment_20180326".REQ_TX IS '요청구분';
COMMENT ON COLUMN "fb_payment_20180326".USE_PAY_METHOD IS '결제방법';
COMMENT ON COLUMN "fb_payment_20180326".GOOD_NAME IS '상품명';
COMMENT ON COLUMN "fb_payment_20180326".BUYR_NAME IS '주문자명';
COMMENT ON COLUMN "fb_payment_20180326".BUYR_TEL1 IS '주문자 전화번호';
COMMENT ON COLUMN "fb_payment_20180326".BUYR_TEL2 IS '주문자 핸드폰번호';
COMMENT ON COLUMN "fb_payment_20180326".BUYR_MAIL IS '주문자Email주소';
COMMENT ON COLUMN "fb_payment_20180326".TNO IS 'KCP거래고유번호';
COMMENT ON COLUMN "fb_payment_20180326".RES_CD IS '응답코드';
COMMENT ON COLUMN "fb_payment_20180326".RES_MSG IS '응답 메세지';
COMMENT ON COLUMN "fb_payment_20180326".APP_TIME IS '승인시간';
COMMENT ON COLUMN "fb_payment_20180326".AMOUNT IS '실거래금액';
COMMENT ON COLUMN "fb_payment_20180326".TOTAL_AMOUNT IS '복합결재 총 거래금액';
COMMENT ON COLUMN "fb_payment_20180326".COUPON_MNY IS '쿠폰금액';
COMMENT ON COLUMN "fb_payment_20180326".CARD_CD IS '신용카드코드';
COMMENT ON COLUMN "fb_payment_20180326".CARD_NAME IS '신용카드명';
COMMENT ON COLUMN "fb_payment_20180326".CARD_NO IS '신용카드번호';
COMMENT ON COLUMN "fb_payment_20180326".VNUM_NO IS 'ARS가상번호';
COMMENT ON COLUMN "fb_payment_20180326".EXPR_DT IS 'ARS유효기간';
COMMENT ON COLUMN "fb_payment_20180326".ARS_TRADE_NO IS 'ARS상품등록번호';
COMMENT ON COLUMN "fb_payment_20180326".APP_NO IS '신용카드승인번호';
COMMENT ON COLUMN "fb_payment_20180326".NOINF IS '신용카드 무이자 여부';
COMMENT ON COLUMN "fb_payment_20180326".NOINF_TYPE IS '무이자이벤트주체(CARD,SHOP)';
COMMENT ON COLUMN "fb_payment_20180326".QUOTA IS '신용카드 할부개월';
COMMENT ON COLUMN "fb_payment_20180326".CARD_MNY IS '카드결제금액';
COMMENT ON COLUMN "fb_payment_20180326".PARTCANC_YN IS '부분취소 가능유무';
COMMENT ON COLUMN "fb_payment_20180326".CARD_BIN_TYPE_01 IS '카드구분1';
COMMENT ON COLUMN "fb_payment_20180326".CARD_BIN_TYPE_02 IS '카드구분2';
COMMENT ON COLUMN "fb_payment_20180326".ISP_ISSUER_CD IS 'ISP계열사코드';
COMMENT ON COLUMN "fb_payment_20180326".ISP_ISSUER_NM IS 'ISP계열사명';
COMMENT ON COLUMN "fb_payment_20180326".BANK_CD IS '은행코드';
COMMENT ON COLUMN "fb_payment_20180326".BANK_NAME IS '은행명';
COMMENT ON COLUMN "fb_payment_20180326".BK_MNY IS '계좌이체결제금액';
COMMENT ON COLUMN "fb_payment_20180326".BANKNAME IS '입금은행명';
COMMENT ON COLUMN "fb_payment_20180326".BANKCODE IS '계좌이체은행코드';
COMMENT ON COLUMN "fb_payment_20180326".ACCOUNT IS '입금계좌번호';
COMMENT ON COLUMN "fb_payment_20180326".VA_DATE IS '가상계좌입금마감시간';
COMMENT ON COLUMN "fb_payment_20180326".DEPOSITOR IS '입금자명';
COMMENT ON COLUMN "fb_payment_20180326".VAN_CD IS '휴대폰결제사 코드';
COMMENT ON COLUMN "fb_payment_20180326".VAN_ID IS '실물/컨텐츠구분';
COMMENT ON COLUMN "fb_payment_20180326".COMMID IS '통신사코드';
COMMENT ON COLUMN "fb_payment_20180326".MOBILE_NO IS '휴대폰번호';
COMMENT ON COLUMN "fb_payment_20180326".PNT_AMOUNT IS '적립금액 OR 사용금액';
COMMENT ON COLUMN "fb_payment_20180326".PNT_ISSUE IS '결제포인트사코드';
COMMENT ON COLUMN "fb_payment_20180326".PNT_APP_TIME IS '승인시간';
COMMENT ON COLUMN "fb_payment_20180326".PNT_APP_NO IS '승인번호';
COMMENT ON COLUMN "fb_payment_20180326".PNT_RECEIPT_GUBN IS '현금영수증여부';
COMMENT ON COLUMN "fb_payment_20180326".ADD_PNT IS '발생 포인트';
COMMENT ON COLUMN "fb_payment_20180326".USE_PNT IS '사용가능 포인트';
COMMENT ON COLUMN "fb_payment_20180326".RSV_PNT IS '총 누적포인트';
COMMENT ON COLUMN "fb_payment_20180326".SHOP_USER_ID IS '가맹점 고객아이디';
COMMENT ON COLUMN "fb_payment_20180326".TK_MNY IS '상품권 결제금액';
COMMENT ON COLUMN "fb_payment_20180326".TK_VAN_CODE IS '발급사코드';
COMMENT ON COLUMN "fb_payment_20180326".TK_APP_NO IS '상품권승인번호';
COMMENT ON COLUMN "fb_payment_20180326".TK_APP_TIME IS '상품권승인시간';
COMMENT ON COLUMN "fb_payment_20180326".CASH_YN IS '현금영수증등록여부';
COMMENT ON COLUMN "fb_payment_20180326".CASH_TR_CODE IS '현금영수증발행구분';
COMMENT ON COLUMN "fb_payment_20180326".CASH_ID_INFO IS '현금영수증등록번호';
COMMENT ON COLUMN "fb_payment_20180326".CASH_AUTHNO IS '현금영수증승인번호';
COMMENT ON COLUMN "fb_payment_20180326".CASH_NO IS '현금영수증거래번호';
COMMENT ON COLUMN "fb_payment_20180326".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_payment_20180326".INDATE IS '등록일';
COMMENT ON COLUMN "fb_payment_20180326".MOD_SUB_TYPE IS '환불타입(전체,부분,복합과세 부분)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_COMP_TYPE IS '인증타입(계좌,계좌+실명)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_DESC IS '환불사유';
COMMENT ON COLUMN "fb_payment_20180326".MOD_ACCOUNT IS '환불계좌';
COMMENT ON COLUMN "fb_payment_20180326".MOD_DEPOSITOR IS '환불계좌주명';
COMMENT ON COLUMN "fb_payment_20180326".MOD_BANKCODE IS '환불은행코드';
COMMENT ON COLUMN "fb_payment_20180326".MOD_SOCNAME IS '환불요청자명(실명인증)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_SOCNO IS '요청자주민번호(실명인증)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_MNY IS '환불요청금액(부분환불)';
COMMENT ON COLUMN "fb_payment_20180326".REM_MNY IS '환불전금액(부분환불)';
COMMENT ON COLUMN "fb_payment_20180326".TAX_FLAG IS '복합과세구분(복합과세환불)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_TAX_MNY IS '과세금액(복합과세환불)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_FREE_MNY IS '비과세금액(복합과세환불)';
COMMENT ON COLUMN "fb_payment_20180326".MOD_VAT_MNY IS '부가세금액(복합과세환불)';
COMMENT ON TABLE  "fb_player_history" IS '지도자선수경력 IF';
COMMENT ON COLUMN "fb_player_history".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_player_history".SEQ IS '번호';
COMMENT ON COLUMN "fb_player_history".TEAM IS '소속팀';
COMMENT ON COLUMN "fb_player_history"."STATE" IS '상태';
COMMENT ON COLUMN "fb_player_history".SDATE IS '처리일';
COMMENT ON COLUMN "fb_player_history".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_player_history".INDATE IS '등록일';
COMMENT ON COLUMN "fb_player_history".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_player_history".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_process" IS '프로세스정보';
COMMENT ON COLUMN "fb_process".PROCESS IS '';
COMMENT ON COLUMN "fb_process".PROCESSNM IS '';
COMMENT ON COLUMN "fb_process".MENU IS '';
COMMENT ON COLUMN "fb_process".PGM IS '';
COMMENT ON COLUMN "fb_process".ISUSE IS '';
COMMENT ON COLUMN "fb_process".LUSERID IS '';
COMMENT ON COLUMN "fb_process".LDATE IS '';
COMMENT ON COLUMN "fb_process".PROCESS_EXP IS '';
COMMENT ON TABLE  "fb_progress" IS '학습진도정보';
COMMENT ON COLUMN "fb_progress".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_progress".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_progress".USERID IS '통합사번';
COMMENT ON COLUMN "fb_progress"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_progress".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_progress".FIRST_DT IS '최초학습접속일시';
COMMENT ON COLUMN "fb_progress".LAST_DT IS '최초학습종료일시';
COMMENT ON COLUMN "fb_progress".FINAL_CNT IS '학습완료횟수';
COMMENT ON COLUMN "fb_progress".LAST_PATH IS '마지막학습위치';
COMMENT ON COLUMN "fb_progress".LAST_PAGENO IS '마지막페이지번호';
COMMENT ON COLUMN "fb_progress".LUSERID IS '최종수정일';
COMMENT ON COLUMN "fb_progress".LDATE IS '최종수정자';
COMMENT ON COLUMN "fb_progress".STUDY_TIME IS '총합습시간(분)';
COMMENT ON TABLE  "fb_progress_log" IS '학습자 학습로그';
COMMENT ON COLUMN "fb_progress_log".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_progress_log".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_progress_log".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_progress_log".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_progress_log"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_progress_log".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_progress_log".LDATE IS '학습시작시간';
COMMENT ON COLUMN "fb_progress_log".CHKDATE IS '마지막진도체크시간';
COMMENT ON COLUMN "fb_progress_log".DEVICE IS '학습기기';
COMMENT ON TABLE  "fb_progress_mobile" IS '모바일 학습 진도 체크';
COMMENT ON COLUMN "fb_progress_mobile".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_progress_mobile".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_progress_mobile".USERID IS '통합사번';
COMMENT ON COLUMN "fb_progress_mobile"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_progress_mobile".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_progress_mobile".CONTENTNO IS '컨텐츠코드';
COMMENT ON COLUMN "fb_progress_mobile".ATTEND_YN IS '학습완료여부';
COMMENT ON COLUMN "fb_progress_mobile".LDATE IS '최초학습완료시간';
COMMENT ON COLUMN "fb_progress_mobile".LAST_PLAY_AT IS '마지막재생시간';
COMMENT ON TABLE  "fb_propose" IS '수강신청정보';
COMMENT ON COLUMN "fb_propose".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_propose".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_propose".USERID IS '통합사번';
COMMENT ON COLUMN "fb_propose"."STATE" IS '학습자상태코드';
COMMENT ON COLUMN "fb_propose".STATE_USERID IS '처리자통합사번';
COMMENT ON COLUMN "fb_propose".STATE_DATE IS '처리일자';
COMMENT ON COLUMN "fb_propose".REJECT_TXT IS '반려사유';
COMMENT ON COLUMN "fb_propose".CHANGE_TXT IS '차수변경사유';
COMMENT ON COLUMN "fb_propose".OLD_SUBJSEQ IS '변경전과정차수';
COMMENT ON COLUMN "fb_propose".INDATE IS '신청일자';
COMMENT ON COLUMN "fb_propose".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_propose".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_propose".RESNO IS '주민번호';
COMMENT ON COLUMN "fb_propose".HANDPHONE IS '핸드폰번호';
COMMENT ON COLUMN "fb_propose".PHONE IS '전화번호';
COMMENT ON COLUMN "fb_propose".DELIVERY_GUBUN IS '배송지_국내외구분';
COMMENT ON COLUMN "fb_propose".DELIVERY_LOC IS '배송지_국가코드';
COMMENT ON COLUMN "fb_propose".DELIVERY_ZIP IS '배송지_우편번호';
COMMENT ON COLUMN "fb_propose".DELIVERY_ADDR1 IS '배송지_주소';
COMMENT ON COLUMN "fb_propose".DELIVERY_ADDR2 IS '배송지_주소상세';
COMMENT ON COLUMN "fb_propose".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_propose".NOSHOW_TXT IS '불참사유';
COMMENT ON COLUMN "fb_propose".PAYMENT_YN IS '결제완료여부';
COMMENT ON COLUMN "fb_propose".PERMIT_YN IS '2차승인여부';
COMMENT ON COLUMN "fb_propose".ORDR_IDXX IS '주문번호';
COMMENT ON COLUMN "fb_propose".GRGUBUN IS '과정그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_pwd_history" IS '최종수정일';
COMMENT ON COLUMN "fb_pwd_history".USERID IS '사용자아이디';
COMMENT ON COLUMN "fb_pwd_history".SEQ IS '시퀀스';
COMMENT ON COLUMN "fb_pwd_history".PWD IS '비밀번호';
COMMENT ON COLUMN "fb_pwd_history".TEMP_YN IS '임시비밀번호여부';
COMMENT ON COLUMN "fb_pwd_history".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_pwd_history".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_refund_master" IS '환불마스터';
COMMENT ON COLUMN "fb_refund_master".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_refund_master".SUBJGUBUN IS '과정구분';
COMMENT ON COLUMN "fb_refund_master"."YEAR" IS '년도';
COMMENT ON COLUMN "fb_refund_master".REFUND_PER IS '환불퍼센트';
COMMENT ON COLUMN "fb_refund_master".START_DATE IS '환불시작일';
COMMENT ON COLUMN "fb_refund_master".END_DATE IS '환불종료일';
COMMENT ON COLUMN "fb_refund_master".USE_YN IS '사용여부';
COMMENT ON TABLE  "fb_report_result" IS '과정차수 과제정보';
COMMENT ON COLUMN "fb_report_result".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_report_result".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_report_result".REPORT IS '과제번호';
COMMENT ON COLUMN "fb_report_result".USERID IS '통합사번';
COMMENT ON COLUMN "fb_report_result".TITLE IS '과제명';
COMMENT ON COLUMN "fb_report_result".CONTENTS IS '내용';
COMMENT ON COLUMN "fb_report_result".REALFILENAME IS '과제실제파일명';
COMMENT ON COLUMN "fb_report_result".SAVEFILENAME IS '과제저장파일명';
COMMENT ON COLUMN "fb_report_result".TUTORID IS '채점자아이디';
COMMENT ON COLUMN "fb_report_result".MARK_DATE IS '채점일';
COMMENT ON COLUMN "fb_report_result".MARK_YN IS '채점상태';
COMMENT ON COLUMN "fb_report_result".SCORE IS '평가점수';
COMMENT ON COLUMN "fb_report_result".NOTE IS '평가의견';
COMMENT ON COLUMN "fb_report_result"."STATE" IS '상태코드';
COMMENT ON COLUMN "fb_report_result".REPORT_DATE IS '과제체출일';
COMMENT ON COLUMN "fb_report_result".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_report_result".INDATE IS '등록일';
COMMENT ON COLUMN "fb_report_result".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_report_result".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_repository_file" IS '통합게시판첨부파일정보';
COMMENT ON COLUMN "fb_repository_file".FILESEQ IS '파일번호';
COMMENT ON COLUMN "fb_repository_file".CNT IS '다운로드수';
COMMENT ON COLUMN "fb_repository_file".REALFILENAME IS '실제파일명';
COMMENT ON COLUMN "fb_repository_file".SAVEFILENAME IS '저장파일명';
COMMENT ON COLUMN "fb_repository_file".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_repository_file".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_repository_file".SEQ IS '글번호';
COMMENT ON COLUMN "fb_repository_file".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_repository_file".FILESIZE IS '파일크기';
COMMENT ON COLUMN "fb_repository_file".SUMMARY IS '메모';
COMMENT ON TABLE  "fb_retest" IS '재시험 테이블';
COMMENT ON COLUMN "fb_retest".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_retest".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_retest".USERID IS '학습자아이디';
COMMENT ON COLUMN "fb_retest".RETESTSEQ IS '재시험번호';
COMMENT ON COLUMN "fb_retest".PRACTICAL IS '실기';
COMMENT ON COLUMN "fb_retest".RESEARCH IS '연구과제';
COMMENT ON COLUMN "fb_retest".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_retest".INDATE IS '등록일';
COMMENT ON COLUMN "fb_retest".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_retest".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_return_url" IS '';
COMMENT ON COLUMN "fb_return_url".SDT IS '시작일';
COMMENT ON COLUMN "fb_return_url".EDT IS '종료일';
COMMENT ON COLUMN "fb_return_url".MENU_NAME IS 'Return될 메뉴명';
COMMENT ON COLUMN "fb_return_url".URL IS 'Return될 URL';
COMMENT ON TABLE  "fb_senddate_temp" IS '';
COMMENT ON COLUMN "fb_senddate_temp".SUBJ IS '';
COMMENT ON COLUMN "fb_senddate_temp"."YEAR" IS '';
COMMENT ON COLUMN "fb_senddate_temp".SUBJSEQ IS '';
COMMENT ON COLUMN "fb_senddate_temp".USERID IS '';
COMMENT ON COLUMN "fb_senddate_temp".KFA_NO IS '';
COMMENT ON COLUMN "fb_senddate_temp".SENDDATE IS '';
COMMENT ON TABLE  "fb_send_history" IS '전송상태';
COMMENT ON COLUMN "fb_send_history".GUBUN IS '구분';
COMMENT ON COLUMN "fb_send_history".FORM_ID IS '전송포멧ID';
COMMENT ON COLUMN "fb_send_history".SEND_SEQ IS '발송Seq';
COMMENT ON COLUMN "fb_send_history".SEND_TITLE IS '전송제목';
COMMENT ON COLUMN "fb_send_history".SEND_CONTENTS IS '전송내용';
COMMENT ON COLUMN "fb_send_history".SENDER_ID IS '발송자ID';
COMMENT ON COLUMN "fb_send_history".SEND_INFO IS '발송정보';
COMMENT ON COLUMN "fb_send_history".RECEIVER_ID IS '수신자ID';
COMMENT ON COLUMN "fb_send_history".RECEIVE_INFO IS '수신정보';
COMMENT ON COLUMN "fb_send_history".SEND_DATE IS '전송일';
COMMENT ON COLUMN "fb_send_history"."STATE" IS '전송상태';
COMMENT ON TABLE  "fb_send_main" IS '기본발신자메일주소';
COMMENT ON COLUMN "fb_send_main".GUBUN IS '구분';
COMMENT ON COLUMN "fb_send_main".FORM_ID IS '전송포멧ID';
COMMENT ON COLUMN "fb_send_main".TITLE IS '제목';
COMMENT ON COLUMN "fb_send_main".CONTENTS IS '내용';
COMMENT ON COLUMN "fb_send_main".LUSERID IS '최종수정자ID';
COMMENT ON COLUMN "fb_send_main".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_send_main".GUBUNNM IS '폼구분명';
COMMENT ON COLUMN "fb_send_main".EMAIL IS '기본발신자메일주소';
COMMENT ON TABLE  "fb_send_param" IS '파라미터 설명';
COMMENT ON COLUMN "fb_send_param".GUBUN IS '구분';
COMMENT ON COLUMN "fb_send_param".FORM_ID IS '전송포멧ID';
COMMENT ON COLUMN "fb_send_param".PARAM_NM IS '파라미터명';
COMMENT ON COLUMN "fb_send_param".PARAM_EXP IS '파라미터 설명';
COMMENT ON TABLE  "fb_stold" IS '수료정보';
COMMENT ON COLUMN "fb_stold".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_stold".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_stold".USERID IS '통합사번';
COMMENT ON COLUMN "fb_stold".SCORE IS '총취득점수';
COMMENT ON COLUMN "fb_stold".STOLD_YN IS '수료여부';
COMMENT ON COLUMN "fb_stold".STOLD_CD IS '미수료사유코드';
COMMENT ON COLUMN "fb_stold".STOLD_TXT IS '미수료사유';
COMMENT ON COLUMN "fb_stold".STOLD_USERID IS '수료처리자통합사번';
COMMENT ON COLUMN "fb_stold".STOLD_DATE IS '수료일자';
COMMENT ON COLUMN "fb_stold".CERTNO IS '수료증번호';
COMMENT ON COLUMN "fb_stold".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_stold".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_stold".COMP_NO IS '';
COMMENT ON COLUMN "fb_stold".LIMIT_PROMOTION IS '';
COMMENT ON TABLE  "fb_student" IS '수강생정보';
COMMENT ON COLUMN "fb_student".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_student".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_student".USERID IS '통합사번ID';
COMMENT ON COLUMN "fb_student"."CLASS" IS '반';
COMMENT ON COLUMN "fb_student".SCORE IS '총취득점';
COMMENT ON COLUMN "fb_student".TEST1 IS '실기1 (C: 실기)';
COMMENT ON COLUMN "fb_student".TEST2 IS '실기2';
COMMENT ON COLUMN "fb_student".TEST3 IS '실기3';
COMMENT ON COLUMN "fb_student"."SPECIFIC" IS '이론1 (C: 필기)';
COMMENT ON COLUMN "fb_student"."GENERAL" IS '이론2';
COMMENT ON COLUMN "fb_student".DISSERTATION IS '논문';
COMMENT ON COLUMN "fb_student".GRADES IS '등급';
COMMENT ON COLUMN "fb_student".GOOD_YN IS '성적우수';
COMMENT ON COLUMN "fb_student"."STATE" IS '합격여부';
COMMENT ON COLUMN "fb_student".TUTOR_REMARK IS '강사평가';
COMMENT ON COLUMN "fb_student".ISGOYONG IS '고용여부';
COMMENT ON COLUMN "fb_student".INUSERID IS '등록자ID';
COMMENT ON COLUMN "fb_student".INDATE IS '등록일';
COMMENT ON COLUMN "fb_student".LUSERID IS '최종수정자ID';
COMMENT ON COLUMN "fb_student".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_student".LAWS IS '경기규칙';
COMMENT ON COLUMN "fb_student".PERFORMANCE IS '시범능력 (C: 경기력)';
COMMENT ON COLUMN "fb_student".ORGANISATION IS '조직구성능력';
COMMENT ON COLUMN "fb_student".COMMUNICATION IS '지도능력 (C: 구두)';
COMMENT ON COLUMN "fb_student".SHOOT IS '슈팅';
COMMENT ON COLUMN "fb_student".DRIBBLE IS '드리블';
COMMENT ON COLUMN "fb_student".PASS IS '패스';
COMMENT ON COLUMN "fb_student".JUGGLING IS '저글링';
COMMENT ON COLUMN "fb_student".LIMIT_PROMOTION IS '';
COMMENT ON COLUMN "fb_student".GRGUBUN IS '과정그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_student_grade" IS '수강생수료점수정보';
COMMENT ON COLUMN "fb_student_grade".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_student_grade".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_student_grade".USERID IS '통합사번';
COMMENT ON COLUMN "fb_student_grade".GRADE IS '수료기준코드';
COMMENT ON COLUMN "fb_student_grade".SCORE IS '가중치비적용점수';
COMMENT ON COLUMN "fb_student_grade".PER_SCORE IS '가중치적용점수';
COMMENT ON COLUMN "fb_student_grade".MARK_YN IS '추가수료정보채점여부';
COMMENT ON COLUMN "fb_student_grade".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_student_grade".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subj" IS '과정정보';
COMMENT ON COLUMN "fb_subj".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subj".SUBJ_TYPE IS '교육형태';
COMMENT ON COLUMN "fb_subj".SUBJNM IS '과정명';
COMMENT ON COLUMN "fb_subj".SUBJ_RFILE IS '썸네일이미지실제파일명';
COMMENT ON COLUMN "fb_subj".SUBJ_SFILE IS '썸네일이미지저장파일명';
COMMENT ON COLUMN "fb_subj".SUBJCLASS IS '컨텐츠분류';
COMMENT ON COLUMN "fb_subj".CONTENT_TYPE IS '컨텐츠타입';
COMMENT ON COLUMN "fb_subj".ISRECOM IS '추천과정여부';
COMMENT ON COLUMN "fb_subj".ISREQUI IS '필수과정여부';
COMMENT ON COLUMN "fb_subj".MOBILE_YN IS '모바일병행과정여부';
COMMENT ON COLUMN "fb_subj".CLOSE_YN IS '폐강여부';
COMMENT ON COLUMN "fb_subj".EDU_DAY IS '교육일';
COMMENT ON COLUMN "fb_subj".EDU_TIME IS '교육시간';
COMMENT ON COLUMN "fb_subj".SUBJ_USERID IS '운영자담당자아이디';
COMMENT ON COLUMN "fb_subj".EDU_PRICE IS '교육비';
COMMENT ON COLUMN "fb_subj".AGENCYNM IS '교육기관명';
COMMENT ON COLUMN "fb_subj".GOYONG_YN IS '고용보험여부';
COMMENT ON COLUMN "fb_subj".GOYONG_PRICE_MAJOR IS '고용보험 대기업 1인환급금';
COMMENT ON COLUMN "fb_subj".GOYONG_PRICE_MIJOR IS '고용보험 중소기업 1인환급금';
COMMENT ON COLUMN "fb_subj".CONTENT_COMP IS '컨텐츠 제작회사';
COMMENT ON COLUMN "fb_subj".LINK_COMP IS '컨텐츠 소유회사';
COMMENT ON COLUMN "fb_subj".LINK_EDU IS '링크과정 학습URL';
COMMENT ON COLUMN "fb_subj".LINK_PREVIEW IS '링크과정 미리보기URL';
COMMENT ON COLUMN "fb_subj".LINK_LESSON IS '링크과정 학습목차URL';
COMMENT ON COLUMN "fb_subj".SUBJ_PURPOSE IS '학습목적';
COMMENT ON COLUMN "fb_subj".SUBJ_CONTENT IS '학습내용';
COMMENT ON COLUMN "fb_subj".SUBJ_TARGET IS '학습대상';
COMMENT ON COLUMN "fb_subj".SUBJ_ETC IS '기타';
COMMENT ON COLUMN "fb_subj".ADMIN_MEMO IS '운영자메모';
COMMENT ON COLUMN "fb_subj".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subj".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subj".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subj".SCREENX IS '학습창가로';
COMMENT ON COLUMN "fb_subj".SCREENY IS '학습창세로';
COMMENT ON COLUMN "fb_subj".SUBJNM_EN IS '과정명_영문';
COMMENT ON COLUMN "fb_subj".SUBJGUBUN IS '과정구분';
COMMENT ON COLUMN "fb_subj".ISCOMMON IS '공통과정여부';
COMMENT ON COLUMN "fb_subj".ISSELECT IS '선택과정여';
COMMENT ON COLUMN "fb_subj".APPROVAL_YN IS '결재진행여부(N:승인필요)';
COMMENT ON COLUMN "fb_subj".GENDER IS '성별제한';
COMMENT ON COLUMN "fb_subj".ROOM_PRICE IS '숙박비';
COMMENT ON COLUMN "fb_subj".FOOD_PRICE IS '식비';
COMMENT ON COLUMN "fb_subj".INSURANCE_PRICE IS '보험비';
COMMENT ON COLUMN "fb_subj".SUM_EDU_PRICE IS '총교육비';
COMMENT ON COLUMN "fb_subj".SUBJPROGRAM IS '교육프로그램코드';
COMMENT ON COLUMN "fb_subj".BOSU_GRADE IS '보수교육 학점';
COMMENT ON COLUMN "fb_subj".KFA_SUBJ IS 'KFA 과정코드';
COMMENT ON COLUMN "fb_subj".OVERLAP_YN IS '차수 중복 허용여부(Y:허용,N:비허용)';
COMMENT ON COLUMN "fb_subj".CERTI_YN IS '수료증출력(수료번호생성) 여부';
COMMENT ON COLUMN "fb_subj".CERTI_MID_NO IS '수료번호 중간값';
COMMENT ON COLUMN "fb_subj".GRGUBUN IS '과정그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_subjatt" IS '과정분류정보';
COMMENT ON COLUMN "fb_subjatt".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subjatt".SUBJCLASS IS '과정분류코드';
COMMENT ON COLUMN "fb_subjatt".CLASSNAME IS '과정분류명';
COMMENT ON COLUMN "fb_subjatt".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjatt".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjatt".ORDERS IS '정렬순서';
COMMENT ON COLUMN "fb_subjatt".USE_YN IS '사용여부';
COMMENT ON COLUMN "fb_subjatt".PARENT_SUBJCLASS IS '상위과정분류코드';
COMMENT ON COLUMN "fb_subjatt".ROOT_SUBJCLASS IS '최상위과정분류코드';
COMMENT ON TABLE  "fb_subjatt_program" IS '과정분류 교육프로그램';
COMMENT ON COLUMN "fb_subjatt_program".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subjatt_program".SUBJCLASS IS '과정분류코드';
COMMENT ON COLUMN "fb_subjatt_program".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_subjatt_program".PROGRAMNM IS '교육프로그램이름';
COMMENT ON COLUMN "fb_subjatt_program".MAXGRADE IS '학점 최고점';
COMMENT ON COLUMN "fb_subjatt_program".MINGRADE IS '학점 최저점';
COMMENT ON TABLE  "fb_subject" IS '과목정보';
COMMENT ON COLUMN "fb_subject".SUBJECT IS '';
COMMENT ON COLUMN "fb_subject".SUBJECT_NM IS '';
COMMENT ON COLUMN "fb_subject".ORD IS '';
COMMENT ON COLUMN "fb_subject".LUSERID IS '';
COMMENT ON COLUMN "fb_subject".LDATE IS '';
COMMENT ON COLUMN "fb_subject".SUBJ IS '';
COMMENT ON TABLE  "fb_subjlesson" IS '과정차시정보';
COMMENT ON COLUMN "fb_subjlesson".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjlesson"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_subjlesson".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_subjlesson".LESSONNM IS '차시명';
COMMENT ON COLUMN "fb_subjlesson".PAGECNT IS '페이지수';
COMMENT ON COLUMN "fb_subjlesson".EDUTIME IS '학습시간_분';
COMMENT ON COLUMN "fb_subjlesson".STARTPATH IS '컨텐츠시작위치';
COMMENT ON COLUMN "fb_subjlesson".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjlesson".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjlesson".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjlesson".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjlesson_content" IS '모바일_온라인페이지 맵핑';
COMMENT ON COLUMN "fb_subjlesson_content".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjlesson_content"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_subjlesson_content".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_subjlesson_content".CONTENTNO IS '컨텐츠코드';
COMMENT ON COLUMN "fb_subjlesson_content".PAGENO IS '온라인페이지';
COMMENT ON COLUMN "fb_subjlesson_content".STARTTIME IS '모바일시작시간';
COMMENT ON COLUMN "fb_subjlesson_content".ENDTIME IS '모바일종료시간';
COMMENT ON COLUMN "fb_subjlesson_content".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjlesson_content".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subjlesson_content".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjlesson_content".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjlesson_content".PAGEPATH IS '페이지경로';
COMMENT ON TABLE  "fb_subjlesson_mobile" IS '모바일컨텐츠';
COMMENT ON COLUMN "fb_subjlesson_mobile".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjlesson_mobile"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_subjlesson_mobile".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_subjlesson_mobile".CONTENTNO IS '컨텐츠코드';
COMMENT ON COLUMN "fb_subjlesson_mobile".CONTENTNM IS '컨텐츠명';
COMMENT ON COLUMN "fb_subjlesson_mobile".START_PAGE IS '시작페이지';
COMMENT ON COLUMN "fb_subjlesson_mobile".END_PAGE IS '종료페이지';
COMMENT ON COLUMN "fb_subjlesson_mobile".CONTENT_PATH IS '컨텐츠경로';
COMMENT ON COLUMN "fb_subjlesson_mobile".CONTENT_TIME IS '컨텐츠시간';
COMMENT ON COLUMN "fb_subjlesson_mobile".MEDIA_KEY IS '컨텐츠미디어키';
COMMENT ON COLUMN "fb_subjlesson_mobile".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjlesson_mobile".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subjlesson_mobile".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjlesson_mobile".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subjlesson_outlink" IS '';
COMMENT ON COLUMN "fb_subjlesson_outlink".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjlesson_outlink"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_subjlesson_outlink".LESSON IS '차시코드';
COMMENT ON COLUMN "fb_subjlesson_outlink".CONTENTNO IS '컨텐츠코드';
COMMENT ON COLUMN "fb_subjlesson_outlink".PAGEPATH IS '(링크)페이지경로';
COMMENT ON COLUMN "fb_subjlesson_outlink".PAGEWIDTH IS '페이지넓이';
COMMENT ON COLUMN "fb_subjlesson_outlink".PAGEHEIGHT IS '페이지높이';
COMMENT ON COLUMN "fb_subjlesson_outlink".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjlesson_outlink".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subjlesson_outlink".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_subjlesson_outlink".LDATE IS '수정일';
COMMENT ON TABLE  "fb_subjmodule" IS '과정모듈정보';
COMMENT ON COLUMN "fb_subjmodule".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjmodule"."MODULE" IS '모듈코드';
COMMENT ON COLUMN "fb_subjmodule".MODULENM IS '모듈명';
COMMENT ON COLUMN "fb_subjmodule".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjmodule".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjmodule".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjmodule".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjobj" IS '과정매칭오브젝트정보';
COMMENT ON COLUMN "fb_subjobj".LESSON IS '';
COMMENT ON COLUMN "fb_subjobj".ORDERING IS '';
COMMENT ON COLUMN "fb_subjobj".SDESC IS '';
COMMENT ON COLUMN "fb_subjobj".TYPES IS '';
COMMENT ON COLUMN "fb_subjobj".LUSERID IS '';
COMMENT ON COLUMN "fb_subjobj".LDATE IS '';
COMMENT ON COLUMN "fb_subjobj".COMMENTSFROMLMS IS '';
COMMENT ON COLUMN "fb_subjobj"."MODULE" IS '';
COMMENT ON COLUMN "fb_subjobj".SUBJ IS '';
COMMENT ON COLUMN "fb_subjobj".OID IS '';
COMMENT ON TABLE  "fb_subjseq" IS '과정차수정보';
COMMENT ON COLUMN "fb_subjseq".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq"."YEAR" IS '과정년도';
COMMENT ON COLUMN "fb_subjseq".PROP_START IS '수강신청시작일시';
COMMENT ON COLUMN "fb_subjseq".PROP_END IS '수강신청종료일시';
COMMENT ON COLUMN "fb_subjseq".EDU_START IS '교육시작일시';
COMMENT ON COLUMN "fb_subjseq".EDU_END IS '교육종료일시';
COMMENT ON COLUMN "fb_subjseq".CANCEL_START IS '수강취소시작일시';
COMMENT ON COLUMN "fb_subjseq".CANCEL_END IS '수강취소종료일시';
COMMENT ON COLUMN "fb_subjseq".EDU_CNT IS '차수정원';
COMMENT ON COLUMN "fb_subjseq".USER_YN IS '학습자노출여부';
COMMENT ON COLUMN "fb_subjseq".AGENCYNM IS '교육기관명';
COMMENT ON COLUMN "fb_subjseq".SUBJ_PLACE IS '교육장소';
COMMENT ON COLUMN "fb_subjseq".EDU_PRICE IS '교육비';
COMMENT ON COLUMN "fb_subjseq".GOYONG_YN IS '고용보험여부';
COMMENT ON COLUMN "fb_subjseq".GOYONG_PRICE_MAJOR IS '고용보험 대기업 1인환급금';
COMMENT ON COLUMN "fb_subjseq".GOYONG_PRICE_MIJOR IS '고용보험 중소기업 1인환급금';
COMMENT ON COLUMN "fb_subjseq".SUBJ_PURPOSE IS '학습목적';
COMMENT ON COLUMN "fb_subjseq".SUBJ_CONTENT IS '학습내용';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TARGET IS '학습대상';
COMMENT ON COLUMN "fb_subjseq".SUBJ_ETC IS '기타';
COMMENT ON COLUMN "fb_subjseq".ADMIN_MEMO IS '운영자메모';
COMMENT ON COLUMN "fb_subjseq".GRADE_TOTAL IS '수료기준총점';
COMMENT ON COLUMN "fb_subjseq".ISCLOSED IS '수료마감코드';
COMMENT ON COLUMN "fb_subjseq".ISCLOSED_DT IS '수료상태변경일';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR IS '강습회 : 주강사1 보수교육 : 강사진1';
COMMENT ON COLUMN "fb_subjseq".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subjseq".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subjseq".COMPSUBJSEQ IS '소유회사차수';
COMMENT ON COLUMN "fb_subjseq".EDU_TYPE IS '학습진행방법코드';
COMMENT ON COLUMN "fb_subjseq".EDU_REVIEW IS '복습개월';
COMMENT ON COLUMN "fb_subjseq".SUBJSEQNM IS '차수명';
COMMENT ON COLUMN "fb_subjseq".APPROVAL_YN IS '결재진행여부(N:승인필요)';
COMMENT ON COLUMN "fb_subjseq".ROOM_PRICE IS '숙박비';
COMMENT ON COLUMN "fb_subjseq".FOOD_PRICE IS '식비';
COMMENT ON COLUMN "fb_subjseq".INSURANCE_PRICE IS '보험료';
COMMENT ON COLUMN "fb_subjseq".SUM_EDU_PRICE IS '총교육비';
COMMENT ON COLUMN "fb_subjseq".PROP_CLOSEYN IS '신청마감여부';
COMMENT ON COLUMN "fb_subjseq".PROP_CLOSEDT IS '신청마감상태변경일';
COMMENT ON COLUMN "fb_subjseq".BOSU_GRADE IS '보수교육 점수';
COMMENT ON COLUMN "fb_subjseq".SUB_TUTOR IS '보조강사명';
COMMENT ON COLUMN "fb_subjseq".SUB_TUTOR_ENG IS '보조강사영문명';
COMMENT ON COLUMN "fb_subjseq".SUB_TUTOR2 IS '보조강사명2';
COMMENT ON COLUMN "fb_subjseq".SUB_TUTOR2_ENG IS '보조강사영문명2';
COMMENT ON COLUMN "fb_subjseq".MEETING IS '소집일시';
COMMENT ON COLUMN "fb_subjseq".INSURANCE_TXT IS '보험가입';
COMMENT ON COLUMN "fb_subjseq".SUPPLY IS '준비물';
COMMENT ON COLUMN "fb_subjseq".KFA_SUBJ IS 'KFA 과정코드';
COMMENT ON COLUMN "fb_subjseq".KFA_SUBJSEQ IS 'KFA 과정차수코드';
COMMENT ON COLUMN "fb_subjseq".KFA_YEAR IS 'KFA 년도';
COMMENT ON COLUMN "fb_subjseq".GRADE IS '강사성';
COMMENT ON COLUMN "fb_subjseq".SUBJADDR IS '주소';
COMMENT ON COLUMN "fb_subjseq".SUBJ_LOCATION IS '';
COMMENT ON COLUMN "fb_subjseq".COMEDU_YN IS '';
COMMENT ON COLUMN "fb_subjseq".COMEDU_CONFIRM_TXT IS '';
COMMENT ON COLUMN "fb_subjseq".COMEDU_CANCEL_TXT IS '';
COMMENT ON COLUMN "fb_subjseq".OBLIGATION_TUTOR IS '의무강사';
COMMENT ON COLUMN "fb_subjseq".S_LECTURE_TUTOR IS '특강강사';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR2 IS '강습회 : 주강사2 보수교육 : 강사진2';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR3 IS '보수교육 : 강사진3';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR4 IS '보수교육 : 강사진4';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR5 IS '보수교육 : 강사진5';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR_SUB IS '보조강사1 (USERID로 관리되는 항목)';
COMMENT ON COLUMN "fb_subjseq".SUBJ_TUTOR_SUB2 IS '보조강사2 (USERID로 관리되는 항목)';
COMMENT ON COLUMN "fb_subjseq".CANCEL_YN IS '입과 후 취소가능 여부';
COMMENT ON COLUMN "fb_subjseq".GRGUBUN IS '과정그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_subjseq_exam" IS '과정차수 평가연결정보';
COMMENT ON COLUMN "fb_subjseq_exam".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_exam".SUBJSEQ IS '과정차수인덱스';
COMMENT ON COLUMN "fb_subjseq_exam".PAPER_SEQ IS '평가지번호';
COMMENT ON COLUMN "fb_subjseq_exam".DISPLAYNM IS '사용자노출평가지명';
COMMENT ON COLUMN "fb_subjseq_exam".SDATE IS '평가시작일';
COMMENT ON COLUMN "fb_subjseq_exam".EDATE IS '평가종료일';
COMMENT ON COLUMN "fb_subjseq_exam".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq_exam".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq_exam".STIME IS '평가시작시간';
COMMENT ON COLUMN "fb_subjseq_exam".ETIME IS '평가종료시간';
COMMENT ON COLUMN "fb_subjseq_exam".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq_exam".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjseq_grade" IS '과정차수수료정보';
COMMENT ON COLUMN "fb_subjseq_grade".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_grade".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq_grade".GRADE IS '수료기준코드';
COMMENT ON COLUMN "fb_subjseq_grade".GRADENM IS '수료기준명';
COMMENT ON COLUMN "fb_subjseq_grade".SCORE IS '수료기준점수';
COMMENT ON COLUMN "fb_subjseq_grade".PER IS '가중치';
COMMENT ON COLUMN "fb_subjseq_grade".ORD IS '순번';
COMMENT ON COLUMN "fb_subjseq_grade".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq_grade".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq_grade".GRADETYPE IS '학습수료정보타입';
COMMENT ON COLUMN "fb_subjseq_grade".PAPER_SEQ IS '평가지번호';
COMMENT ON COLUMN "fb_subjseq_grade".REPORT IS '과제번호';
COMMENT ON COLUMN "fb_subjseq_grade".ISAPPEND IS '추가항목여부';
COMMENT ON COLUMN "fb_subjseq_grade".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq_grade".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjseq_qualification" IS '차수 수강신청 자격 맵핑';
COMMENT ON COLUMN "fb_subjseq_qualification".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_qualification".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq_qualification".CODE IS '수료기준코드';
COMMENT ON COLUMN "fb_subjseq_qualification".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_subjseq_qualification".LDATE IS '수정일';
COMMENT ON TABLE  "fb_subjseq_report" IS '과정차수 과제정보';
COMMENT ON COLUMN "fb_subjseq_report".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_report".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq_report".REPORT IS '과제번호';
COMMENT ON COLUMN "fb_subjseq_report".DISPLAYNM IS '과제명';
COMMENT ON COLUMN "fb_subjseq_report".SDATE IS '과제제출시작일시';
COMMENT ON COLUMN "fb_subjseq_report".EDATE IS '과제제출종료일시';
COMMENT ON COLUMN "fb_subjseq_report".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq_report".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq_report".Q_REALFILENAME IS '출제실제파일명';
COMMENT ON COLUMN "fb_subjseq_report".Q_SAVEFILENAME IS '출제저장파일명';
COMMENT ON COLUMN "fb_subjseq_report".A_SAVEFILENAME IS '답안실제파일명';
COMMENT ON COLUMN "fb_subjseq_report".A_REALFILENAME IS '답안저장파일명';
COMMENT ON COLUMN "fb_subjseq_report".USE_YN IS '사용여부';
COMMENT ON COLUMN "fb_subjseq_report".CONTENTS IS '과제내용';
COMMENT ON COLUMN "fb_subjseq_report".USER_DISPLAYNM IS '사용자과제노출명';
COMMENT ON COLUMN "fb_subjseq_report".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq_report".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjseq_sulpage" IS '과정차수 설문지연결정보';
COMMENT ON COLUMN "fb_subjseq_sulpage".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_sulpage".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq_sulpage".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_subjseq_sulpage".DISPLAYNM IS '사용자노출설문명';
COMMENT ON COLUMN "fb_subjseq_sulpage".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq_sulpage".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq_sulpage".SDATE IS '설문시작일시';
COMMENT ON COLUMN "fb_subjseq_sulpage".EDATE IS '설문종료일시';
COMMENT ON COLUMN "fb_subjseq_sulpage".ISGRADE IS '필수여부';
COMMENT ON COLUMN "fb_subjseq_sulpage".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq_sulpage".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subjseq_tutor" IS '교양강좌 강사정보';
COMMENT ON COLUMN "fb_subjseq_tutor".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subjseq_tutor".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subjseq_tutor".USERID IS '강사아이디';
COMMENT ON COLUMN "fb_subjseq_tutor".CLASSTIME IS '강의시간';
COMMENT ON COLUMN "fb_subjseq_tutor".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subjseq_tutor".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subjseq_tutor".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subjseq_tutor".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subj_culture" IS '교양강좌 과정정보';
COMMENT ON COLUMN "fb_subj_culture".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subj_culture".GUBUN IS '구분';
COMMENT ON COLUMN "fb_subj_culture".TITLE IS '제목';
COMMENT ON COLUMN "fb_subj_culture".CONTENTS IS '상세';
COMMENT ON COLUMN "fb_subj_culture".TUTOR_NM IS '강사명';
COMMENT ON COLUMN "fb_subj_culture".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subj_culture".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subj_culture".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_culture".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subj_culture_seq" IS '교양강좌 차수정보';
COMMENT ON COLUMN "fb_subj_culture_seq".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subj_culture_seq".SEQ IS '번호';
COMMENT ON COLUMN "fb_subj_culture_seq".TITLE IS '제목';
COMMENT ON COLUMN "fb_subj_culture_seq"."PATH" IS '경로';
COMMENT ON COLUMN "fb_subj_culture_seq".MEDIA_KEY IS '키';
COMMENT ON COLUMN "fb_subj_culture_seq".RUNTIME IS '재생시간';
COMMENT ON COLUMN "fb_subj_culture_seq".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subj_culture_seq".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subj_culture_seq".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_culture_seq".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subj_grcode" IS '교육그룹과정맵핑정보';
COMMENT ON COLUMN "fb_subj_grcode".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subj_grcode".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subj_grcode".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_grcode".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subj_gubun" IS '과정구분테이블';
COMMENT ON COLUMN "fb_subj_gubun".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subj_gubun".GUBUN IS '과정구분코드';
COMMENT ON COLUMN "fb_subj_gubun".GUBUNNM IS '과정구분명';
COMMENT ON COLUMN "fb_subj_gubun".GUBUNNM_KR IS '과정구분명_한글';
COMMENT ON COLUMN "fb_subj_gubun".GUBUNNM_EN IS '과정구분명_영문';
COMMENT ON COLUMN "fb_subj_gubun".APPROVAL_YN IS '결재진행여부';
COMMENT ON COLUMN "fb_subj_gubun".KFA_CD IS 'KFA코드';
COMMENT ON COLUMN "fb_subj_gubun".AFC_CD IS 'AFC코드';
COMMENT ON COLUMN "fb_subj_gubun".BOSUCHK_YN IS '자격증여부(차수개설)';
COMMENT ON COLUMN "fb_subj_gubun".LICENSE_GUBUN IS '자격증구분(CL:필드자격증,GK:GK자격증,FS:풋살자격증,ETC:기타자격증';
COMMENT ON COLUMN "fb_subj_gubun".LICENSE_ORDER IS '자격증 순서(숫자가 클수록 높은 자격증)';
COMMENT ON COLUMN "fb_subj_gubun".LICENSENM IS '자격증명';
COMMENT ON COLUMN "fb_subj_gubun".LICENSE_PERIOD IS '자격증 유지기간(년)';
COMMENT ON COLUMN "fb_subj_gubun".LICENSE_GRADE IS '교육비';
COMMENT ON COLUMN "fb_subj_gubun".LICENSE_GROUP IS '자격증그룹';
COMMENT ON TABLE  "fb_subj_keyword" IS '과정키워드맵핑정보';
COMMENT ON COLUMN "fb_subj_keyword".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_subj_keyword".SUBJ IS '키워드코드';
COMMENT ON COLUMN "fb_subj_keyword".KEYWORD IS '과정코드';
COMMENT ON COLUMN "fb_subj_keyword".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_keyword".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_subj_schedule" IS '시간표정보';
COMMENT ON COLUMN "fb_subj_schedule".SUBJ_SCHEDULE IS '시간표코드';
COMMENT ON COLUMN "fb_subj_schedule".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_subj_schedule".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_subj_schedule".EDU_DAY IS '학습일차';
COMMENT ON COLUMN "fb_subj_schedule".SDATE IS '시작시간';
COMMENT ON COLUMN "fb_subj_schedule".EDATE IS '종료시간';
COMMENT ON COLUMN "fb_subj_schedule".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_schedule".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subj_schedule".SUBJECTNM IS '과목명';
COMMENT ON COLUMN "fb_subj_schedule".TUTORID IS '강사아이디';
COMMENT ON COLUMN "fb_subj_schedule".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subj_schedule".INDATE IS '등록일';
COMMENT ON COLUMN "fb_subj_schedule".SUBJECT_PLACE IS '장소';
COMMENT ON TABLE  "fb_subj_schedule_detail" IS '시간표상세';
COMMENT ON COLUMN "fb_subj_schedule_detail".SUBJ_SCHEDULE IS '시간표코드';
COMMENT ON COLUMN "fb_subj_schedule_detail".SUB_SEQ IS '상세코드';
COMMENT ON COLUMN "fb_subj_schedule_detail".SUBJECTTXT IS '훈련내용';
COMMENT ON COLUMN "fb_subj_schedule_detail".SDATE IS '시작시간';
COMMENT ON COLUMN "fb_subj_schedule_detail".EDATE IS '종료시간';
COMMENT ON COLUMN "fb_subj_schedule_detail".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_subj_schedule_detail".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_subj_schedule_detail".EDU_DAY IS '학습일자';
COMMENT ON COLUMN "fb_subj_schedule_detail".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_subj_schedule_detail".INDATE IS '등록일';
COMMENT ON TABLE  "fb_subj_schedule_temp" IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SUBJ_SCHEDULE IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SUBJ IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp"."YEAR" IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SUBJSEQ IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".EDU_DAY IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SCHEDULE_TYPE IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SUBJECTNM IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".SDATE IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".EDATE IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".TUTORID IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".LUSERID IS '';
COMMENT ON COLUMN "fb_subj_schedule_temp".LDATE IS '';
COMMENT ON TABLE  "fb_sul" IS '설문문제정보';
COMMENT ON COLUMN "fb_sul".SUL IS '문제번호';
COMMENT ON COLUMN "fb_sul".ISSUBJ IS '과정일반구분';
COMMENT ON COLUMN "fb_sul".SUL_TYPE IS '설문분류';
COMMENT ON COLUMN "fb_sul".DISTCODE IS '문제분류';
COMMENT ON COLUMN "fb_sul".SUL_TEXT IS '문제';
COMMENT ON COLUMN "fb_sul".SCALE IS '척도코드';
COMMENT ON COLUMN "fb_sul".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_sul".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sul".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sul".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sul".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulpage" IS '설문지';
COMMENT ON COLUMN "fb_sulpage".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_sulpage".SULPAGE_TYPE IS '설문지분류';
COMMENT ON COLUMN "fb_sulpage".GUBUN IS '설문지구분코드';
COMMENT ON COLUMN "fb_sulpage".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_sulpage".SULPAGENM IS '설문지명';
COMMENT ON COLUMN "fb_sulpage".SULPAGE_TXT IS '설문지내용';
COMMENT ON COLUMN "fb_sulpage".SDATE IS '설문시작일';
COMMENT ON COLUMN "fb_sulpage".EDATE IS '설문종료일';
COMMENT ON COLUMN "fb_sulpage".PROGRESS IS '제한진도율';
COMMENT ON COLUMN "fb_sulpage".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulpage".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulpage".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulpage".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulpage_comp" IS '일반설문 회사 맵핑정보';
COMMENT ON COLUMN "fb_sulpage_comp".COMP IS '회사코드';
COMMENT ON COLUMN "fb_sulpage_comp".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_sulpage_comp".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulpage_comp".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulpage_comp".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulpage_comp".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulpage_result" IS '설문지결과정보';
COMMENT ON COLUMN "fb_sulpage_result".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_sulpage_result".SUBJSEQ IS '차수번호';
COMMENT ON COLUMN "fb_sulpage_result".COMP IS '회사코드';
COMMENT ON COLUMN "fb_sulpage_result".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_sulpage_result".USERID IS '통합사번';
COMMENT ON COLUMN "fb_sulpage_result".RESULTDATE IS '제출일자';
COMMENT ON COLUMN "fb_sulpage_result".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulpage_result".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulpage_result".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulpage_result".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulpage_sul" IS '설문지설문문제맵핑정보';
COMMENT ON COLUMN "fb_sulpage_sul".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_sulpage_sul".SUL IS '문제번호';
COMMENT ON COLUMN "fb_sulpage_sul".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulpage_sul".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulpage_sul".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulpage_sul".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulpage_sul_result" IS '설문결과답변정보';
COMMENT ON COLUMN "fb_sulpage_sul_result".SUBJ IS '차수번호';
COMMENT ON COLUMN "fb_sulpage_sul_result".SUBJSEQ IS '과정코드';
COMMENT ON COLUMN "fb_sulpage_sul_result".COMP IS '회사코드';
COMMENT ON COLUMN "fb_sulpage_sul_result".SULPAGE IS '설문지번호';
COMMENT ON COLUMN "fb_sulpage_sul_result".SUL IS '문제번호';
COMMENT ON COLUMN "fb_sulpage_sul_result".USERID IS '통합사번';
COMMENT ON COLUMN "fb_sulpage_sul_result".ANSWER IS '답변';
COMMENT ON COLUMN "fb_sulpage_sul_result".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulpage_sul_result".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulpage_sul_result".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulpage_sul_result".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulsel" IS '설문문제보기정보';
COMMENT ON COLUMN "fb_sulsel".SUL IS '문제번호';
COMMENT ON COLUMN "fb_sulsel".SULSEL IS '보기번호';
COMMENT ON COLUMN "fb_sulsel".SULSEL_TEXT IS '보기내용';
COMMENT ON COLUMN "fb_sulsel".SULSEL_POINT IS '점수';
COMMENT ON COLUMN "fb_sulsel".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulsel".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulsel".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulsel".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sulsel_scale" IS '설문척도보기정보';
COMMENT ON COLUMN "fb_sulsel_scale".SCALE IS '척도코드';
COMMENT ON COLUMN "fb_sulsel_scale".SCALE_SEL IS '보기번호';
COMMENT ON COLUMN "fb_sulsel_scale".SCALE_SELNM IS '보기내용';
COMMENT ON COLUMN "fb_sulsel_scale".SCALE_POINT IS '점수';
COMMENT ON COLUMN "fb_sulsel_scale".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sulsel_scale".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sulsel_scale".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sulsel_scale".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_sul_scale" IS '설문척도정보';
COMMENT ON COLUMN "fb_sul_scale".SCALE IS '척도코드';
COMMENT ON COLUMN "fb_sul_scale".SCALE_TYPE IS '척도분류';
COMMENT ON COLUMN "fb_sul_scale".SCALENM IS '척도명';
COMMENT ON COLUMN "fb_sul_scale".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_sul_scale".INDATE IS '등록일';
COMMENT ON COLUMN "fb_sul_scale".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_sul_scale".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_system_board" IS '시스템통합게시판';
COMMENT ON COLUMN "fb_system_board".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_system_board".SEQ IS '글번호';
COMMENT ON COLUMN "fb_system_board".GUBUN IS '공지구분';
COMMENT ON COLUMN "fb_system_board".NOTICECLASS IS '공지분류';
COMMENT ON COLUMN "fb_system_board".CATEGORY IS '카테고리';
COMMENT ON COLUMN "fb_system_board".ISUSE IS '사용여부';
COMMENT ON COLUMN "fb_system_board".ISTOP IS '중요글여부';
COMMENT ON COLUMN "fb_system_board".ISTITLE IS '제목표시여부';
COMMENT ON COLUMN "fb_system_board".ISQUESTION IS '질문분류여부';
COMMENT ON COLUMN "fb_system_board".ISSECRET IS '공개여부';
COMMENT ON COLUMN "fb_system_board".WIDTHSIZE IS '가로사이즈';
COMMENT ON COLUMN "fb_system_board".HEIGHTSIZE IS '세로사이즈';
COMMENT ON COLUMN "fb_system_board"."POSITION" IS '팝업위치';
COMMENT ON COLUMN "fb_system_board".ISLOGIN IS '로그인여부';
COMMENT ON COLUMN "fb_system_board".STARTDATE IS '게시시작일';
COMMENT ON COLUMN "fb_system_board".ENDDATE IS '게시종료일';
COMMENT ON COLUMN "fb_system_board".TITLE IS '제목';
COMMENT ON COLUMN "fb_system_board".CONTENT IS '내용';
COMMENT ON COLUMN "fb_system_board".INUSERID IS '작성자';
COMMENT ON COLUMN "fb_system_board".INDATE IS '작성일';
COMMENT ON COLUMN "fb_system_board".CNT IS '조회수';
COMMENT ON COLUMN "fb_system_board".PARENTSEQ IS '부모글번호';
COMMENT ON COLUMN "fb_system_board".SEQLEVELS IS '글깊이';
COMMENT ON COLUMN "fb_system_board".SEQORDER IS '글순서';
COMMENT ON COLUMN "fb_system_board".RECOMMEND IS '추천수';
COMMENT ON COLUMN "fb_system_board".URL IS 'URL';
COMMENT ON COLUMN "fb_system_board".COUNSELINGCLASS IS '상담분류';
COMMENT ON COLUMN "fb_system_board".MAIL_YN IS '메일발송여부';
COMMENT ON COLUMN "fb_system_board".ISPOP IS '팝업여부';
COMMENT ON COLUMN "fb_system_board".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_system_board".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_system_board".POPSDATE IS '팝업시작일';
COMMENT ON COLUMN "fb_system_board".POPEDATE IS '팝업종료일';
COMMENT ON COLUMN "fb_system_board".ISBROADCAST IS '전체글여부';
COMMENT ON COLUMN "fb_system_board".ISNECESSARY IS '필수여부';
COMMENT ON COLUMN "fb_system_board".GRGUBUN IS '그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_system_boardcategory" IS '시스템통합게시판카테고리';
COMMENT ON COLUMN "fb_system_boardcategory".MASTERSEQ IS '마스터코드';
COMMENT ON COLUMN "fb_system_boardcategory".CATEGORY IS '카테고리코드';
COMMENT ON COLUMN "fb_system_boardcategory".CATEGORYNAME IS '카테고리명';
COMMENT ON COLUMN "fb_system_boardcategory".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_system_boardcategory".INDATE IS '등록일';
COMMENT ON COLUMN "fb_system_boardcategory".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_system_boardcategory".LDATE IS '수정일';
COMMENT ON COLUMN "fb_system_boardcategory".GRGUBUN IS '그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_system_boardmaster" IS '시스템통합게시판마스터정보';
COMMENT ON COLUMN "fb_system_boardmaster".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_system_boardmaster".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_system_boardmaster".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDNAME IS '게시판명';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDDESCRIPTION IS '게시판설명';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDORDER IS '순서';
COMMENT ON COLUMN "fb_system_boardmaster".ISUSE IS '사용여부';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDTYPE IS '게시판형태';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDAUTHORITY IS '게시판권한';
COMMENT ON COLUMN "fb_system_boardmaster".ISEDITOR IS '에디터사용여부';
COMMENT ON COLUMN "fb_system_boardmaster".FILECNT IS '첨부파일갯수';
COMMENT ON COLUMN "fb_system_boardmaster".ISREPLY IS '답글구분';
COMMENT ON COLUMN "fb_system_boardmaster".ISCOMMENT IS '덧글구분';
COMMENT ON COLUMN "fb_system_boardmaster".ISRECOMMEND IS '추천글여부';
COMMENT ON COLUMN "fb_system_boardmaster".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_system_boardmaster".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_system_boardmaster"."YEAR" IS '과정년도';
COMMENT ON COLUMN "fb_system_boardmaster".BOARDGUBUN IS '게시판구분';
COMMENT ON COLUMN "fb_system_boardmaster".GRGUBUN IS '과정그룹구분(지도자:L, 심판:R)';
COMMENT ON TABLE  "fb_system_board_log" IS '홈페이지공지사항 사용자로그';
COMMENT ON COLUMN "fb_system_board_log".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_system_board_log".SEQ IS '글번호';
COMMENT ON COLUMN "fb_system_board_log".USERID IS '통합사번';
COMMENT ON COLUMN "fb_system_board_log".INUSERID IS '통합사번';
COMMENT ON COLUMN "fb_system_board_log".INDATE IS '등록일';
COMMENT ON TABLE  "fb_system_grcode" IS '홈페이지팝업교육그룹맵핑정보';
COMMENT ON COLUMN "fb_system_grcode".GRCODE IS '주관처코드';
COMMENT ON COLUMN "fb_system_grcode".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_system_grcode".SEQ IS '글번호';
COMMENT ON COLUMN "fb_system_grcode".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_system_grcode".INDATE IS '등록일';
COMMENT ON COLUMN "fb_system_grcode".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_system_grcode".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_system_license" IS '홈페이지공지사항대상';
COMMENT ON COLUMN "fb_system_license".MASTERSEQ IS '마스터번호';
COMMENT ON COLUMN "fb_system_license".SEQ IS '글번호';
COMMENT ON COLUMN "fb_system_license".LICENSE IS '자격증코드';
COMMENT ON COLUMN "fb_system_license".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_system_license".INDATE IS '등록일';
COMMENT ON COLUMN "fb_system_license".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_system_license".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_tutor" IS '강사정보';
COMMENT ON COLUMN "fb_tutor".USERID IS '강사아이디';
COMMENT ON COLUMN "fb_tutor".ACADEMIC IS '학력사항';
COMMENT ON COLUMN "fb_tutor".CAREER IS '주요경력';
COMMENT ON COLUMN "fb_tutor".BOOK IS '주요저서';
COMMENT ON COLUMN "fb_tutor".ETC IS '참고사항';
COMMENT ON COLUMN "fb_tutor".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_tutor".INDATE IS '등록일';
COMMENT ON COLUMN "fb_tutor".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_tutor".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_tutor".GUBUN IS '사내사외강사구본(I:사내, O:사외)';
COMMENT ON COLUMN "fb_tutor".TUTOR_TYPE IS '강사구분(S:전문강사, B:일반강사)';
COMMENT ON TABLE  "fb_tutor_field" IS '';
COMMENT ON COLUMN "fb_tutor_field".FIELDGUBUN IS '';
COMMENT ON COLUMN "fb_tutor_field".FIELDCODE IS '';
COMMENT ON COLUMN "fb_tutor_field".FIELDNAME IS '';
COMMENT ON TABLE  "fb_tutor_notice" IS '강사 공지사항';
COMMENT ON COLUMN "fb_tutor_notice".SEQ IS '년도';
COMMENT ON COLUMN "fb_tutor_notice".TITLE IS '월';
COMMENT ON COLUMN "fb_tutor_notice".CONTENT IS '등급';
COMMENT ON COLUMN "fb_tutor_notice".CNT IS '온라인1시간강의료';
COMMENT ON COLUMN "fb_tutor_notice".INUSERID IS '오프라인1시간강의료';
COMMENT ON COLUMN "fb_tutor_notice".INDATE IS '과제첨삭1건강의료';
COMMENT ON COLUMN "fb_tutor_notice".LUSERID IS '질문답변1건강의료';
COMMENT ON COLUMN "fb_tutor_notice".LDATE IS '등록자';
COMMENT ON TABLE  "fb_tutor_pay_master" IS '강사료마스터정보';
COMMENT ON COLUMN "fb_tutor_pay_master"."YEAR" IS '년도';
COMMENT ON COLUMN "fb_tutor_pay_master".MONTH IS '월';
COMMENT ON COLUMN "fb_tutor_pay_master".GRADE IS '등급';
COMMENT ON COLUMN "fb_tutor_pay_master".ONLINE_PAY IS '온라인1시간강의료';
COMMENT ON COLUMN "fb_tutor_pay_master".OFFLINE_PAY IS '오프라인1시간강의료';
COMMENT ON COLUMN "fb_tutor_pay_master".REPORT_PAY IS '과제첨삭1건강의료';
COMMENT ON COLUMN "fb_tutor_pay_master".QNA_PAY IS '질문답변1건강의료';
COMMENT ON COLUMN "fb_tutor_pay_master".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_tutor_pay_master".INDATE IS '등록일';
COMMENT ON COLUMN "fb_tutor_pay_master".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_tutor_pay_master".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_tutor_qna" IS '강사운영자에게 문의정보';
COMMENT ON COLUMN "fb_tutor_qna".SEQ IS '글번호';
COMMENT ON COLUMN "fb_tutor_qna".TITLE IS '제목';
COMMENT ON COLUMN "fb_tutor_qna".CONTENT IS '내용';
COMMENT ON COLUMN "fb_tutor_qna".CNT IS '조회수';
COMMENT ON COLUMN "fb_tutor_qna".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_tutor_qna".INDATE IS '등록일';
COMMENT ON COLUMN "fb_tutor_qna".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_tutor_qna".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_tutor_qna_result" IS '강사운영자에게 답변정보';
COMMENT ON COLUMN "fb_tutor_qna_result".SEQ IS '답글번호';
COMMENT ON COLUMN "fb_tutor_qna_result".QNA_SEQ IS '질문글번호';
COMMENT ON COLUMN "fb_tutor_qna_result".TITLE IS '제목';
COMMENT ON COLUMN "fb_tutor_qna_result".CONTENT IS '내용';
COMMENT ON COLUMN "fb_tutor_qna_result".CNT IS '조회수';
COMMENT ON COLUMN "fb_tutor_qna_result".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_tutor_qna_result".INDATE IS '등록일';
COMMENT ON COLUMN "fb_tutor_qna_result".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_tutor_qna_result".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_tutor_subj" IS '강사과정매핑정보';
COMMENT ON COLUMN "fb_tutor_subj".USERID IS '강사아이디';
COMMENT ON COLUMN "fb_tutor_subj".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_tutor_subj".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_tutor_subj".LDATE IS '최종수정일';
COMMENT ON TABLE  "fb_tutor_sul_monitoring" IS '설문결과 내 강사평가 모니터링점수';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".SUBJSEQ IS '차수코드';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".USERID IS '강사아이디';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".MONITORING_SCORE IS '모니터링점수';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".INDATE IS '등록일';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".LUSERID IS '수정자';
COMMENT ON COLUMN "fb_tutor_sul_monitoring".LDATE IS '수정일';
COMMENT ON TABLE  "fb_usermenu" IS '사용자메뉴관리';
COMMENT ON COLUMN "fb_usermenu".MENU IS '메뉴번호';
COMMENT ON COLUMN "fb_usermenu".GRCODE IS '교육그룹코드';
COMMENT ON COLUMN "fb_usermenu".MENUNM IS '메뉴명한글';
COMMENT ON COLUMN "fb_usermenu".LEVELS IS '메뉴레벨';
COMMENT ON COLUMN "fb_usermenu"."UPPER" IS '상위메뉴번호';
COMMENT ON COLUMN "fb_usermenu".PGM IS '메뉴URL';
COMMENT ON COLUMN "fb_usermenu".ISDISPLAY IS '사용자노출여부';
COMMENT ON COLUMN "fb_usermenu".ORDERS IS '메뉴순번';
COMMENT ON COLUMN "fb_usermenu".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_usermenu".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_usermenu".ISBLANK IS '새창여부';
COMMENT ON COLUMN "fb_usermenu".MENUNM_ZH IS '메뉴명중문';
COMMENT ON COLUMN "fb_usermenu".MENUNM_EN IS '메뉴명영어';
COMMENT ON TABLE  "fb_usermenu_common" IS '메뉴명중문';
COMMENT ON COLUMN "fb_usermenu_common".MENU IS '메뉴번호';
COMMENT ON COLUMN "fb_usermenu_common".MENUNM IS '메뉴명한글';
COMMENT ON COLUMN "fb_usermenu_common".LEVELS IS '메뉴레벨';
COMMENT ON COLUMN "fb_usermenu_common"."UPPER" IS '상위메뉴번호';
COMMENT ON COLUMN "fb_usermenu_common".PGM IS '메뉴URL';
COMMENT ON COLUMN "fb_usermenu_common".ORDERS IS '메뉴순번';
COMMENT ON COLUMN "fb_usermenu_common".ISDISPLAY IS '사용여부';
COMMENT ON COLUMN "fb_usermenu_common".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_usermenu_common".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_usermenu_common".ISBLANK IS '새창여부';
COMMENT ON COLUMN "fb_usermenu_common".MENUNM_EN IS '메뉴명영어';
COMMENT ON COLUMN "fb_usermenu_common".MENUNM_ZH IS '메뉴명중문';
COMMENT ON TABLE  "fb_usermenu_master" IS '사용자메뉴마스터';
COMMENT ON COLUMN "fb_usermenu_master".MENU IS '메뉴번호';
COMMENT ON COLUMN "fb_usermenu_master".MENUNM IS '메뉴명한글';
COMMENT ON COLUMN "fb_usermenu_master".LEVELS IS '메뉴레벨';
COMMENT ON COLUMN "fb_usermenu_master"."UPPER" IS '상위메뉴번호';
COMMENT ON COLUMN "fb_usermenu_master".PGM IS '메뉴URL';
COMMENT ON COLUMN "fb_usermenu_master".ISDISPLAY IS '사용자노출여부';
COMMENT ON COLUMN "fb_usermenu_master".ORDERS IS '메뉴순번';
COMMENT ON COLUMN "fb_usermenu_master".LUSERID IS '최종수정자';
COMMENT ON COLUMN "fb_usermenu_master".LDATE IS '최종수정일';
COMMENT ON COLUMN "fb_usermenu_master".ISBLANK IS '새창여부';
COMMENT ON COLUMN "fb_usermenu_master".MENUNM_EN IS '메뉴명영어';
COMMENT ON COLUMN "fb_usermenu_master".MENUNM_ZH IS '메뉴명중문';
COMMENT ON TABLE  "fb_user_favorite" IS '과정 교육그룹';
COMMENT ON COLUMN "fb_user_favorite".GRCODE IS '교육그룹';
COMMENT ON COLUMN "fb_user_favorite".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_user_favorite".USERID IS '통합사번';
COMMENT ON COLUMN "fb_user_favorite".INDATE IS '등록일';
COMMENT ON COLUMN "fb_user_favorite".SUBJ_GRCODE IS '과정 교육 그룹';
COMMENT ON COLUMN "fb_user_favorite".UFSUBJSEQ IS '';
COMMENT ON TABLE  "fb_user_favorite_temp" IS '관심과정';
COMMENT ON COLUMN "fb_user_favorite_temp".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_user_favorite_temp".USERID IS '통합사번';
COMMENT ON COLUMN "fb_user_favorite_temp".INDATE IS '등록일';
COMMENT ON COLUMN "fb_user_favorite_temp".GRCODE IS '교육그룹';
COMMENT ON COLUMN "fb_user_favorite_temp".SUBJ_GRCODE IS '과정 교육 그룹';
COMMENT ON TABLE  "fb_waitinglist" IS '수강 대기자 정보';
COMMENT ON COLUMN "fb_waitinglist".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_waitinglist".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_waitinglist".USERID IS '통합사번';
COMMENT ON COLUMN "fb_waitinglist".PROPDATE IS '수강신청일';
COMMENT ON COLUMN "fb_waitinglist".WAITNO IS '대기번호';
COMMENT ON COLUMN "fb_waitinglist".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_waitinglist".INDATE IS '등록일';
COMMENT ON TABLE  "fb_waitinglist_history" IS '대기자 넘어갈때';
COMMENT ON COLUMN "fb_waitinglist_history".SEQ IS '일련번호';
COMMENT ON COLUMN "fb_waitinglist_history".SUBJ IS '과정코드';
COMMENT ON COLUMN "fb_waitinglist_history".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "fb_waitinglist_history".USERID IS '통합사번';
COMMENT ON COLUMN "fb_waitinglist_history".PROPDATE IS '수강신청일';
COMMENT ON COLUMN "fb_waitinglist_history".WAITNO IS '대기번호';
COMMENT ON COLUMN "fb_waitinglist_history".WAIT_INUSERID IS '대기등록자';
COMMENT ON COLUMN "fb_waitinglist_history".WAIT_INDATE IS '대기등록일';
COMMENT ON COLUMN "fb_waitinglist_history".INUSERID IS '등록자';
COMMENT ON COLUMN "fb_waitinglist_history".INDATE IS '등록일';
COMMENT ON COLUMN "fb_waitinglist_history".HISTORY_TXT IS '삭제사유';
COMMENT ON TABLE  "fb_zipcode_busan" IS '';
COMMENT ON COLUMN "fb_zipcode_busan".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_busan".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_busan".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_busan".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_busan".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_busan".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_busan".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_busan".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_busan".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_busan".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_busan".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_busan".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_busan".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_busan".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".RI IS '';
COMMENT ON COLUMN "fb_zipcode_busan".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_busan".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_busan".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_busan".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_busan".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_busan".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_busan".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_chungbuk" IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".RI IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungbuk".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_chungnam" IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".RI IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_chungnam".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_daegu" IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".RI IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_daegu".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_daejeon" IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".RI IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_daejeon".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_gangwon" IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".RI IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_gangwon".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_gwangju" IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".RI IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_gwangju".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_gyeongbuk" IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".RI IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongbuk".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_gyeonggi" IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".RI IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeonggi".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_gyeongnam" IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".RI IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_gyeongnam".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_incheon" IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".RI IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_incheon".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_jeju" IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".RI IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeju".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_jeonbuk" IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".RI IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonbuk".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_jeonnam" IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".RI IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_jeonnam".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_sejong" IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".RI IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_sejong".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_seoul" IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".RI IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_seoul".ZIPSEQ IS '';
COMMENT ON TABLE  "fb_zipcode_ulsan" IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".ZIPCODE IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".SIDO IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".SIDO_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".SIGUNGU IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".EUP IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".EUP_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".STREETCODE IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".STREET IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".STREET_ENG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".ISUNDER IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".BUILDINGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".MASSDESTINATION IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".BUILDING IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".DONGCODE IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".DONG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".RI IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".HANGDONG IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".ISMOUNTAIN IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".JIBUN1 IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".DONGSEQ IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".JIBUN2 IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".ZIPCODE2 IS '';
COMMENT ON COLUMN "fb_zipcode_ulsan".ZIPSEQ IS '';
COMMENT ON TABLE  "if_ref_kfaedu_sub" IS '';
COMMENT ON COLUMN "if_ref_kfaedu_sub".IPIN_CI IS 'CI값';
COMMENT ON COLUMN "if_ref_kfaedu_sub".GUBUN IS '축구:S, 풋살:F';
COMMENT ON COLUMN "if_ref_kfaedu_sub"."CLASS" IS '현재급수:1,2,3,4,5';
COMMENT ON COLUMN "if_ref_kfaedu_sub".ACQUIREMENT_DATE IS '취득일(YYYY-MM-DD)';
COMMENT ON COLUMN "if_ref_kfaedu_sub".ACTIVITY IS '활동여부:ACTIVE,INACTIVE';
COMMENT ON COLUMN "if_ref_kfaedu_sub".LASTUPDATE IS '최종수정일(JOIN 데이터)';
COMMENT ON COLUMN "if_ref_kfaedu_sub".LDATE IS '수정일(배치실행일)';
COMMENT ON TABLE  "join_edu_progress" IS '';
COMMENT ON COLUMN "join_edu_progress".USER_KEY IS '유저키(유저정보)';
COMMENT ON COLUMN "join_edu_progress".MEDIA_KEY IS '미디어키';
COMMENT ON COLUMN "join_edu_progress".START_AT IS '컨텐츠 재생시작시간';
COMMENT ON COLUMN "join_edu_progress".CHECK_AT IS '진도체크시간';
COMMENT ON COLUMN "join_edu_progress".PLAYTIME_PERCENT IS '컨텐츠 전체재생비율(%)';
COMMENT ON COLUMN "join_edu_progress".INDATE IS '등록일';
COMMENT ON TABLE  "kfa_license" IS '';
COMMENT ON COLUMN "kfa_license".IPIN_CI IS '';
COMMENT ON COLUMN "kfa_license"."NAME" IS '';
COMMENT ON COLUMN "kfa_license"."CLASS" IS '';
COMMENT ON COLUMN "kfa_license".LICENSE IS '';
COMMENT ON COLUMN "kfa_license".ISSUE_DATE IS '';
COMMENT ON TABLE  "kfa_user" IS '';
COMMENT ON COLUMN "kfa_user".USERID IS '';
COMMENT ON COLUMN "kfa_user".IPIN_CI IS '';
COMMENT ON COLUMN "kfa_user"."NAME" IS '';
COMMENT ON TABLE  "multy_license" IS '';
COMMENT ON COLUMN "multy_license".IPIN_CI IS '';
COMMENT ON COLUMN "multy_license".USERID IS '';
COMMENT ON COLUMN "multy_license"."NAME" IS '';
COMMENT ON COLUMN "multy_license".CL IS '';
COMMENT ON COLUMN "multy_license".GK IS '';
COMMENT ON COLUMN "multy_license".FS IS '';
COMMENT ON COLUMN "multy_license".ETC IS '';
COMMENT ON COLUMN "multy_license".LICENSE IS '';
COMMENT ON COLUMN "multy_license".ISSUE_DATE IS '';
COMMENT ON TABLE  "non_member" IS '';
COMMENT ON COLUMN "non_member".SEQ IS '일련번호';
COMMENT ON COLUMN "non_member".SUBJ IS '과정코드';
COMMENT ON COLUMN "non_member".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "non_member"."NAME" IS '한글이름';
COMMENT ON COLUMN "non_member".HANDPHONE_1 IS '핸드폰번호(통신사 번호)';
COMMENT ON COLUMN "non_member".HANDPHONE_2 IS '핸드폰번호(핸드폰 가운데번호)';
COMMENT ON COLUMN "non_member".HANDPHONE_3 IS '핸드폰번호(핸드폰 뒷번호)';
COMMENT ON COLUMN "non_member".EMAIL IS '이메일주소';
COMMENT ON COLUMN "non_member".PLAYERGUBUN IS '선수 소속구분(E:초등학교(Elementary), M:중학교(Middle), H:고등학교(High), O:기타(Other))';
COMMENT ON COLUMN "non_member".STAFF_QUESTION IS '코칭스태프 문의';
COMMENT ON COLUMN "non_member".USER_YN IS '사용유무 (Y:사용, N:미사용)';
COMMENT ON COLUMN "non_member"."STATE" IS '학습자상태코드(D:대기, I:등록, K:결재, C:취소)';
COMMENT ON COLUMN "non_member".STATE_DATE IS '처리일자';
COMMENT ON COLUMN "non_member".STATE_USERID IS '처리자';
COMMENT ON COLUMN "non_member".INUSERID IS '등록자';
COMMENT ON COLUMN "non_member".INDATE IS '등록일';
COMMENT ON COLUMN "non_member".LUSERID IS '수정자';
COMMENT ON COLUMN "non_member".LDATE IS '수정일';
COMMENT ON COLUMN "non_member".ORDR_IDXX IS '주문번호';
COMMENT ON COLUMN "non_member".CANCEL_TXT IS '취소사유';
COMMENT ON COLUMN "non_member".USER_IP IS '사용자 아이피 정보';
COMMENT ON COLUMN "non_member".USER_AGENT IS '사용자 브라우저 정보';
COMMENT ON COLUMN "non_member".PAYMENT_YN IS '결재정보';
COMMENT ON COLUMN "non_member".WITH_CNT IS '동반인원';
COMMENT ON TABLE  "non_member_connect" IS '';
COMMENT ON COLUMN "non_member_connect".SEQ IS '일련번호';
COMMENT ON COLUMN "non_member_connect".SUBJ IS '과정코드';
COMMENT ON COLUMN "non_member_connect".SUBJSEQ IS '과정차수';
COMMENT ON COLUMN "non_member_connect".USER_REFERER IS '사용자 이전페이지 정보';
COMMENT ON COLUMN "non_member_connect".USER_IP IS '사용자 아이피 정보';
COMMENT ON COLUMN "non_member_connect".USER_AGENT IS '사용자 브라우저 정보';
COMMENT ON COLUMN "non_member_connect".INDATE IS '등록일';
COMMENT ON TABLE  "sys_export_schema_01" IS 'Data Pump Master Table EXPORT                         SCHEMA                        ';
COMMENT ON COLUMN "sys_export_schema_01".PROCESS_ORDER IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUPLICATE IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUMP_FILEID IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUMP_POSITION IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUMP_LENGTH IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUMP_ORIG_LENGTH IS '';
COMMENT ON COLUMN "sys_export_schema_01".DUMP_ALLOCATION IS '';
COMMENT ON COLUMN "sys_export_schema_01".COMPLETED_ROWS IS '';
COMMENT ON COLUMN "sys_export_schema_01".ERROR_COUNT IS '';
COMMENT ON COLUMN "sys_export_schema_01".ELAPSED_TIME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_TYPE_PATH IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_PATH_SEQNO IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_TYPE IS '';
COMMENT ON COLUMN "sys_export_schema_01".IN_PROGRESS IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_LONG_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_SCHEMA IS '';
COMMENT ON COLUMN "sys_export_schema_01".ORIGINAL_OBJECT_SCHEMA IS '';
COMMENT ON COLUMN "sys_export_schema_01".ORIGINAL_OBJECT_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".PARTITION_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".SUBPARTITION_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".DATAOBJ_NUM IS '';
COMMENT ON COLUMN "sys_export_schema_01".FLAGS IS '';
COMMENT ON COLUMN "sys_export_schema_01".PROPERTY IS '';
COMMENT ON COLUMN "sys_export_schema_01".TRIGFLAG IS '';
COMMENT ON COLUMN "sys_export_schema_01".CREATION_LEVEL IS '';
COMMENT ON COLUMN "sys_export_schema_01".COMPLETION_TIME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_TABLESPACE IS '';
COMMENT ON COLUMN "sys_export_schema_01".SIZE_ESTIMATE IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_ROW IS '';
COMMENT ON COLUMN "sys_export_schema_01".PROCESSING_STATE IS '';
COMMENT ON COLUMN "sys_export_schema_01".PROCESSING_STATUS IS '';
COMMENT ON COLUMN "sys_export_schema_01".BASE_PROCESS_ORDER IS '';
COMMENT ON COLUMN "sys_export_schema_01".BASE_OBJECT_TYPE IS '';
COMMENT ON COLUMN "sys_export_schema_01".BASE_OBJECT_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".BASE_OBJECT_SCHEMA IS '';
COMMENT ON COLUMN "sys_export_schema_01".ANCESTOR_PROCESS_ORDER IS '';
COMMENT ON COLUMN "sys_export_schema_01".DOMAIN_PROCESS_ORDER IS '';
COMMENT ON COLUMN "sys_export_schema_01".PARALLELIZATION IS '';
COMMENT ON COLUMN "sys_export_schema_01".UNLOAD_METHOD IS '';
COMMENT ON COLUMN "sys_export_schema_01".LOAD_METHOD IS '';
COMMENT ON COLUMN "sys_export_schema_01".GRANULES IS '';
COMMENT ON COLUMN "sys_export_schema_01".SCN IS '';
COMMENT ON COLUMN "sys_export_schema_01".GRANTOR IS '';
COMMENT ON COLUMN "sys_export_schema_01".XML_CLOB IS '';
COMMENT ON COLUMN "sys_export_schema_01".PARENT_PROCESS_ORDER IS '';
COMMENT ON COLUMN "sys_export_schema_01"."NAME" IS '';
COMMENT ON COLUMN "sys_export_schema_01".VALUE_T IS '';
COMMENT ON COLUMN "sys_export_schema_01".VALUE_N IS '';
COMMENT ON COLUMN "sys_export_schema_01".IS_DEFAULT IS '';
COMMENT ON COLUMN "sys_export_schema_01".FILE_TYPE IS '';
COMMENT ON COLUMN "sys_export_schema_01".USER_DIRECTORY IS '';
COMMENT ON COLUMN "sys_export_schema_01".USER_FILE_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".FILE_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".EXTEND_SIZE IS '';
COMMENT ON COLUMN "sys_export_schema_01".FILE_MAX_SIZE IS '';
COMMENT ON COLUMN "sys_export_schema_01".PROCESS_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".LAST_UPDATE IS '';
COMMENT ON COLUMN "sys_export_schema_01".WORK_ITEM IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_NUMBER IS '';
COMMENT ON COLUMN "sys_export_schema_01".COMPLETED_BYTES IS '';
COMMENT ON COLUMN "sys_export_schema_01".TOTAL_BYTES IS '';
COMMENT ON COLUMN "sys_export_schema_01".METADATA_IO IS '';
COMMENT ON COLUMN "sys_export_schema_01".DATA_IO IS '';
COMMENT ON COLUMN "sys_export_schema_01".CUMULATIVE_TIME IS '';
COMMENT ON COLUMN "sys_export_schema_01".PACKET_NUMBER IS '';
COMMENT ON COLUMN "sys_export_schema_01".INSTANCE_ID IS '';
COMMENT ON COLUMN "sys_export_schema_01".OLD_VALUE IS '';
COMMENT ON COLUMN "sys_export_schema_01".SEED IS '';
COMMENT ON COLUMN "sys_export_schema_01".LAST_FILE IS '';
COMMENT ON COLUMN "sys_export_schema_01".USER_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OPERATION IS '';
COMMENT ON COLUMN "sys_export_schema_01".JOB_MODE IS '';
COMMENT ON COLUMN "sys_export_schema_01".QUEUE_TABNUM IS '';
COMMENT ON COLUMN "sys_export_schema_01".CONTROL_QUEUE IS '';
COMMENT ON COLUMN "sys_export_schema_01".STATUS_QUEUE IS '';
COMMENT ON COLUMN "sys_export_schema_01".REMOTE_LINK IS '';
COMMENT ON COLUMN "sys_export_schema_01".VERSION IS '';
COMMENT ON COLUMN "sys_export_schema_01".JOB_VERSION IS '';
COMMENT ON COLUMN "sys_export_schema_01".DB_VERSION IS '';
COMMENT ON COLUMN "sys_export_schema_01".TIMEZONE IS '';
COMMENT ON COLUMN "sys_export_schema_01"."STATE" IS '';
COMMENT ON COLUMN "sys_export_schema_01".PHASE IS '';
COMMENT ON COLUMN "sys_export_schema_01".GUID IS '';
COMMENT ON COLUMN "sys_export_schema_01".START_TIME IS '';
COMMENT ON COLUMN "sys_export_schema_01".BLOCK_SIZE IS '';
COMMENT ON COLUMN "sys_export_schema_01".METADATA_BUFFER_SIZE IS '';
COMMENT ON COLUMN "sys_export_schema_01".DATA_BUFFER_SIZE IS '';
COMMENT ON COLUMN "sys_export_schema_01".DEGREE IS '';
COMMENT ON COLUMN "sys_export_schema_01".PLATFORM IS '';
COMMENT ON COLUMN "sys_export_schema_01".ABORT_STEP IS '';
COMMENT ON COLUMN "sys_export_schema_01".INSTANCE IS '';
COMMENT ON COLUMN "sys_export_schema_01".CLUSTER_OK IS '';
COMMENT ON COLUMN "sys_export_schema_01".SERVICE_NAME IS '';
COMMENT ON COLUMN "sys_export_schema_01".OBJECT_INT_OID IS '';
COMMENT ON TABLE  "temp_sejong2" IS '';
COMMENT ON COLUMN "temp_sejong2".ZIPCODE IS '';
COMMENT ON COLUMN "temp_sejong2".SIDO IS '';
COMMENT ON COLUMN "temp_sejong2".SIDO_ENG IS '';
COMMENT ON COLUMN "temp_sejong2".SIGUNGU IS '';
COMMENT ON COLUMN "temp_sejong2".SIGUNGU_ENG IS '';
COMMENT ON COLUMN "temp_sejong2".EUP IS '';
COMMENT ON COLUMN "temp_sejong2".EUP_ENG IS '';
COMMENT ON COLUMN "temp_sejong2".STREETCODE IS '';
COMMENT ON COLUMN "temp_sejong2".STREET IS '';
COMMENT ON COLUMN "temp_sejong2".STREET_ENG IS '';
COMMENT ON COLUMN "temp_sejong2".ISUNDER IS '';
COMMENT ON COLUMN "temp_sejong2".BUILDINGNUM1 IS '';
COMMENT ON COLUMN "temp_sejong2".BUILDINGNUM2 IS '';
COMMENT ON COLUMN "temp_sejong2".BUILDINGCODE IS '';
COMMENT ON COLUMN "temp_sejong2".MASSDESTINATION IS '';
COMMENT ON COLUMN "temp_sejong2".BUILDING IS '';
COMMENT ON COLUMN "temp_sejong2".DONGCODE IS '';
COMMENT ON COLUMN "temp_sejong2".DONG IS '';
COMMENT ON COLUMN "temp_sejong2".RI IS '';
COMMENT ON COLUMN "temp_sejong2".HANGDONG IS '';
COMMENT ON COLUMN "temp_sejong2".ISMOUNTAIN IS '';
COMMENT ON COLUMN "temp_sejong2".JIBUN1 IS '';
COMMENT ON COLUMN "temp_sejong2".DONGSEQ IS '';
COMMENT ON COLUMN "temp_sejong2".JIBUN2 IS '';
COMMENT ON COLUMN "temp_sejong2".ZIPCODE2 IS '';
COMMENT ON COLUMN "temp_sejong2".ZIPSEQ IS '';
COMMENT ON TABLE  "vw_coach_academy_info" IS '';
COMMENT ON COLUMN "vw_coach_academy_info".ACA_IDX IS '';
COMMENT ON COLUMN "vw_coach_academy_info".TITLE IS '';
COMMENT ON COLUMN "vw_coach_academy_info"."LOCATION" IS '';
COMMENT ON COLUMN "vw_coach_academy_info".INSTRUCTOR_HNAME IS '';
COMMENT ON COLUMN "vw_coach_academy_info".TARGETS IS '';
COMMENT ON COLUMN "vw_coach_academy_info".TERMSDT IS '';
COMMENT ON COLUMN "vw_coach_academy_info".TERMEDT IS '';
COMMENT ON COLUMN "vw_coach_academy_info".ACADEMY_TIME_MINUTE IS '';
COMMENT ON COLUMN "vw_coach_academy_info".PROCESS IS '';
COMMENT ON COLUMN "vw_coach_academy_info".BIRTH IS '';
COMMENT ON COLUMN "vw_coach_academy_info".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_academy_info".HNAME IS '';
COMMENT ON COLUMN "vw_coach_academy_info".CHILDREN IS '';
COMMENT ON TABLE  "vw_coach_disciplinary" IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".EFFECT_START IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".HNAME IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".CODE_NAME IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".REASON IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".FST_REG_DT IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".EFFECT_END IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".KEYDATE IS '';
COMMENT ON COLUMN "vw_coach_disciplinary".D_BOUND IS '';
COMMENT ON TABLE  "vw_coach_education_info" IS '';
COMMENT ON COLUMN "vw_coach_education_info".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_education_info".HNAME IS '';
COMMENT ON COLUMN "vw_coach_education_info".EDU_TYPE IS '';
COMMENT ON COLUMN "vw_coach_education_info".TITLE IS '';
COMMENT ON COLUMN "vw_coach_education_info".GUBUN IS '';
COMMENT ON COLUMN "vw_coach_education_info".EDU_YEAR IS '';
COMMENT ON COLUMN "vw_coach_education_info".TERM_START IS '';
COMMENT ON COLUMN "vw_coach_education_info".TERM_END IS '';
COMMENT ON COLUMN "vw_coach_education_info".INSTRUCTOR_HNAME IS '';
COMMENT ON COLUMN "vw_coach_education_info".PLACE IS '';
COMMENT ON COLUMN "vw_coach_education_info".BEST IS '';
COMMENT ON COLUMN "vw_coach_education_info".CANCEL_TYPE IS '';
COMMENT ON COLUMN "vw_coach_education_info".KFA_CODE IS '';
COMMENT ON COLUMN "vw_coach_education_info".AFC_CODE IS '';
COMMENT ON COLUMN "vw_coach_education_info".EDU_TIME IS '';
COMMENT ON TABLE  "vw_coach_history" IS '';
COMMENT ON COLUMN "vw_coach_history".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_history".HNAME IS '';
COMMENT ON COLUMN "vw_coach_history".ACTIVITY IS '';
COMMENT ON COLUMN "vw_coach_history".TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_history"."POSITION" IS '';
COMMENT ON COLUMN "vw_coach_history".STATUS IS '';
COMMENT ON COLUMN "vw_coach_history".KEYDATE IS '';
COMMENT ON COLUMN "vw_coach_history".AFTER_TEAMID IS '';
COMMENT ON COLUMN "vw_coach_history".AFTER_TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_history".AFTER_POSITION IS '';
COMMENT ON COLUMN "vw_coach_history".GRADE IS '';
COMMENT ON COLUMN "vw_coach_history".BEFORE_TEAMID IS '';
COMMENT ON COLUMN "vw_coach_history".BEFORE_TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_history".BEFORE_POSITION IS '';
COMMENT ON COLUMN "vw_coach_history".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_history".DEL_YN IS '';
COMMENT ON TABLE  "vw_coach_info_apply" IS '';
COMMENT ON COLUMN "vw_coach_info_apply".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_apply".HNAME IS '';
COMMENT ON COLUMN "vw_coach_info_apply".COACH_CAREER IS '';
COMMENT ON COLUMN "vw_coach_info_apply".COACH_PLAYER IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_main" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".IDX IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".HNAME IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".BIRTHDAY IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".GENDER IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".PHOTO IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".FOREIGNER IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main".SENDYN IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_main_bak" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".IDX IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".HNAME IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".BIRTHDAY IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".GENDER IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".PHOTO IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".FOREINGNER IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_bak".REGDATE IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_main_log" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".IDX IS '고유번호 COACH_INFO_KFAEDU_MAIN_SEQ';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".CI IS '지도자 CI값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".HNAME IS '성명(한글)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".BIRTHDAY IS '생년월일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".GENDER IS '성별 M:남자 F:여자';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".PHOTO IS '지도자 사진';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".FOREIGNER IS '외국인여부 0:내국인 1:외국인';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".REGDATE IS '이관 데이터 등록일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".LOG_IDX IS 'PK용 IDX';
COMMENT ON COLUMN "vw_coach_info_kfaedu_main_log".LOG_STATE IS '등록상태 (UPDATE:U, INSERT:I)';
COMMENT ON TABLE  "vw_coach_info_kfaedu_rfsh" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".IPIN_CI IS 'CI값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".RFSH_PASS_YN IS '보수교육통과여부. 자격유지여부 (점수취득 기간에 이번연도가 포함되어있을경우 Y)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".REGDATE IS '이관 데이터 등록일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".COACHNUM IS '자격증번호';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh"."CLASS" IS '지도자 급수 P,A,B,C,D,G1(3급),G2,G3(1급),F1,F2,FT2,FT1';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".USERID IS 'ID값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".COACHNUM_GUBUN IS '자격증구분 KFA /AFC';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".LICENSE_ORDER IS '자격증 우선순위 (값이 클수록 우선순위 높음)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".NEED_SYEAR IS '계산후 이행기간 시작년도';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".NEED_EYEAR IS '계산후 이행기간 종료년도';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".NEED_GRADE IS '계산후 필요점수';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".BOSU_GRADE IS '계산후 취득점수';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".IDX IS 'PK용 IDX';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh".SENDYN IS '연동여부(Y일 경우 일 배치로 삭제)';
COMMENT ON TABLE  "vw_coach_info_kfaedu_rfsh_log" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".IPIN_CI IS 'CI값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".RFSH_PASS_YN IS '보수교육통과여부. 자격유지여부 (점수취득 기간에 이번연도가 포함되어있을경우 Y)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".REGDATE IS '이관 데이터 등록일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".COACHNUM IS '자격증번호';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log"."CLASS" IS '지도자 급수 P,A,B,C,D,G1(3급),G2,G3(1급),F1,F2,FT2,FT1';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".USERID IS 'ID값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".COACHNUM_GUBUN IS '자격증구분 KFA /AFC';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".LICENSE_ORDER IS '자격증 우선순위 (값이 클수록 우선순위 높음)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".NEED_SYEAR IS '계산후 이행기간 시작년도';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".NEED_EYEAR IS '계산후 이행기간 종료년도';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".NEED_GRADE IS '계산후 필요점수';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".BOSU_GRADE IS '계산후 취득점수';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".LOG_IDX IS 'PK용 IDX';
COMMENT ON COLUMN "vw_coach_info_kfaedu_rfsh_log".LOG_STATE IS '등록상태 (UPDATE:U, INSERT:I)';
COMMENT ON TABLE  "vw_coach_info_kfaedu_sub" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".IDX IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".GUBUN IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub"."CLASS" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".COACHNUM IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".ACQUIREMENT_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".ISSUE_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub".SENDYN IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_sub_bak" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".IDX IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".GUBUN IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak"."CLASS" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".COACHNUM IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".ACQUIREMENT_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".ISSUE_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak".SENDYN IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_sub_bak14" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".IDX IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".GUBUN IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14"."CLASS" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".COACHNUM IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".ACQUIREMENT_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".ISSUE_DATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_bak14".SENDYN IS '';
COMMENT ON TABLE  "vw_coach_info_kfaedu_sub_log" IS '';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".IDX IS '고유번호 COACH_INFO_KFAEDU_SUB_SEQ';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".CI IS '지도자 CI값';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".COACHNUM IS '지도자번호 라이센스 번호';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log"."CLASS" IS '지도자 급수 P,A,B,C,D,G1(3급),G2,G3(1급),F1,F2,FT2,FT1';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".GUBUN IS '자격증구분 KFA /AFC';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".ACQUIREMENT_DATE IS '취득일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".ISSUE_DATE IS '갱신일 (유효기간 종료일)';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".TRANSFER_YN IS '데이터 이관 완료 여부 Y:완료 N:미완료';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".REGDATE IS '이관 데이터 등록일';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".LOG_IDX IS 'PK용 IDX';
COMMENT ON COLUMN "vw_coach_info_kfaedu_sub_log".LOG_STATE IS '등록상태 (UPDATE:U, INSERT:I)';
COMMENT ON TABLE  "vw_coach_license_info" IS '';
COMMENT ON COLUMN "vw_coach_license_info".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_license_info".HNAME IS '';
COMMENT ON COLUMN "vw_coach_license_info".KFA_CODE IS '';
COMMENT ON COLUMN "vw_coach_license_info".AFC_CODE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_KFA_CODE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_AFC_CODE IS '';
COMMENT ON COLUMN "vw_coach_license_info".FUSAL_CODE IS '';
COMMENT ON COLUMN "vw_coach_license_info".KFA_REGDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".AFC_REGDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_KFA_REGDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_AFC_REGDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".FUSAL_REGDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".KFA_UPDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".AFC_UPDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_KFA_UPDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".GK_AFC_UPDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".FUSAL_UPDATE IS '';
COMMENT ON COLUMN "vw_coach_license_info".FUSAL_AFC_CODE IS '';
COMMENT ON TABLE  "vw_coach_license_lastnum" IS '';
COMMENT ON COLUMN "vw_coach_license_lastnum".GUBUN IS '';
COMMENT ON COLUMN "vw_coach_license_lastnum".LIC_IDX IS '';
COMMENT ON TABLE  "vw_coach_player_history" IS '';
COMMENT ON COLUMN "vw_coach_player_history".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_player_history".HNAME IS '';
COMMENT ON COLUMN "vw_coach_player_history".PROCESSING_DATE IS '';
COMMENT ON COLUMN "vw_coach_player_history".TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_player_history".FLAG IS '';
COMMENT ON COLUMN "vw_coach_player_history".KEYDATE IS '';
COMMENT ON TABLE  "vw_coach_trade_history" IS '';
COMMENT ON COLUMN "vw_coach_trade_history".IPIN_CI IS '';
COMMENT ON COLUMN "vw_coach_trade_history".ACTIVITY IS '';
COMMENT ON COLUMN "vw_coach_trade_history".STATUS IS '';
COMMENT ON COLUMN "vw_coach_trade_history".HNAME IS '';
COMMENT ON COLUMN "vw_coach_trade_history".AFTER_TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_trade_history".AFTER_POSITION IS '';
COMMENT ON COLUMN "vw_coach_trade_history".BEFORE_TEAMNAME IS '';
COMMENT ON COLUMN "vw_coach_trade_history".BEFORE_POSITION IS '';
COMMENT ON COLUMN "vw_coach_trade_history".REGDATE IS '';
COMMENT ON COLUMN "vw_coach_trade_history".KEYDATE IS '';
COMMENT ON TABLE  "za_table_cnt" IS '';
COMMENT ON COLUMN "za_table_cnt".TABLE_NAME IS '';
COMMENT ON COLUMN "za_table_cnt".CNT IS '';
COMMENT ON COLUMN "za_table_cnt".REG_DT IS '';
ALTER TABLE "fb_adminmenuauth" ADD CONSTRAINT "pk_fb_adminmenuauth" PRIMARY KEY (MENU,GADMIN);
ALTER TABLE "fb_batchjob" ADD CONSTRAINT "pk_fb_batchjob" PRIMARY KEY (JOB_SEQ);
ALTER TABLE "fb_batchjob_log" ADD CONSTRAINT "pk_fb_batchjob_log" PRIMARY KEY (LOGS);
ALTER TABLE "fb_batch_error_log" ADD CONSTRAINT "pk_fb_batch_error_log" PRIMARY KEY (IDX);
ALTER TABLE "fb_batch_task_log" ADD CONSTRAINT "pk_fb_batch_task_log" PRIMARY KEY (SEQ);
ALTER TABLE "fb_betaprogress" ADD CONSTRAINT "pk_fb_betaprogress" PRIMARY KEY (SUBJSEQ,SUBJ,USERID,LESSON,"MODULE");
ALTER TABLE "fb_betaprogress_log" ADD CONSTRAINT "pk_fb_betaprogress_log" PRIMARY KEY (SUBJSEQ,SUBJ,USERID,LESSON,"MODULE",SEQ);
ALTER TABLE "fb_cancel" ADD CONSTRAINT "pk_fb_cancel" PRIMARY KEY (CANCEL_SEQ);
ALTER TABLE "fb_coach_disciplinary" ADD CONSTRAINT "pk_fb_coach_disciplinary" PRIMARY KEY (USERID,SEQ);
ALTER TABLE "fb_coach_history" ADD CONSTRAINT "pk_fb_coach_history" PRIMARY KEY (USERID,SEQ);
ALTER TABLE "fb_coach_trade_history" ADD CONSTRAINT "pk_fb_coach_trade_history" PRIMARY KEY (USERID,SEQ);
ALTER TABLE "fb_code" ADD CONSTRAINT "pk_fb_code" PRIMARY KEY (CODE,GUBUN);
ALTER TABLE "fb_codegubun" ADD CONSTRAINT "pk_fb_codegubun" PRIMARY KEY (GUBUN);
ALTER TABLE "fb_common_except" ADD CONSTRAINT "pk_fb_common_except" PRIMARY KEY (SEQ);
ALTER TABLE "fb_comp" ADD CONSTRAINT "pk_fb_comp" PRIMARY KEY (COMP);
ALTER TABLE "fb_compclass" ADD CONSTRAINT "pk_fb_compclass" PRIMARY KEY (COMP);
ALTER TABLE "fb_contents_mediakey" ADD CONSTRAINT "pk_fb_contents_mediakey" PRIMARY KEY (UPLOAD_KEY);
ALTER TABLE "fb_content_main" ADD CONSTRAINT "pk_fb_content_main" PRIMARY KEY (SEQ,GRGUBUN);
ALTER TABLE "fb_content_mapping" ADD CONSTRAINT "pk_fb_content_mapping" PRIMARY KEY (SEQ,GRGUBUN);
ALTER TABLE "fb_course" ADD CONSTRAINT "pk_fb_course" PRIMARY KEY (SUBJ,SUBJSEQ);
ALTER TABLE "fb_course_code" ADD CONSTRAINT "pk_fb_course_code" PRIMARY KEY (CODE);
ALTER TABLE "fb_culture_play" ADD CONSTRAINT "pk_fb_culture_play" PRIMARY KEY (SUBJ,SEQ,USERID);
ALTER TABLE "fb_exam" ADD CONSTRAINT "pk_fb_exam" PRIMARY KEY (SUBJ,EXAM_SEQ);
ALTER TABLE "fb_exampaper" ADD CONSTRAINT "pk_fb_exampaper" PRIMARY KEY (SUBJ,PAPER_SEQ);
ALTER TABLE "fb_exampaper_exam" ADD CONSTRAINT "pk_fb_exampaper_exam" PRIMARY KEY (SUBJ,PAPER_SEQ,EXAM_SEQ);
ALTER TABLE "fb_examresult" ADD CONSTRAINT "pk_fb_examresult" PRIMARY KEY (SUBJ,SUBJSEQ,PAPER_SEQ,USERID);
ALTER TABLE "fb_examsul" ADD CONSTRAINT "pk_fb_examsul" PRIMARY KEY (SUBJ,EXAM_SEQ,SEL_SEQ);
ALTER TABLE "fb_examsul_result" ADD CONSTRAINT "pk_fb_examsul_result" PRIMARY KEY (SUBJ,SUBJSEQ,PAPER_SEQ,EXAM_SEQ,USERID);
ALTER TABLE "fb_exam_log" ADD CONSTRAINT "pk_fb_exam_log" PRIMARY KEY (SUBJ,SUBJSEQ,PAPER_SEQ,SEQ,USERID);
ALTER TABLE "fb_gadmin" ADD CONSTRAINT "pk_fb_gadmin" PRIMARY KEY (GADMIN);
ALTER TABLE "fb_gateimage" ADD CONSTRAINT "pk_fb_gateimage" PRIMARY KEY (GRCODE);
ALTER TABLE "fb_gate_obj" ADD CONSTRAINT "pk_fb_gate_obj" PRIMARY KEY (SEQ);
ALTER TABLE "fb_gate_obj_grcode" ADD CONSTRAINT "pk_fb_gate_obj_grcode" PRIMARY KEY (GRCODE,SEQ);
ALTER TABLE "fb_grcode" ADD CONSTRAINT "pk_fb_grcode" PRIMARY KEY (GRCODE);
ALTER TABLE "fb_grcodeman" ADD CONSTRAINT "pk_fb_grcodeman" PRIMARY KEY (USERID,GADMIN,GRCODE);
ALTER TABLE "fb_grcomp" ADD CONSTRAINT "pk_fb_grcomp" PRIMARY KEY (GRCODE,COMP);
ALTER TABLE "fb_homefaq_category" ADD CONSTRAINT "pk_fb_homefaq_category" PRIMARY KEY (CATEGORY);
ALTER TABLE "fb_keyword" ADD CONSTRAINT "pk_fb_keyword" PRIMARY KEY (GRCODE,KEYWORD);
ALTER TABLE "fb_kfa_license_info" ADD CONSTRAINT "pk_fb_kfa_license_info" PRIMARY KEY (SEQ);
ALTER TABLE "fb_kfa_mstold" ADD CONSTRAINT "pk_fb_kfa_mstold" PRIMARY KEY (SEQ);
ALTER TABLE "fb_languagescript" ADD CONSTRAINT "pk_fb_languagescript" PRIMARY KEY (LANGKEY);
ALTER TABLE "fb_languagescript_dev" ADD CONSTRAINT "pk_fb_languagescript_dev" PRIMARY KEY (LANGKEY);
ALTER TABLE "fb_license" ADD CONSTRAINT "pk_fb_license" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_license_gubun" ADD CONSTRAINT "pk_fb_license_gubun" PRIMARY KEY (GUBUN);
ALTER TABLE "fb_license_issued" ADD CONSTRAINT "pk_fb_license_issued" PRIMARY KEY (LICENSE_NO,ORDR_IDXX);
ALTER TABLE "fb_license_update_log" ADD CONSTRAINT "pk_fb_license_update_log" PRIMARY KEY (SEQ);
ALTER TABLE "fb_login" ADD CONSTRAINT "pk_fb_login" PRIMARY KEY (USERID,LOGIN_SEQ);
ALTER TABLE "fb_loginchk_log" ADD CONSTRAINT "pk_fb_loginchk_log" PRIMARY KEY (SEQ);
ALTER TABLE "fb_manager" ADD CONSTRAINT "pk_fb_manager" PRIMARY KEY (USERID,GADMIN);
ALTER TABLE "fb_manager_index" ADD CONSTRAINT "pk_fb_manager_index" PRIMARY KEY (USERID,MENUCODE);
ALTER TABLE "fb_manager_menuauth" ADD CONSTRAINT "pk_fb_manager_menuauth" PRIMARY KEY (USERID,SUBJ,SUBJSEQ);
ALTER TABLE "fb_manager_remote_menu" ADD CONSTRAINT "pk_fb_manager_remote_menu" PRIMARY KEY (USERID,MENU);
ALTER TABLE "fb_member" ADD CONSTRAINT "pk_fb_member" PRIMARY KEY (USERID);
ALTER TABLE "fb_membercode" ADD CONSTRAINT "pk_fb_membercode" PRIMARY KEY (CODE);
ALTER TABLE "fb_member_20180326" ADD CONSTRAINT "pk_fb_member_20180326" PRIMARY KEY (USERID);
ALTER TABLE "fb_member_mobile" ADD CONSTRAINT "pk_fb_member_mobile" PRIMARY KEY (SEQ);
ALTER TABLE "fb_menu" ADD CONSTRAINT "pk_fb_menu" PRIMARY KEY (MENU);
ALTER TABLE "fb_mfmenu" ADD CONSTRAINT "pk_fb_mfmenu" PRIMARY KEY (MENU);
ALTER TABLE "fb_mfmenu_subj" ADD CONSTRAINT "pk_fb_mfmenu_subj" PRIMARY KEY (SUBJ,MENU);
ALTER TABLE "fb_oath" ADD CONSTRAINT "pk_fb_oath" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_oath_agree" ADD CONSTRAINT "pk_fb_oath_agree" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_payment" ADD CONSTRAINT "pk_fb_payment" PRIMARY KEY (ORDR_IDXX);
ALTER TABLE "fb_payment_20180326" ADD CONSTRAINT "pk_fb_payment_20180326" PRIMARY KEY (ORDR_IDXX);
ALTER TABLE "fb_player_history" ADD CONSTRAINT "pk_fb_player_history" PRIMARY KEY (USERID,SEQ);
ALTER TABLE "fb_progress" ADD CONSTRAINT "pk_fb_progress" PRIMARY KEY (SUBJ,SUBJSEQ,USERID,"MODULE",LESSON);
ALTER TABLE "fb_progress_log" ADD CONSTRAINT "pk_fb_progress_log" PRIMARY KEY (SUBJSEQ,SUBJ,USERID,LESSON,"MODULE",SEQ);
ALTER TABLE "fb_progress_mobile" ADD CONSTRAINT "pk_fb_progress_mobile" PRIMARY KEY (SUBJ,SUBJSEQ,USERID,"MODULE",LESSON,CONTENTNO);
ALTER TABLE "fb_propose" ADD CONSTRAINT "pk_fb_propose" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_pwd_history" ADD CONSTRAINT "pk_fb_pwd_history" PRIMARY KEY (USERID,SEQ);
ALTER TABLE "fb_refund_master" ADD CONSTRAINT "pk_fb_refund_master" PRIMARY KEY (SEQ,SUBJGUBUN,"YEAR");
ALTER TABLE "fb_report_result" ADD CONSTRAINT "pk_fb_report_result" PRIMARY KEY (SUBJ,SUBJSEQ,REPORT,USERID);
ALTER TABLE "fb_repository_file" ADD CONSTRAINT "pk_fb_repository_file" PRIMARY KEY (FILESEQ,SEQ,MASTERSEQ);
ALTER TABLE "fb_retest" ADD CONSTRAINT "pk_fb_retest" PRIMARY KEY (SUBJ,SUBJSEQ,USERID,RETESTSEQ);
ALTER TABLE "fb_return_url" ADD CONSTRAINT "pk_fb_return_url" PRIMARY KEY (SDT);
ALTER TABLE "fb_send_history" ADD CONSTRAINT "pk_fb_send_history" PRIMARY KEY (GUBUN,FORM_ID,SEND_SEQ);
ALTER TABLE "fb_send_main" ADD CONSTRAINT "pk_fb_send_main" PRIMARY KEY (GUBUN,FORM_ID);
ALTER TABLE "fb_send_param" ADD CONSTRAINT "pk_fb_send_param" PRIMARY KEY (GUBUN,FORM_ID,PARAM_NM);
ALTER TABLE "fb_stold" ADD CONSTRAINT "pk_fb_stold" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_student" ADD CONSTRAINT "pk_fb_student" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_student_grade" ADD CONSTRAINT "pk_fb_student_grade" PRIMARY KEY (SUBJ,SUBJSEQ,USERID,GRADE);
ALTER TABLE "fb_subj" ADD CONSTRAINT "pk_fb_subj" PRIMARY KEY (SUBJ);
ALTER TABLE "fb_subjatt" ADD CONSTRAINT "pk_fb_subjatt" PRIMARY KEY (GRCODE,SUBJCLASS);
ALTER TABLE "fb_subjatt_program" ADD CONSTRAINT "pk_fb_subjatt_program" PRIMARY KEY (GRCODE,SUBJCLASS,SEQ);
ALTER TABLE "fb_subjlesson" ADD CONSTRAINT "pk_fb_subjlesson" PRIMARY KEY (SUBJ,"MODULE",LESSON);
ALTER TABLE "fb_subjlesson_content" ADD CONSTRAINT "pk_fb_subjlesson_content" PRIMARY KEY (SUBJ,"MODULE",LESSON,CONTENTNO,PAGENO);
ALTER TABLE "fb_subjlesson_mobile" ADD CONSTRAINT "pk_fb_subjlesson_mobile" PRIMARY KEY (SUBJ,"MODULE",LESSON,CONTENTNO);
ALTER TABLE "fb_subjlesson_outlink" ADD CONSTRAINT "pk_fb_subjlesson_outlink" PRIMARY KEY (SUBJ,"MODULE",LESSON,CONTENTNO);
ALTER TABLE "fb_subjmodule" ADD CONSTRAINT "pk_fb_subjmodule" PRIMARY KEY (SUBJ,"MODULE");
ALTER TABLE "fb_subjseq" ADD CONSTRAINT "pk_fb_subjseq" PRIMARY KEY (SUBJ,SUBJSEQ);
ALTER TABLE "fb_subjseq_exam" ADD CONSTRAINT "pk_fb_subjseq_exam" PRIMARY KEY (SUBJ,SUBJSEQ,PAPER_SEQ);
ALTER TABLE "fb_subjseq_grade" ADD CONSTRAINT "pk_fb_subjseq_grade" PRIMARY KEY (SUBJ,SUBJSEQ,GRADE);
ALTER TABLE "fb_subjseq_qualification" ADD CONSTRAINT "pk_fb_subjseq_qualification" PRIMARY KEY (SUBJ,SUBJSEQ,CODE);
ALTER TABLE "fb_subjseq_report" ADD CONSTRAINT "pk_fb_subjseq_report" PRIMARY KEY (SUBJ,SUBJSEQ,REPORT);
ALTER TABLE "fb_subjseq_sulpage" ADD CONSTRAINT "pk_fb_subjseq_sulpage" PRIMARY KEY (SUBJ,SUBJSEQ,SULPAGE);
ALTER TABLE "fb_subjseq_tutor" ADD CONSTRAINT "pk_fb_subjseq_tutor" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_subj_culture" ADD CONSTRAINT "pk_fb_subj_culture" PRIMARY KEY (SUBJ);
ALTER TABLE "fb_subj_culture_seq" ADD CONSTRAINT "pk_fb_subj_culture_seq" PRIMARY KEY (SUBJ,SEQ);
ALTER TABLE "fb_subj_grcode" ADD CONSTRAINT "pk_fb_subj_grcode" PRIMARY KEY (GRCODE,SUBJ);
ALTER TABLE "fb_subj_gubun" ADD CONSTRAINT "pk_fb_subj_gubun" PRIMARY KEY (GRCODE,GUBUN);
ALTER TABLE "fb_subj_keyword" ADD CONSTRAINT "pk_fb_subj_keyword" PRIMARY KEY (GRCODE,SUBJ,KEYWORD);
ALTER TABLE "fb_subj_schedule" ADD CONSTRAINT "pk_fb_subj_schedule" PRIMARY KEY (SUBJ_SCHEDULE);
ALTER TABLE "fb_subj_schedule_detail" ADD CONSTRAINT "pk_fb_subj_schedule_detail" PRIMARY KEY (SUBJ_SCHEDULE,SUB_SEQ);
ALTER TABLE "fb_sul" ADD CONSTRAINT "pk_fb_sul" PRIMARY KEY (SUL);
ALTER TABLE "fb_sulpage" ADD CONSTRAINT "pk_fb_sulpage" PRIMARY KEY (SULPAGE);
ALTER TABLE "fb_sulpage_comp" ADD CONSTRAINT "pk_fb_sulpage_comp" PRIMARY KEY (COMP,SULPAGE);
ALTER TABLE "fb_sulpage_result" ADD CONSTRAINT "pk_fb_sulpage_result" PRIMARY KEY (SUBJ,SUBJSEQ,COMP,SULPAGE,USERID);
ALTER TABLE "fb_sulpage_sul" ADD CONSTRAINT "pk_fb_sulpage_sul" PRIMARY KEY (SULPAGE,SUL);
ALTER TABLE "fb_sulpage_sul_result" ADD CONSTRAINT "pk_fb_sulpage_sul_result" PRIMARY KEY (SUBJ,SUBJSEQ,COMP,SULPAGE,SUL,USERID);
ALTER TABLE "fb_sulsel" ADD CONSTRAINT "pk_fb_sulsel" PRIMARY KEY (SUL,SULSEL);
ALTER TABLE "fb_sulsel_scale" ADD CONSTRAINT "pk_fb_sulsel_scale" PRIMARY KEY (SCALE,SCALE_SEL);
ALTER TABLE "fb_sul_scale" ADD CONSTRAINT "pk_fb_sul_scale" PRIMARY KEY (SCALE);
ALTER TABLE "fb_system_board" ADD CONSTRAINT "pk_fb_system_board" PRIMARY KEY (MASTERSEQ,SEQ);
ALTER TABLE "fb_system_boardcategory" ADD CONSTRAINT "pk_fb_system_boardcategory" PRIMARY KEY (MASTERSEQ,CATEGORY);
ALTER TABLE "fb_system_boardmaster" ADD CONSTRAINT "pk_fb_system_boardmaster" PRIMARY KEY (MASTERSEQ);
ALTER TABLE "fb_system_board_log" ADD CONSTRAINT "pk_fb_system_board_log" PRIMARY KEY (MASTERSEQ,SEQ,USERID);
ALTER TABLE "fb_system_grcode" ADD CONSTRAINT "pk_fb_system_grcode" PRIMARY KEY (GRCODE,MASTERSEQ,SEQ);
ALTER TABLE "fb_system_license" ADD CONSTRAINT "pk_fb_system_license" PRIMARY KEY (MASTERSEQ,SEQ,LICENSE);
ALTER TABLE "fb_tutor" ADD CONSTRAINT "pk_fb_tutor" PRIMARY KEY (USERID);
ALTER TABLE "fb_tutor_notice" ADD CONSTRAINT "pk_fb_tutor_notice" PRIMARY KEY (SEQ);
ALTER TABLE "fb_tutor_pay_master" ADD CONSTRAINT "pk_fb_tutor_pay_master" PRIMARY KEY ("YEAR",MONTH,GRADE);
ALTER TABLE "fb_tutor_qna" ADD CONSTRAINT "pk_fb_tutor_qna" PRIMARY KEY (SEQ);
ALTER TABLE "fb_tutor_qna_result" ADD CONSTRAINT "pk_fb_tutor_qna_result" PRIMARY KEY (SEQ);
ALTER TABLE "fb_tutor_subj" ADD CONSTRAINT "pk_fb_tutor_subj" PRIMARY KEY (USERID,SUBJ);
ALTER TABLE "fb_tutor_sul_monitoring" ADD CONSTRAINT "pk_fb_tutor_sul_monitoring" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_usermenu" ADD CONSTRAINT "pk_fb_usermenu" PRIMARY KEY (MENU,GRCODE);
ALTER TABLE "fb_usermenu_common" ADD CONSTRAINT "pk_fb_usermenu_common" PRIMARY KEY (MENU);
ALTER TABLE "fb_usermenu_master" ADD CONSTRAINT "pk_fb_usermenu_master" PRIMARY KEY (MENU);
ALTER TABLE "fb_user_favorite_temp" ADD CONSTRAINT "pk_fb_user_favorite_temp" PRIMARY KEY (SUBJ,USERID);
ALTER TABLE "fb_waitinglist" ADD CONSTRAINT "pk_fb_waitinglist" PRIMARY KEY (SUBJ,SUBJSEQ,USERID);
ALTER TABLE "fb_waitinglist_history" ADD CONSTRAINT "pk_fb_waitinglist_history" PRIMARY KEY (SEQ);
ALTER TABLE "non_member" ADD CONSTRAINT "pk_non_member" PRIMARY KEY (SEQ);
ALTER TABLE "non_member_connect" ADD CONSTRAINT "pk_non_member_connect" PRIMARY KEY (SEQ);
ALTER TABLE "vw_coach_info_kfaedu_main_log" ADD CONSTRAINT "pk_vw_coach_info_kfaedu_main_log" PRIMARY KEY (LOG_IDX);
ALTER TABLE "vw_coach_info_kfaedu_rfsh" ADD CONSTRAINT "pk_vw_coach_info_kfaedu_rfsh" PRIMARY KEY (IDX);
ALTER TABLE "vw_coach_info_kfaedu_rfsh_log" ADD CONSTRAINT "pk_vw_coach_info_kfaedu_rfsh_log" PRIMARY KEY (LOG_IDX);
ALTER TABLE "vw_coach_info_kfaedu_sub_log" ADD CONSTRAINT "pk_vw_coach_info_kfaedu_sub_log" PRIMARY KEY (LOG_IDX);
