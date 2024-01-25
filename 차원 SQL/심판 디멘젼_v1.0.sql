-----------------referee_id--- 사용 안함

SELECT to_char(WDATE,'yyyy'), usrkey, hname from REFEREE_INFO#
 WHERE to_char(wdate,'yyyy')= '2021'
;


--------------------------------심판 배정

----------------wd_referee_no


select referee_no  
     , referee_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select referee_no
		     , referee_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY referee_no  ) AS row_num
		     , sort_ordr
		  from ( 
				select referee_no
				     , referee_nm
				     , brthdy
					-- , referee_nm||'/'||brthdy as hmnm_se_nm
				     , concat(referee_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				       CASE WHEN SUBSTRING(split_part(usrkey ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(usrkey ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(usrkey ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(referee_nm,1,1), substring(referee_nm,2,1),substring(referee_nm,3,1),referee_no) ) AS sort_ordr
				  from (
						select ref_no as referee_no
						     , case when hname  is null then '미입력' else hname END as referee_nm
						     , case when usrkey ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
										   when SUBSTRING(split_part(usrkey ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(usrkey ::varchar, '-', 1) 
										   when SUBSTRING(split_part(usrkey ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(usrkey ::varchar, '-', 1)
										   else '19'||split_part(usrkey ::varchar, '-', 1)
										   end  
				 					else '99991231' end brthdy
				 			 , usrkey
						     from "referee_info#"
					    ) a
					    --where char_length(brthdy) > 8 
					  --  where referee_no = '9000000864'
					)a)b
				     ;
insert into kfadm.wd_referee_no values(0,'미입력','99991231','미입력/99991231',999999998);
insert into kfadm.wd_referee_no values(23,'미입력','99991231','미입력/99991231',999999997);
insert into kfadm.wd_referee_no values(42,'미입력','99991231','미입력/99991231',999999996);
insert into kfadm.wd_referee_no values(9000000033,'미입력','99991231','미입력/99991231',999999995);
insert into kfadm.wd_referee_no values(10000000122,'미입력','99991231','미입력/99991231',999999994);




  select * from "referee_info#";


----------------wd_referee


   
 select A.usrkey as referee_id
      , case when B.hname is null then '입력정보 없음' else B.hname end  as referee_nm
      ,  case
		   when SUBSTRING(split_part(A.usrkey ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(A.usrkey ::varchar, '-', 1) 
		   when SUBSTRING(split_part(A.usrkey ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(A.usrkey ::varchar, '-', 1)
		   else '19'||split_part(A.usrkey ::varchar, '-', 1)
		   end  brthdy
      , (ROW_NUMBER() over(ORDER BY A.usrkey )) AS sort_ordr
  from "referee_education_per_histn#" A left outer join "jn_master_new#" B
    on A.usrkey = B.jumin
   group by A.usrkey ,B.hname
    ;
   
   
select referee_id  
     , referee_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select referee_id
		     , referee_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY referee_id  ) AS row_num
		     , sort_ordr
		  from (    
				select referee_id
				     , referee_nm
				     , brthdy
					-- , referee_nm||'/'||brthdy  as hmnm_se_nm
				     , concat(referee_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
				       CASE WHEN SUBSTRING(split_part(referee_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(referee_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(referee_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(referee_nm,1,1), substring(referee_nm,2,1),substring(referee_nm,3,1),referee_id )) AS sort_ordr
				  from (
						select A.usrkey as referee_id
						      , case when B.hname is null then '미입력' else B.hname end  as referee_nm
						      , case when A.usrkey ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-' --'^\d{6}-' --
						            then  case
								   when SUBSTRING(split_part(A.usrkey ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(A.usrkey ::varchar, '-', 1) 
								   when SUBSTRING(split_part(A.usrkey ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(A.usrkey ::varchar, '-', 1)
								   else split_part(A.usrkey ::varchar, '-', 1)
								   end  
								else '99991231' end brthdy
						  from joinkfa."referee_education_per_histn#" A left outer join joinkfa."jn_master_new#" B
						    on A.usrkey = B.jumin
				  		   group by A.usrkey ,B.hname
				      ) a
				-- where char_length(brthdy) > 8
				 --where referee_nm  ='이규혁'
			)a)b
    ;
   



---------------------wd_referee_se

 INSERT INTO kfadw.wd_referee_se VALUES ('^','미입력',999999999);
 INSERT INTO kfadw.wd_referee_se VALUES ('HR1','주심1',1);
 INSERT INTO kfadw.wd_referee_se VALUES ('HR2','주심2',2);
 INSERT INTO kfadw.wd_referee_se VALUES ('AR1','부심1',3);
 INSERT INTO kfadw.wd_referee_se VALUES ('AR2','부심2',4);
 INSERT INTO kfadw.wd_referee_se VALUES ('AAR1','추가부심1',5);
 INSERT INTO kfadw.wd_referee_se VALUES ('AAR2','추가부심2',6);
 INSERT INTO kfadw.wd_referee_se VALUES ('FO','대기심',7);
 INSERT INTO kfadw.wd_referee_se VALUES ('V','VAR',8);
 INSERT INTO kfadw.wd_referee_se VALUES ('AV','AVAR',9);
 INSERT INTO kfadw.wd_referee_se VALUES ('T','계시원(미사용)',10);
 INSERT INTO kfadw.wd_referee_se VALUES ('RA','심판평가관',11);



----------------------wd_referee_assr_reprt
INSERT INTO kfadw.wd_referee_assr_reprt VALUES('^','미입력',999999999);
INSERT INTO kfadw.wd_referee_assr_reprt VALUES('Y','평가관보고서 필수',1);
INSERT INTO kfadw.wd_referee_assr_reprt VALUES('N','평가관보고서 필수아님',2);


-----------------------wd_referee_system
insert into kfadw.wd_referee_system;


SELECT SCND_GB AS referee_system_cde
      , KOR_CD_NM  AS referee_system_nm
      , (ROW_NUMBER() over(ORDER BY SCND_GB DESC )) AS sort_ordr
FROM joinkfa.COMCM010 
 WHERE FRST_GB  = 'MA02'
  AND THRD_GB = '*' 
  AND SCND_GB != '*'
 ;



---------------wd_referee_dffly_score
insert into kfadw.wd_referee_dffly_score;

SELECT THRD_GB AS referee_dffly_score_cde
     , KOR_CD_NM AS referee_dffly_score_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
       FROM joinkfa.COMCM010 
 WHERE SCND_GB ='MA0402'
   AND THRD_GB != '*'
;

insert into KFADW.wd_referee_dffly_score values ('X','테이블컬럼없음',-1);
insert into KFADW.wd_referee_dffly_score values ('^','미입력',999999999);


----------------------------wd_referee_evl_reprt_se

INSERT INTO wd_referee_evl_reprt_se VALUES ('^','미입력',999999999);
INSERT INTO wd_referee_evl_reprt_se VALUES ('Y','교체',1);
INSERT INTO wd_referee_evl_reprt_se VALUES ('N','교체안함',2);



--------------wd_referee_score
insert into kfadw.wd_referee_score;


SELECT THRD_GB AS referee_score_cde
     , KOR_CD_NM AS referee_score_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
     FROM joinkfa.COMCM010 
 WHERE SCND_GB  ='MA0403'
 AND THRD_GB != '*'
 ;
insert into KFADW.wd_referee_score values ('X','테이블컬럼없음',-1);
insert into KFADW.wd_referee_score values ('^','미입력',999999999);


--------------------------------------------심판 자격 현황

------------------wd_referee
select usrkey as referee_id
     , hname  as referee_nm
     , (ROW_NUMBER() over(ORDER BY usrkey)) AS sort_ordr
  from "referee_info#";

---------wd_referee_evl_grad

 
 
 
 
select distinct  sr3_grade, sr4_grade from  referee_asse_rept;
 
insert into KFADW.wd_referee_evl_grad values ('X','테이블컬럼없음',-1);
insert into KFADW.wd_referee_evl_grad values ('^','미입력',999999999);
insert into KFADW.wd_referee_evl_grad values ('A','A',1);
insert into KFADW.wd_referee_evl_grad values ('B','B',2);
insert into KFADW.wd_referee_evl_grad values ('C','C',3);
insert into KFADW.wd_referee_evl_grad values ('D','D',4);

-----------------wd_referee_wsp

SELECT THRD_GB  AS referee_wsp_cde
     , KOR_CD_NM AS referee_wsp_NM
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE SCND_GB in ( 'L01')
   AND THRD_GB != '*'
 ;

insert into wd_referee_wsp values ('06','협회5급',8);
insert into wd_referee_wsp values ('^','미입력',999999999);

select  distinct refno4  from REFEREE_INFO_YEAR;

INSERT INTO .wd_referee_wsp (referee_wsp_cde,referee_wsp_nm,sort_ordr) VALUES
	 ('01','협회1급',1),
	 ('02','협회2급',2),
	 ('03','협회3급',3),
	 ('04','풋살',4),
	 ('05','협회4급',5),
	 ('12','지역2급',6),
	 ('13','지역3급',7),
	 ('06','협회5급',8),
	 ('FS','풋살심판',9),
	 ('^','미입력',999999999);
	 
	 
wd_referee_wsp
wd_rcord_se



----------------wd_referee_regist_asoc--

select * from referee_info_year
 where ref_no = 9110006387
  order by refno1
;
-- 01 서울
-- 04 인천
-- 06 대전
-- 03 대구
-- 07 울산
-- 02 부산
-- 05 광주
-- 10 제주
-- 08 경기
-- 09 강원
-- 11 충북
-- 12 충남
-- 15 경북
-- 16 경남
-- 13 전북
-- 14 전남
-- 17 세종

insert into kfadw.wd_referee_regist_asoc values ('^', '미입력',999999999);
insert into kfadw.wd_referee_regist_asoc values ('01', '서울',1);
insert into kfadw.wd_referee_regist_asoc values ('02', '부산',2);
insert into kfadw.wd_referee_regist_asoc values ('03', '대구',3);
insert into kfadw.wd_referee_regist_asoc values ('04', '인천',4);
insert into kfadw.wd_referee_regist_asoc values ('05', '광주',5);
insert into kfadw.wd_referee_regist_asoc values ('06', '대전',6);
insert into kfadw.wd_referee_regist_asoc values ('07', '울산',7);
insert into kfadw.wd_referee_regist_asoc values ('08', '경기',8);
insert into kfadw.wd_referee_regist_asoc values ('09', '강원',9);
insert into kfadw.wd_referee_regist_asoc values ('10', '제주',10);
insert into kfadw.wd_referee_regist_asoc values ('11', '충북',11);
insert into kfadw.wd_referee_regist_asoc values ('12', '충남',12);
insert into kfadw.wd_referee_regist_asoc values ('13', '전북',13);
insert into kfadw.wd_referee_regist_asoc values ('14', '전남',14);
insert into kfadw.wd_referee_regist_asoc values ('15', '경북',15);
insert into kfadw.wd_referee_regist_asoc values ('16', '경남',16);
insert into kfadw.wd_referee_regist_asoc values ('17', '세종',17);

select areaname , refno1  from referee_info_year
 group by areaname , refno1
 ;




refno1


----------------------wd_referee_reprt

INSERT INTO wd_referee_reprt VALUES('^','미입력',999999999);
INSERT INTO wd_referee_reprt VALUES('Y','심판보고서 필수',1);
INSERT INTO wd_referee_reprt VALUES('N','심판보고서 필수아님',2);

-----------------wd_snd_clss_referee_wsp
INSERT INTO wd_snd_clss_referee_wsp VALUES ('01','1급',1);
INSERT INTO wd_snd_clss_referee_wsp VALUES ('02','2급',2);
INSERT INTO wd_snd_clss_referee_wsp VALUES ('03','3급',3);



select distinct  activity_2k  from referee_info_year;




----------------wd_intrl_referee

INSERT INTO wd_intrl_referee VALUES ('^','미입력',999999999);
INSERT INTO wd_intrl_referee VALUES ('Y','국제심판',1);
INSERT INTO wd_intrl_referee VALUES ('N','일반심판',2);





-----------------wd_referee_assr

INSERT INTO wd_referee_assr VALUES('^','미입력',999999999);
INSERT INTO wd_referee_assr VALUES('Y','심판평가관',1);
INSERT INTO wd_referee_assr VALUES('N','일반심판',2);


------------------wd_referee_assr_rspofc
insert into kfadw.wd_referee_assr_rspofc;

SELECT THRD_GB AS referee_assr_rspofc_cde
	 , KOR_CD_NM  referee_assr_rspofc_NM
	 , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE SCND_GB  ='RA'
 AND THRD_GB != '*'
;


--------------------wd_retire_referee

insert into kfadw.wd_retire_referee values('^','미입력',999999999);
insert into kfadw.wd_retire_referee values('Y','은퇴',1);
insert into kfadw.wd_retire_referee values('N','현역',2);



---------------------------wf_referee_edc_sttus 심판 교육 상황


--------------------------wd_referee_edc_crse

select idx as edc_crse_no
     , edu_title as edc_nm
     , (ROW_NUMBER() over(ORDER BY idx)) AS sort_ordr
from joinkfa.referee_education_info;



---------------------------wd_edc_cl
edu_gubun

select distinct  edu_gubun from referee_education_info;

교육구분 11:신인(일반) 12:신인(군) 13:신인(공무원) 14:신인(풋살) 21:보수 22:보수(시도협회) 31:리텐션코스 41:체력테스트 51:심판평가관 그외:신인 61:승급
;

insert into kfadM.wd_edc_cl values('^','미입력',999999999);
insert into kfadM.wd_edc_cl values('11','신인(일반)',1);
insert into kfadM.wd_edc_cl values('12','신인(군)',2);
insert into kfadM.wd_edc_cl values('13','신인(공무원)',3);
insert into kfadM.wd_edc_cl values('14','신인(풋살)',4);
insert into kfadM.wd_edc_cl values('21','보수',5);
insert into kfadM.wd_edc_cl values('22','보수(시도협회)',6);
insert into kfadM.wd_edc_cl values('31','리텐션코스',7);
insert into kfadM.wd_edc_cl values('41','체력테스트',8);
insert into kfadM.wd_edc_cl values('51','심판평가관',9);
insert into kfadM.wd_edc_cl values('61','승급',10);
insert into kfadM.wd_edc_cl values('23','신입',11);
insert into kfadM.wd_edc_cl values('52','신입',12);
--insert into kfadw.wd_edc_cl ('그외','신입',11); --- 디벌트 신입?








-----------------------------wd_promt_wsp

select distinct  ref_evla_gd_cd from referee_education_info;

insert into kfadw.wd_promt_wsp values ('^','미입력',999999999);
insert into kfadw.wd_promt_wsp values ('1','1급',1);
insert into kfadw.wd_promt_wsp values ('2','2급',2);
insert into kfadw.wd_promt_wsp values ('3','3급',3);



-----------------------------wd_wnty_cmpet_asigh

alldo_asg_yn

insert into kfadw.wd_wnty_cmpet_asigh values ('^','미입력',999999999);
insert into kfadw.wd_wnty_cmpet_asigh values ('Y','전국대회배정',1);
insert into kfadw.wd_wnty_cmpet_asigh values ('N','미배정',2);


------------------------------wd_fyer_cnd_cde

insert into kfadw.wd_fyer_cnd_cde values ('^','미입력',999999999);
insert into kfadw.wd_fyer_cnd_cde values ('1','최근 1년',1);
insert into kfadw.wd_fyer_cnd_cde values ('2','최근 2년',2);
insert into kfadw.wd_fyer_cnd_cde values ('3','최근 3년',3);


--------------------------------wd_term_cnd

insert into kfadw.wd_term_cnd values ('^','미입력',999999999);
insert into kfadw.wd_term_cnd values ('1','1년에 1회이상',1);
insert into kfadw.wd_term_cnd values ('2','1년에 2회이상',2);


-------------------------------wd_act_cnd

insert into kfadw.wd_act_cnd values ('^','미입력',999999999);
insert into kfadw.wd_act_cnd values ('1','최근 1년',1);
insert into kfadw.wd_act_cnd values ('2','최근 2년',2);


--------------------------------wd_qualf_cnvrs_edc

insert into kfadw.wd_qualf_cnvrs_edc values ('^','미입력',999999999);
insert into kfadw.wd_qualf_cnvrs_edc values ('Y','이수',1);
insert into kfadw.wd_qualf_cnvrs_edc values ('N','미이수',2);



-------------------wd_pasage

insert into kfadw.wd_pasage values ('^','미입력',999999999);
insert into kfadw.wd_pasage values ('Y','통과',1);
insert into kfadw.wd_pasage values ('N','탈락',2);
insert into kfadw.wd_pasage values ('P','처리중',3);




----------------------wd_referee_cnvrs

select distinct  edu_reshuffle_yn from joinkfa."referee_education_per_histn#";

insert into kfadw.wd_referee_cnvrs values ('^','미입력',999999999);
insert into kfadw.wd_referee_cnvrs values ('Y','승인',1);
insert into kfadw.wd_referee_cnvrs values ('N','미승인',2);
ㄴ

--------------------------wd_psexam


select distinct  edu_success_yn from "referee_education_per_histn#";

insert into kfadw.wd_psexam values ('^','미입력',999999999);
insert into kfadw.wd_psexam values ('Y','합격',1);
insert into kfadw.wd_psexam values ('N','탈락',2);
insert into kfadw.wd_psexam values ('P','처리중',3);
insert into kfadw.wd_psexam values ('D','블참',4);


---------------------------wd_progrs_sittn

교육진행여부 Y:진행 N:취소 D:연기 (Renewal) C:평가완료,P:신청 대기중
edu_process;
select edu_process from referee_education_info;


INSERT INTO kfawdw.wd_progrs_sittn VALUES ('^','미입력',999999999);
INSERT INTO kfawdw.wd_progrs_sittn VALUES ('Y','진행',1);
INSERT INTO kfawdw.wd_progrs_sittn VALUES ('N','취소',2);
INSERT INTO kfawdw.wd_progrs_sittn VALUES ('D','연기',3);
INSERT INTO kfawdw.wd_progrs_sittn VALUES ('C','평가완료',4);
INSERT INTO kfawdw.wd_progrs_sittn VALUES ('P','신청대기중',5);




------------------------wd_referee_edc_area

select * from referee_education_info
 order by edu_area_cd;
 where edu_area_cd = '10'
;
insert into kfadm.wd_referee_edc_area values ('00', '전국',1);
insert into kfadm.wd_referee_edc_area values ('01', '서울',2);
insert into kfadm.wd_referee_edc_area values ('02', '부산',3);
insert into kfadm.wd_referee_edc_area values ('03', '대구',4);
insert into kfadm.wd_referee_edc_area values ('04', '인천',5);
insert into kfadm.wd_referee_edc_area values ('05', '광주',6);
insert into kfadm.wd_referee_edc_area values ('06', '대전',7);
insert into kfadm.wd_referee_edc_area values ('07', '울산',8);
insert into kfadm.wd_referee_edc_area values ('08', '경기',9);
insert into kfadm.wd_referee_edc_area values ('09', '강원',10);
insert into kfadm.wd_referee_edc_area values ('10', '제주',11);
insert into kfadm.wd_referee_edc_area values ('11', '충북',12);
insert into kfadm.wd_referee_edc_area values ('12', '충남',13);
insert into kfadm.wd_referee_edc_area values ('13', '전북',14);
insert into kfadm.wd_referee_edc_area values ('14', '전남',15);
insert into kfadm.wd_referee_edc_area values ('15', '경북',16);
insert into kfadm.wd_referee_edc_area values ('16', '경남',17);
insert into kfadm.wd_referee_edc_area values ('17', '세종',18);
insert into kfadm.wd_referee_edc_area values ('^', '미입력',999999999);


-----------------------------------wd_referee_instrctr

select * from  referee_inst_year ;
select usrkey 
     , hname 
     , upd_dt 
  from "referee_inst_info#" ;


select referee_instrctr_id 
	 , instrctr_nm
	 , brthdy
	 --, instrctr_nm||'/'||brthdy as hmnm_se_nm
	 , concat(instrctr_nm,'.',substring(brthdy,1,4),'.',substring(brthdy,5,2),'.',substring(brthdy,7,2))|| 
	   CASE WHEN SUBSTRING(split_part(referee_instrctr_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
            THEN '(남)'
            WHEN SUBSTRING(split_part(referee_instrctr_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
            then case when SUBSTRING(split_part(referee_instrctr_id ::varchar, '-', 1),1,6) = '000000' 
                      THEN '(미입력)' else '(여)' end
            ELSE '(미입력)' end as hmnm_se_nm
     , (ROW_NUMBER() over(ORDER BY  substring(instrctr_nm,1,1), substring(instrctr_nm,2,1),substring(instrctr_nm,3,1),referee_instrctr_id)) AS sort_ordr 
 from (select referee_instrctr_id
		     , case when instrctr_nm is null then '미입력' else instrctr_nm end as instrctr_nm
		     , case when referee_instrctr_id ~ '\d{6}'
		            then case
			             when SUBSTRING(split_part(referee_instrctr_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(referee_instrctr_id ::varchar, '-', 1) 
				         when SUBSTRING(split_part(referee_instrctr_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(referee_instrctr_id ::varchar, '-', 1)
				         else '19'||split_part(referee_instrctr_id ::varchar, '-', 1)
				         end  
				    else '99991231' end brthdy
	from (select * from (select referee_instrctr_id
						      , instrctr_nm
						      , ROW_NUM 
						      , ROW_NUMBER() OVER(PARTITION BY referee_instrctr_id ORDER BY ROW_NUM DESC ) as index
						  from (SELECT referee_instrctr_id
									 , instrctr_nm
									 , ROW_NUMBER() OVER( PARTITION BY referee_instrctr_id ORDER BY upd_dt ) AS ROW_NUM
								 from (select usrkey  as referee_instrctr_id
										    , hname  as instrctr_nm
										    , upd_dt 
										 from "referee_inst_info#" ) A 
								group by referee_instrctr_id, instrctr_nm, upd_dt) B ) C
				where index = 1 ) D) a
/*where referee_instrctr_id ~ E'[0-9]'
  and referee_instrctr_id is not null
  and char_length(brthdy) < 9 */
;

-------------------------------wd_instrctr_se


select "POSITION" as instrctr_se_cde
     , "POSITION" as instrctr_se_nm
     , (ROW_NUMBER() over(ORDER BY "POSITION" )) AS sort_ordr
  from referee_inst_year
 where "POSITION" is not null
 group by "POSITION"
 -- order by "POSITION"
  ;
 
 
--------------------------wd_referee_rspofc
 
 
 select * from ref_stla_calculated_ext;


select thrd_gb as referee_rspofc_cde
      , kor_cd_nm as referee_rspofc_nm
      , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 
 where scnd_gb in ( 'REFDE', 'REF6')
  and thrd_gb != '*'
  and thrd_gb  != 'MATCH_COMMISSIONER'
;


select * from comcm010 
 where frst_gb = 'MA02'
 
 
 
 
 ---------------------------wd_round

 truncate table kfadm.wd_round;
 
insert into kfadm.wd_round values ('1','1라운드',1);
insert into kfadm.wd_round values ('^','미입력',999999999);


-----------------------------wd_main_instrctr

select * from referee_education_inst;


truncate table kfadm.wd_main_instrctr;

insert into kfadm.wd_main_instrctr values ('Y','주강사',1);
insert into kfadm.wd_main_instrctr values ('N','보조강사',2);
insert into kfadm.wd_main_instrctr values ('^','미입력',999999999);


-----------------------------wd_agr_sttus_prepar


select accept_stat_pre , * from referee_education_inst;

truncate table kfadm.wd_agr_sttus_prepar;

insert into kfadm.wd_agr_sttus_prepar values ('NOT_YET','미수락',1);
insert into kfadm.wd_agr_sttus_prepar values ('^','미입력',999999999);


-------------------------wd_agr_sttus_last


select accept_stat_fin , * from referee_education_inst;


truncate table kfadm.wd_agr_sttus_last;

insert into kfadm.wd_agr_sttus_last values ('^','미입력',999999999);

-----------------------------wd_referee_edc_place

select edu_area as edc_place_nm
     , (ROW_NUMBER() over(ORDER BY edu_area )) AS sort_ordr
  from referee_education_info
 where edu_area is not null
 group by edu_area
  ;






