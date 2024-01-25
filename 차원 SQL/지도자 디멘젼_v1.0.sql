--------------------------------------지도자 자격 현황-----------------------------
--wd_coach

truncate table wd_coach;

INSERT INTO  kfadw.wd_coach;


select coach_id  
     , coach_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select coach_id
		     , coach_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY coach_id  ) AS row_num
		     , sort_ordr
		  from ( 
				select a.coach_id
				     , a.coach_nm
				     , a.brthdy
				     , concat(coach_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))|| 
				        CASE WHEN SUBSTRING(split_part(coach_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(coach_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(coach_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm 
				     , (ROW_NUMBER() over(ORDER BY substring(a.coach_nm,1,1), substring(a.coach_nm,2,1),substring(a.coach_nm,3,1),a.coach_id)) AS sort_ordr
				  from (
						select distinct jumin AS coach_id
						     , case when hname is null then '미입력' else hname end AS coach_nm
						     , case when jumin ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
										 when SUBSTRING(split_part(jumin ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(jumin ::varchar, '-', 1) 
								         when SUBSTRING(split_part(jumin ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(jumin ::varchar, '-', 1)
										 else '19'||split_part(jumin ::varchar, '-', 1)
										 end  
							  else '99991231' end brthdy
						  from joinkfa."coach_info#" 
						 ) a
				) c)d
 ;
 
--wd_sexdstn

truncate table wd_sexdstn;

INSERT INTO  kfadw.wd_sexdstn (sexdstn_cde,sexdstn_nm,sort_ordr)
SELECT THRD_GB AS sexdstn_cde
     , KOR_CD_NM  AS sexdstn_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.comcm010
 WHERE FRST_GB = 'AP02'
   AND SCND_GB = 'AP0201'
   AND THRD_GB != '*'
     ;

--wd_coach_qualf_issu_instt
    
truncate table wd_coach_qualf_issu_instt;
    
INSERT INTO kfadw.wd_coach_qualf_issu_instt VALUES ('KFA','KFA',1);
INSERT INTO kfadw.wd_coach_qualf_issu_instt VALUES ('AFC','AFC',2);

--wd_coach_qualf_item
truncate table wd_coach_qualf_item;

INSERT INTO  kfadw.wd_coach_qualf_item


SELECT THRD_GB AS coach_qualf_item_cde
     , KOR_CD_NM  AS coach_qualf_item_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.comcm010
 WHERE FRST_GB = 'AP02'
   AND SCND_GB = 'AP0204'
   AND THRD_GB != '*'
     ;

--wd_coach_qualf_ty
    
truncate table wd_coach_qualf_ty;    
    
INSERT INTO  kfadw.wd_coach_qualf_ty
SELECT THRD_GB AS coach_qualf_ty_cde
     , KOR_CD_NM  AS coach_qualf_ty_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'CO01'
  AND SCND_GB = 'CO0105'
  AND THRD_GB != '*'
    ;

--wd_coach_qualf_wsp -- 확인 필요 
   
truncate table wd_coach_qualf_wsp;
INSERT INTO  kfadw.wd_coach_qualf_wsp
SELECT THRD_GB  AS coach_qualf_wsp_cde
     , KOR_CD_NM  AS coach_qualf_wsp_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'CO01'
  AND SCND_GB = 'CO0106'
  AND THRD_GB != '*'
    ;

--wd_qualf_mntnc
   
truncate table wd_qualf_mntnc;
   
INSERT INTO kfadw.wd_qualf_mntnc VALUES('Y','유지',1);
INSERT INTO kfadw.wd_qualf_mntnc VALUES('N','정지',2);

--wd_nation

truncate table wd_nation;

INSERT INTO  kfadw.wd_nation ;
SELECT THRD_GB  AS coach_qualf_wsp_cde
     , KOR_CD_NM  AS coach_qualf_wsp_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'AP01'
  AND SCND_GB = 'N01'
  AND THRD_GB != '*'
    ;
  
SELECT * FROM COMCM010
 WHERE SCND_GB ='A08' 
   AND KOR_CD_NM  = 'KR'
   ;


------------------------------------지도자 팀 대회 현황----------------------------------------------
   

---wd_team-------
   
INSERT INTO  kfadw.;
SELECT --stdr_year,
     team_id, team_nm, (ROW_NUMBER() over(ORDER BY team_id )) AS sort_ordr
FROM (SELECT DISTINCT A.REGDATE AS stdr_year, A.PSITN_TEAM_ID AS team_id, B.TEAMNAME AS team_nm
 		FROM (SELECT TO_CHAR(REGDATE,'YYYY') AS REGDATE  ,DECODE(BEFORE_TEAMID, NULL, AFTER_TEAMID, BEFORE_TEAMID) AS PSITN_TEAM_ID
  		  		FROM coach_team# ) A 
 		LEFT OUTER JOIN 
  	   (SELECT DISTINCT TEAMID, TEAMNAME FROM match_coach_result ) B 
 ON A.psitn_team_id = B.TEAMID 
 ORDER BY team_id, stdr_year) 
;

INSERT INTO  kfadw.wd_team
SELECT A.stdr_year, A.team_id, A.team_nm ,(ROW_NUMBER() over(ORDER BY team_id )) AS sort_ordr
FROM (
SELECT DISTINCT TO_CHAR(FST_REG_DT,'YYYY') AS stdr_year
     , TEAMID AS team_id 
     , TEAMNAME AS team_nm
    FROM joinkfa.match_coach_result)A;



SELECT * FROM COACH_TEAM#;

----wd_coach_clsf-------
INSERT INTO  kfadw.wd_coach_clsf
SELECT THRD_GB  AS coach_clsf_cde
     , KOR_CD_NM  AS coach_clsf_NM
     , SORT_SEQ AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE FRST_GB = 'CO01'
  AND SCND_GB = 'CO0107'
  AND THRD_GB != '*'
    ;
   
--------wd_area  
INSERT INTO  kfadw.wd_area;
  SELECT THRD_GB AS signgu_cde
       , KOR_CD_NM AS signgu_nm
       , SCND_GB AS ctprvn_cde 
       , SCND_NM AS ctprvn_nm
       , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
   FROM joinkfa.COMCM010 
  WHERE FRST_GB ='P03'
    AND SCND_GB != '*'
  ORDER BY THRD_GB ;
 
 
 SELECT THRD_GB AS signgu_cde
       , KOR_CD_NM AS signgu_nm
       , SCND_GB AS ctprvn_cde 
       , SCND_NM AS ctprvn_nm
       , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
   FROM joinkfa.COMCM010 
  WHERE FRST_GB ='P03'
    and kor_cd_nm  in ('강원','인천','부산','울산','시도그룹','경기','광주','경북','전남','전북','충남','제주'
,'충북'
,'대전'
,'서울'
,'세종'
,'대구'
,'경남')
--    AND SCND_GB != '*'
  ORDER BY THRD_GB 

/*  *다수라서 키 안됨 --> *를 가지고 있는 데이터는 제외해야할 가능성 높음 
	시군구 코드로는 네임 뽑을수 있는데 
	시도 코드로는 네임을 못뽑음 (NULL)*/
  
 
 
 
 
   



 
 select * from joinkfa.MATCH_INFO where REGDATE iS null;
------등록일 NULL 경우인 데이터 존재 수정일로 등록
 
-------wd_cmpet_class
INSERT INTO  kfadw.wd_cmpet_class
SELECT THRD_GB  AS cmpet_class_cde
     , KOR_CD_NM  AS cmpet_class_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE FRST_GB = 'AP01'
   AND SCND_GB = 'F30'
   AND THRD_GB != '*'
    ;


-------wd_home_team
SELECT * FROM "MATCH_SCORE#";

INSERT INTO kfadw.wd_home_team VALUES ('H','홈팀',1);
INSERT INTO kfadw.wd_home_team VALUES ('A','원정팀',2);



-------wd_rcord_se
INSERT INTO  kfadw.wd_rcord_se
SELECT THRD_GB  AS rcord_se_cde
     , KOR_CD_NM  AS rcord_se_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'MA04'
   AND SCND_GB = 'MA0408'
   AND THRD_GB != '*'
    ;

-------wd_bnch
   
  INSERT INTO kfadw.wd_bnch VALUES ('Y','경고 및 퇴장',1);
  INSERT INTO kfadw.wd_bnch VALUES ('N','해당없음',2);
 
 
-------wd_doping_edc_compl
 
 INSERT INTO kfadw.wd_doping_edc_compl VALUES('Y','이수',1);
 INSERT INTO kfadw.wd_doping_edc_compl VALUES('N','미이수',2);
 

-------wd_hnrt_edc_compl

INSERT INTO kfadw.wd_hnrt_edc_compl VALUES('Y','이수',1);
INSERT INTO kfadw.wd_hnrt_edc_compl VALUES('N','미이수',2);








