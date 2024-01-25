

-----------------wd_stdnt

select userid as stdnt_id
     , name as stdnt_nm
     , (ROW_NUMBER() over(ORDER BY userid )) AS sort_ordr
  from fb_member;
  
 -----------------wd_crse

select subj as crse_cde
     , subjnm as crse_nm
     , (ROW_NUMBER() over(ORDER BY subj )) AS sort_ordr 
  from fb_subj;


-------------------wd_crse_odr


select crse_odr
     , crse_odr_nm
     , (ROW_NUMBER() over(ORDER BY crse_odr )) AS sort_ordr 
  from (
		select distinct  CAST(subjseq AS NUMERIC) as crse_odr
		     ,  ''||CAST(subjseq AS NUMERIC)||'차' as crse_odr_nm
		  from fb_subjseq
        )a
 order by crse_odr
 ;
 
------------------------wd_compl

select distinct  stold_yn from fb_stold;

truncate table wd_compl;

insert into kfadm.wd_compl values('Y','수료',1);
insert into kfadm.wd_compl values('N','미수료',2);
insert into kfadm.wd_compl values('^','미입력',999999999);



---------------------------wd_un_compl_resn


select stold_cd, stold_txt from fb_stold
 where stold_cd is not null
group by stold_cd, stold_txt
;


select code as un_compl_resn_cde
     , codenm  as  un_compl_resn_nm
     , (ROW_NUMBER() over(ORDER BY code )) AS sort_ordr 
  from fb_code
 where gubun = '0008'
;

--------------------wd_scre_grad

select distinct  grades from fb_student;


select code as scre_grad_cde
     , codenm as scre_grad_nm
     , (ROW_NUMBER() over(ORDER BY code)) AS sort_ordr 
 from fb_code
 where gubun = '0202'
;

---------------------------wd_scre_exclnc

select distinct  good_yn from fb_student;

truncate table wd_scre_exclnc;

insert into kfadm.wd_scre_exclnc values ('Y','우수',1);
insert into kfadm.wd_scre_exclnc values ('N','미흠',2);
insert into kfadm.wd_scre_exclnc values ('^','미입력',999999999);


----------------------------wd_psexam_info

select  distinct  "STATE" from fb_student;

select code as psexam_info_cde
     , codenm  as psexam_info_nm
     , (ROW_NUMBER() over(ORDER BY code)) AS sort_ordr 
 from fb_code
 where gubun = '0203'
;


------------------------------wd_mnnst

select grcode as mnnst_cde
     , grcodenm  as mnnst_nm
     , (ROW_NUMBER() over(ORDER BY grcode)) AS sort_ordr 
 from fb_grcode;


-----------------------------wd_edc_stle


select distinct  subj_type from fb_subj;

select * from fb_code   where gubun = '0001'

select code as edc_stle_cde
     , codenm as edc_stle_nm
     , (ROW_NUMBER() over(ORDER BY code)) AS sort_ordr
  from fb_code
 where gubun = '0001'
;

-------------------wd_crse_cl


a.crse_cl_cde || '_' || a.mnnst_cde

select distinct  subjclass from fb_subj
 order by subjclass
;

select * 
  from fb_codegubun
 where gubunnm like '%콘텐츠%'
  ; 
select * 
  from fb_codegubun
 where gubun = '0002'
  ; 
select * from fb_code 
 where gubun = '0072'
 ;
 
select s.subjclass ||'_'|| s.grcode   as crse_cl_cde
     , s.classname as crse_cl_nm
     , (ROW_NUMBER() over(ORDER BY s.grcode ,s.subjclass)) AS sort_ordr
  from fb_subjatt s join fb_grcode g
    on s.grcode =  g.grcode 
   order by s.grcode ,s.subjclass
 ;



----------------------------wd_crse_ty

select * 
  from fb_codegubun
 where gubunnm like '%필수%'
  ; 
 select * 
  from fb_codegubun
 where issystem like '%Y%'
  ; 
 select * from fb_code 
 where gubun = '0072'
 ;

select code as crse_ty_cde
     , codenm as crse_ty_nm
     , (ROW_NUMBER() over(ORDER BY code)) AS sort_ordr
  from fb_code 
 where gubun = '0002'
 ;

--------------------------------wd_recomend_crse

select distinct  isrecom from fb_subj


truncate table kfadm.wd_recomend_crse;

insert into kfadm.wd_recomend_crse values ('Y','추천 과정 존재',1);
insert into kfadm.wd_recomend_crse values ('N','추천 없음',2);
insert into kfadm.wd_recomend_crse values ('^','미입력',999999999);

---------------------------------wd_essntl_crse

select distinct  isrequi from fb_subj;

truncate table kfadm.wd_essntl_crse;

insert into kfadm.wd_essntl_crse values ('Y','필수 과정',1);
insert into kfadm.wd_essntl_crse values ('N','일반 과정',2);
insert into kfadm.wd_essntl_crse values ('^','미입력',999999999);

/*fb_code 테이블 필수 여부 코드 내용 , 하지만 fb_subj의 필수 여부 테이블 길이 1
LITTLE	다소 도움
MANY	매우 도움
MOST	반드시 필요*/

-----------------------------------wd_mobile_parlelsm_crse

select distinct  mobile_yn from fb_subj;

 select code as mobile_parlelsm_crse_at
      , codenm as at_nm
      , (ROW_NUMBER() over(ORDER BY code)) AS sort_ordr
   from fb_code 
 where gubun = '0079'
 ;

select * from fb_code where gubun = '0079';


----------------------------------wd_lctre_abl

truncate table kfadm.wd_lctre_abl;

insert into kfadm.wd_lctre_abl values ('Y','폐강',1);
insert into kfadm.wd_lctre_abl values ('N','개강',2);
insert into kfadm.wd_lctre_abl values ('^','미입력',999999999);


-------------------------------wd_crse_se

subjgubun

select distinct  subjgubun from fb_subj;

select * from fb_code
 where code = 'FF1'
;

select s.gubun||'_'|| s.grcode  as crse_se_cde
     , s.gubunnm as  crse_se_nm
     , (ROW_NUMBER() over(ORDER BY s.grcode ,s.gubun)) AS sort_ordr
  from fb_subj_gubun s join fb_grcode g
    on s.grcode = g.grcode 
  ;


 select grcode as mnnst_cde
     , grcodenm  as mnnst_nm
     , (ROW_NUMBER() over(ORDER BY grcode)) AS sort_ordr 
 from fb_grcode;
 
 
-----------------------------------wd_cmmn_crse

truncate table kfadm.wd_cmmn_crse;

insert into kfadm.wd_cmmn_crse ('Y','공통과정',1);
insert into kfadm.wd_cmmn_crse ('N','일반과정',2);
insert into kfadm.wd_cmmn_crse ('^','미입력',999999999);


--------------------------------wd_choise_crse

truncate   table kfadm.wd_choise_crse;


insert into  kfadm.wd_choise_crse values ('Y','선택과정',1);
insert into  kfadm.wd_choise_crse values ('N','일반과정',2);
insert into  kfadm.wd_choise_crse values ('^','미입력',999999999);


----------------------------------wd_edc_progrm?????????????????


select * 
  from fb_codegubun
 where gubunnm like '%교육%'
  ; 
 select * 
  from fb_codegubun
 where issystem like '%Y%'
  ; 
 select * from fb_code 
 where gubun = '0072'
 ;

select cast(subjprogram)
     , subjprogram
     , (ROW_NUMBER() over(ORDER BY subjprogram)) AS sort_ordr
  from fb_subj
 where subjprogram is not null
 group by subjprogram
  ;

	
select seq ||'_'||subjclass||'_'||grcode as edc_progrm_cde
     , programnm  as edc_progrm_nm
     , (ROW_NUMBER() over(ORDER BY seq ||'_'||subjclass||'_'||grcode)) AS sort_ordr
from FB_SUBJATT_PROGRAM;
 
 
 
select * from fb_subj;





-------------------------------------wd_odr_dplct_perm

select distinct  overlap_yn from fb_subj;

truncate table wd_odr_dplct_perm;
 
insert into kfadm.wd_odr_dplct_perm values ('Y','차수중복허용',1);
insert into kfadm.wd_odr_dplct_perm values ('N','차수중복불가',2);
insert into kfadm.wd_odr_dplct_perm values ('^','미입력',999999999);


-----------------------------------------wd_crse_croup_se


select distinct  grgubun from fb_subjseq;

truncate  table kfadm.wd_crse_croup_se;

insert into kfadm.wd_crse_croup_se values('L','지도자',1);
insert into kfadm.wd_crse_croup_se values('R','심판',2);
insert into kfadm.wd_crse_croup_se values('^','미입력',999999999);



-----------------------------------------wd_crqfc_se


select distinct  license_gubun, license_order, licensenm from fb_subj_gubun
 order by  license_gubun
;

truncate  table  kfadm.wd_crqfc_se
;

insert into kfadm.wd_crqfc_se values('CL','필드자격증',1);
insert into kfadm.wd_crqfc_se values('GK','GK자격증',2);
insert into kfadm.wd_crqfc_se values('FS','풋살자격증',3);
insert into kfadm.wd_crqfc_se values('ETC','기타자격증',4);
insert into kfadm.wd_crqfc_se values('^','미입력',999999999);

-------------------------------wd_crqfc_group

select distinct  license_group from fb_subj_gubun;

 select * from fb_code 
  where code  ='TGK'
  ;
truncate  table  kfadm.wd_crqfc_group
;
 
 insert into kfadm.wd_crqfc_group values('TGK','TGK임시자격증',1);
 insert into kfadm.wd_crqfc_group values('TFT','TFT임시자격증',2);
 insert into kfadm.wd_crqfc_group values('T','T임시자격증',3);
 insert into kfadm.wd_crqfc_group values('^','미입력(임시자격증아님)',999999999);
 

-------------------------------wd_crqfc_mntnc_pd

select distinct  license_period from fb_subj_gubun;

 select * from fb_code 
  where code  ='2'
  ;

 
 select * 
  from fb_codegubun
 where gubun ='0110'
  ; 
 truncate  table  kfadm.wd_crqfc_mntnc_pd
;
 
 insert into kfadm.wd_crqfc_mntnc_pd values('2','2년',1);
 insert into kfadm.wd_crqfc_mntnc_pd values('4','4년',2);
 insert into kfadm.wd_crqfc_mntnc_pd values('^','미입력',999999999);



------------------------------wd_lrn_progrs_mth



select distinct  edu_type from fb_subjseq;
 
select * 
  from fb_codegubun
 where gubunnm like '%학습%'
  ; 
 select * from fb_code 
 where gubun = '0001'
 ;
 

truncate  table  kfadm.wd_lrn_progrs_mth
;

insert into kfadm.wd_lrn_progrs_mth  values ('ORDER','순차',1);
insert into kfadm.wd_lrn_progrs_mth values('RANDOM','랜덤',2);
insert into kfadm.wd_lrn_progrs_mth values ('^','미입력(차수가 오프라인)',999999999);

---------------------------------wd_edc_place


select *
     , (ROW_NUMBER() over(ORDER BY edc_place_cde)) AS sort_ordr  
  from (
		select distinct  subj_location as edc_place_cde
		     , subj_location as edc_place_nm
		 from fb_subjseq
		where subj_location is not null
		) a 
  order by sort_ordr
 ;

---------------------------------wd_edc_garden

select  edc_garden_cde
     , edc_garden_nm
     , (ROW_NUMBER() over(ORDER BY edc_garden_cde)) AS sort_ordr
  from (
	    select distinct  edu_cnt as edc_garden_cde
             , edu_cnt as edc_garden_nm
     	  from fb_subjseq
     	 where edu_cnt is not null
   		) a 
;

--------------------------wd_score???????????????????


select distinct  bosu_grade, grade_total from fb_subjseq;
select * from fb_subjseq
-- where bosu_grade = 5000
;

select * from fb_codegubun
 where gubunnm  like '%교육%'
; 

select * from fb_code 
 where code in('1','2','3')
 order by gubun , code
;

insert into kfadm.wd_score values ('1','1점',1);
insert into kfadm.wd_score values ('2','2점',2);
insert into kfadm.wd_score values ('3','3점',3);
insert into kfadm.wd_score values ('4','4점',4);
insert into kfadm.wd_score values ('5','5점',5);
insert into kfadm.wd_score values ('6','6점',6);
insert into kfadm.wd_score values ('7','7점',7);
insert into kfadm.wd_score values ('8','8점',8);
insert into kfadm.wd_score values ('9','9점',9);
insert into kfadm.wd_score values ('10','10점',10);
insert into kfadm.wd_score values ('11','11점',11);
insert into kfadm.wd_score values ('12','12점',12);
insert into kfadm.wd_score values ('13','13점',13);
insert into kfadm.wd_score values ('14','14점',14);
insert into kfadm.wd_score values ('15','15점',15);
insert into kfadm.wd_score values ('16','16점',16);
insert into kfadm.wd_score values ('17','17점',17);
insert into kfadm.wd_score values ('18','18점',18);
insert into kfadm.wd_score values ('19','19점',19);
insert into kfadm.wd_score values ('20','20점',20);
insert into kfadm.wd_score values ('21','21점',21);
insert into kfadm.wd_score values ('22','22점',22);
insert into kfadm.wd_score values ('23','23점',23);
insert into kfadm.wd_score values ('24','24점',24);
insert into kfadm.wd_score values ('25','25점',25);
insert into kfadm.wd_score values ('26','26점',26);
insert into kfadm.wd_score values ('27','27점',27);
insert into kfadm.wd_score values ('28','28점',28);
insert into kfadm.wd_score values ('29','29점',29);
insert into kfadm.wd_score values ('30','30점',30);
insert into kfadm.wd_score values ('31','31점',31);
insert into kfadm.wd_score values ('32','32점',32);
insert into kfadm.wd_score values ('33','33점',33);
insert into kfadm.wd_score values ('34','34점',34);
insert into kfadm.wd_score values ('35','35점',35);
insert into kfadm.wd_score values ('36','36점',36);
insert into kfadm.wd_score values ('37','37점',37);
insert into kfadm.wd_score values ('38','38점',38);
insert into kfadm.wd_score values ('39','39점',39);
insert into kfadm.wd_score values ('40','40점',40);
insert into kfadm.wd_score values ('41','41점',41);
insert into kfadm.wd_score values ('42','42점',42);
insert into kfadm.wd_score values ('43','43점',43);
insert into kfadm.wd_score values ('44','44점',44);
insert into kfadm.wd_score values ('45','45점',45);
insert into kfadm.wd_score values ('46','46점',46);
insert into kfadm.wd_score values ('47','47점',47);
insert into kfadm.wd_score values ('48','48점',48);
insert into kfadm.wd_score values ('49','49점',49);
insert into kfadm.wd_score values ('50','50점',50);
insert into kfadm.wd_score values ('51','51점',51);
insert into kfadm.wd_score values ('52','52점',52);
insert into kfadm.wd_score values ('53','53점',53);
insert into kfadm.wd_score values ('54','54점',54);
insert into kfadm.wd_score values ('55','55점',55);
insert into kfadm.wd_score values ('56','56점',56);
insert into kfadm.wd_score values ('57','57점',57);
insert into kfadm.wd_score values ('58','58점',58);
insert into kfadm.wd_score values ('59','59점',59);
insert into kfadm.wd_score values ('60','60점',60);
insert into kfadm.wd_score values ('61','61점',61);
insert into kfadm.wd_score values ('62','62점',62);
insert into kfadm.wd_score values ('63','63점',63);
insert into kfadm.wd_score values ('64','64점',64);
insert into kfadm.wd_score values ('65','65점',65);
insert into kfadm.wd_score values ('66','66점',66);
insert into kfadm.wd_score values ('67','67점',67);
insert into kfadm.wd_score values ('68','68점',68);
insert into kfadm.wd_score values ('69','69점',69);
insert into kfadm.wd_score values ('70','70점',70);
insert into kfadm.wd_score values ('71','71점',71);
insert into kfadm.wd_score values ('72','72점',72);
insert into kfadm.wd_score values ('73','73점',73);
insert into kfadm.wd_score values ('74','74점',74);
insert into kfadm.wd_score values ('75','75점',75);
insert into kfadm.wd_score values ('76','76점',76);
insert into kfadm.wd_score values ('77','77점',77);
insert into kfadm.wd_score values ('78','78점',78);
insert into kfadm.wd_score values ('79','79점',79);
insert into kfadm.wd_score values ('80','80점',80);
insert into kfadm.wd_score values ('81','81점',81);
insert into kfadm.wd_score values ('82','82점',82);
insert into kfadm.wd_score values ('83','83점',83);
insert into kfadm.wd_score values ('84','84점',84);
insert into kfadm.wd_score values ('85','85점',85);
insert into kfadm.wd_score values ('86','86점',86);
insert into kfadm.wd_score values ('87','87점',87);
insert into kfadm.wd_score values ('88','88점',88);
insert into kfadm.wd_score values ('89','89점',89);
insert into kfadm.wd_score values ('90','90점',90);
insert into kfadm.wd_score values ('91','91점',91);
insert into kfadm.wd_score values ('92','92점',92);
insert into kfadm.wd_score values ('93','93점',93);
insert into kfadm.wd_score values ('94','94점',94);
insert into kfadm.wd_score values ('95','95점',95);
insert into kfadm.wd_score values ('96','96점',96);
insert into kfadm.wd_score values ('97','97점',97);
insert into kfadm.wd_score values ('98','98점',98);
insert into kfadm.wd_score values ('99','99점',99);
insert into kfadm.wd_score values ('100','100점',100);
insert into kfadm.wd_score values ('5000','5000점',101);
insert into kfadm.wd_score values ('^','미입력',999999999);


----------------------------wd_compl_stdr


select distinct  code from fb_subjseq_qualification;

select gubun as compl_stdr_cde
     , gubunnm as compl_stdr_nm
     , (ROW_NUMBER() over(ORDER BY gubun)) AS sort_ordr
  from fb_subj_gubun;


------------- 질의 내용 
 
select distinct  bosu_grade, grade_total from fb_subjseq;
select * from fb_subjseq
-- where bosu_grade = 5000
;
-- 보수 점수가 5000점 이 있던데.. 무슨 내용인지...



select distinct  edu_type from fb_subjseq;

--- order, random 한글 코드명을 알수 잇을지..


select distinct  license_group from fb_subj_gubun;

--- TGK, TFT, T 의  한글 코드명을 알 수 있는지...









-----------------------------wd_coach_instrctr

select * from fb_tutor;
select * from fb_tutor_subj;

select coach_instrctr_id  
     , instrctr_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select coach_instrctr_id
		     , instrctr_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY coach_instrctr_id  ) AS row_num
		     , sort_ordr
		  from ( 
				select coach_instrctr_id
				     , instrctr_nm
				     , brthdy
				     , concat(instrctr_nm ,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2)) ||
				       case when gender = 'M' then '(남)'else '(여)' end as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(instrctr_nm,1,1), substring(instrctr_nm,2,1),substring(instrctr_nm,3,1),coach_instrctr_id )) AS sort_ordr  
				from (
				select a.userid  as coach_instrctr_id
				     , coalesce (b.name, '미입력')  as instrctr_nm
				     , coalesce( b.birthday,'99991231') as brthdy
				     , gender
				     from fb_tutor a left outer join fb_member  b
				    on a.userid = b.userid 
				    ) a
			)a)b
    ;
    
   
   
select * from fb_member
 where not gender in (  'F','W') 
;

select * from fb_tutor
 where userid = 'kfa-ldy'
    
 ------------------------wd_coach_instrctr_se


truncate table kfadm.wd_coach_instrctr_se;
    
insert into kfadm.wd_coach_instrctr_se values ('M1','주강사1',1);   
insert into kfadm.wd_coach_instrctr_se values ('M2','주강사2',2);   
insert into kfadm.wd_coach_instrctr_se values ('A1','보조강사1',3);   
insert into kfadm.wd_coach_instrctr_se values ('A2','보조강사2',4);   
insert into kfadm.wd_coach_instrctr_se values ('^','미입력',999999999);   
    
  

--------------------------wd_instrctr_ty

truncate table kfadm.wd_instrctr_ty;

insert into kfadm.wd_instrctr_ty values ('S','전문강사',1);
insert into kfadm.wd_instrctr_ty values ('B','일반강사',2);
insert into kfadm.wd_instrctr_ty values ('^','미입력',999999999);


--------------------------wd_wnmpy_outcmpny_se

truncate table kfadm.wd_wnmpy_outcmpny_se;

insert into kfadm.wd_wnmpy_outcmpny_se values ('I','사내',1);
insert into kfadm.wd_wnmpy_outcmpny_se values ('O','사외',2);
insert into kfadm.wd_wnmpy_outcmpny_se values ('^','미입력',999999999);


--------------------------







    
