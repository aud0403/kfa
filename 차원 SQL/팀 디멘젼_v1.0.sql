-----------wd_team
select team_id 
     , '['||team_id||']'||team_nm       as team_nm
     , (ROW_NUMBER() over(ORDER BY team_id DESC )) AS sort_ordr
  from (
			select id as team_id 
			     , "NAME"   as team_nm 
			   --  , (ROW_NUMBER() over(ORDER BY id DESC )) AS sort_ordr
			     from joinkfa."teamtbl#"
			 where REGDATE is not null
			 union all
			 select thrd_gb as team_id
			      , kor_cd_nm  as team_nm
			     --, (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
			  from joinkfa.comcm010
			 where scnd_gb = 'A06'
			   and thrd_gb != '*'
			   ) a
;





-------wd_team_grad
  ----코드 다시 확인  컬럼 길이 넘어감----
 INSERT INTO  kfadw.wd_team_grad;

select team_grad_cde 
     , team_grad_NM
     , (ROW_NUMBER() over(ORDER BY team_grad_cde )) AS sort_ordr
  from (
   SELECT THRD_GB  AS team_grad_cde
        , KOR_CD_NM  AS team_grad_NM
        --, (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE FRST_GB = 'DA01'
  AND SCND_GB = 'TG01'
  AND THRD_GB != '*'
   union all
	 select thrd_gb as team_grad_cde
	      , kor_cd_nm  as team_grad_NM
	     --, (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
	  from joinkfa.comcm010
	 where scnd_gb = 'A06'
	   and thrd_gb != '*'
	   ) a
where team_grad_NM != '유18(여)'
  and team_grad_NM != '유15(여)'
group by team_grad_cde, team_grad_NM
order by team_grad_cde
    ;    
    
   
   
   
   SELECT THRD_GB  AS team_grad_cde
        , KOR_CD_NM  AS team_grad_NM
        , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE FRST_GB = 'DA01'
  AND SCND_GB = 'TG01'
  AND THRD_GB != '*'
   
 select distinct  cnvc_team_grad_cde  from kfadw.wf_golden_age_coach ; 
 
    
-------wd_team_class
    INSERT INTO  kfadw.wd_team_class
SELECT THRD_GB  AS team_class_cde
     , KOR_CD_NM  AS team_class_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'DA01'
   AND SCND_GB = 'TL01'
   AND THRD_GB != '*'
    ;
insert into kfadm.wd_team_class values('NL','국가대표',999999998);
   
 -------------wd_team_age
team_age_cde
  tm_age_cd;
 
select  tm_age_cd as team_age_cde
      , tm_age_cd as team_age_nm
      , (ROW_NUMBER() over(ORDER BY tm_age_cd )) AS sort_ordr
from master_tm_type
 group by tm_age_cd;
   

----------------------------wd_union_team_knd
insert into kfadw.wd_union_team_knd
;

SELECT thrd_gb  AS union_team_knd_cde
     , KOR_CD_NM AS union_team_knd_nm
     , (ROW_NUMBER() over(ORDER BY SCND_GB DESC )) AS sort_ordr
  FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'AP0221'
   AND KOR_CD_NM IS NOT NULL
 ;





select distinct  kind_code, kind_code_detail1 ,kind_code_detail2  from "teamtbl#";


---------------------wd_asort

select thrd_gb as asort_cde
     , kor_cd_nm as asort_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb  )) AS sort_ordr
  from joinkfa.comcm010
 where scnd_gb = 'PSN02'
    and thrd_gb != '*'
 ; 


---------------------wd_asort_detail_1
select thrd_gb as asort_detail_1_cde
     , kor_cd_nm as asort_detail_1_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb  )) AS sort_ordr
  from joinkfa.comcm010 
 where scnd_gb  ='PSN03'
   and thrd_gb != '*'
 ;


---------------------wd_asort_detail_2
--kind_code_detail2 01 중앙경기단체
--kind_code_detail2 02 시도경기단체
--kind_code_detail2 03 시군구경기단체
--kind_code_detail2 04 시군구체육회
--kind_code_detail2 05 시군청



insert into KFADW.wd_asort_detail_2 VALUES('^','미입력',0);
insert into KFADW.wd_asort_detail_2 VALUES('01','중앙경기단체',1);
insert into KFADW.wd_asort_detail_2 VALUES('02','시도경기단체',2);
insert into KFADW.wd_asort_detail_2 VALUES('03','시군구경기단체',3);
insert into KFADW.wd_asort_detail_2 VALUES('04','시군구체육회',4);
insert into KFADW.wd_asort_detail_2 VALUES('05','시군청',5);


-----------------wd_asoc_grad
INSERT INTO wd_asoc_grad VALUES ('1','1종',1);
INSERT INTO wd_asoc_grad VALUES ('2','2종',2);





-----------------------wd_pro
select distinct team_pro_at  from joinkfa.t_team_info

insert into kfadw.wd_pro values ('Y','프로선수',1);
insert into kfadw.wd_pro values ('N','아마추어',2);
insert into kfadw.wd_pro values ('^','미입력',999999999);



-----------------------wd_team_sttus
insert into kfadw.wd_team_sttus values ('R','등록',1);
insert into kfadw.wd_team_sttus values ('UR','미등록',2);
insert into kfadw.wd_team_sttus values ('D','해체',3);
insert into kfadw.wd_team_sttus values ('^','미입력',999999999);


-------------------------wd_mbr_se
insert into kfadw.wd_mbr_se values ('P','선수',1);
insert into kfadw.wd_mbr_se values ('C','지도자',2);
insert into kfadw.wd_mbr_se values ('^','미입력',999999999);

   
----------------------------wd_mbr
select mbr_id  
     , mbr_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select mbr_id
		     , mbr_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY mbr_id  ) AS row_num
		     , sort_ordr
		  from ( 
				select mbr_id
				     , mbr_nm
				     , brthdy
				     , concat(mbr_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2)) ||
				        CASE WHEN SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(mbr_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
				     as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER by substring(mbr_nm,1,1), substring(mbr_nm,2,1),substring(mbr_nm,3,1),mbr_id)) AS sort_ordr
				  from (       
						select mbr_id 
						     , mbr_nm 
						     , case when mbr_id ~ '^\d{6}-'
						            then case
									       when SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(mbr_id ::varchar, '-', 1) 
										   when SUBSTRING(split_part(mbr_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(mbr_id ::varchar, '-', 1)
										   else '19'||split_part(mbr_id ::varchar, '-', 1)
										   end  
									else '99991231' end brthdy
						from ( select * from ( select mbr_id
												      , mbr_nm
												      , ROW_NUM 
												      , ROW_NUMBER() OVER(PARTITION BY mbr_id ORDER BY ROW_NUM DESC ) as index
												  from (
														SELECT
														   mbr_id
														  , mbr_nm
														  ,ROW_NUMBER() OVER( PARTITION BY mbr_id ORDER BY lastupdate ) AS ROW_NUM
														FROM(select  jumin AS mbr_id
															      , hname as mbr_nm
														          , lastupdate
															   from joinkfa."coach_info#" 
														      union all
														    select jumin as mbr_id 
														         , hname as mbr_nm
														         , lastupdate
														     from  joinkfa."player_info#") A 
														group by mbr_id, mbr_nm, lastupdate) B ) C
								where index = 1 ) D) d
				)a)b
;

select -- to_char(REGDATE,'yyyy') AS stdr_year, 
       jumin AS coach_id
     , hname AS coach_nm
     ,  case
		   when SUBSTRING(split_part(jumin ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(jumin ::varchar, '-', 1) 
		   when SUBSTRING(split_part(jumin ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(jumin ::varchar, '-', 1)
		   else split_part(jumin ::varchar, '-', 1)
		   end  brthdy
     , (ROW_NUMBER() over(ORDER BY jumin )) AS sort_ordr
  from joinkfa."coach_info#" 
 ORDER BY jumin ;

select * from joinkfa."coach_info#";
select * from joinkfa."player_info#";




