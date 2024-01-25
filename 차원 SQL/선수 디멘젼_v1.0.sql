--------------wd_player --- 다시  생년월일 추가해서

select player_id  
     , player_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select player_id
		     , player_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY player_id  ) AS row_num
		     , sort_ordr
		  from (  
				SELECT player_id 
				     , player_nm 
				     ,  case
						   when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(player_id ::varchar, '-', 1) 
						   when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(player_id ::varchar, '-', 1)
						   else split_part(player_id ::varchar, '-', 1)
						   end  brthdy 
				     , (ROW_NUMBER() over(ORDER BY player_id DESC )) AS sort_ordr
				FROM t_player_info 
				group by player_id , player_nm 
				having player_id is not null
				;
				
				
				select player_id 
					 , player_nm
					 , brthdy
					 , player_nm||'/'||brthdy as hmnm_se_nm
					 --, concat(player_nm,'/',substring(brthdy,1,4),'.',substring(brthdy,5,2),'.',substring(brthdy,7,2))  as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(player_nm,1,1), substring(player_nm,2,1),substring(player_nm,3,1),player_id )) AS sort_ordr 
				 from (select player_id
						     , player_nm
						     , case
							       when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(player_id ::varchar, '-', 1) 
								   when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(player_id ::varchar, '-', 1)
								   else '19'||split_part(player_id ::varchar, '-', 1)
								   end  brthdy
					from (select * from (select player_id
										      , player_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY ROW_NUM DESC ) as index
										  from (SELECT player_id
													 , player_nm
													 , ROW_NUMBER() OVER( PARTITION BY player_id ORDER BY stdr_year ) AS ROW_NUM
												 from (select player_id 
											   			    , player_nm 
											  			    , stdr_year
											  			 from joinkfa.t_player_info) A 
												group by player_id, player_nm, stdr_year) B ) C
								where index = 1 ) D) a
				where  player_id is not null
			)a )b
;

select jumin , hname 
  from joinkfA."player_info_2019#"  
 where jumin  !~ E'[0-9]'
    or jumin is null
;


select player_id  
     , player_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select player_id
		     , player_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY player_id  ) AS row_num
		     , sort_ordr
		  from ( 
				 select player_id 
					 , player_nm
					 , brthdy
					 --, player_nm||'/'||brthdy as hmnm_se_nm
					 , concat(player_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
					   CASE WHEN SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(player_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(player_nm,1,1), substring(player_nm,2,1),substring(player_nm,3,1),player_id )) AS sort_ordr 
				 from (select player_id
						     , player_nm
						     , case when player_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case  when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(player_id ::varchar, '-', 1) 
											   when SUBSTRING(split_part(player_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(player_id ::varchar, '-', 1)
											   else '19'||split_part(player_id ::varchar, '-', 1)
											   end  
								    else '99991231' end brthdy
					from (select * from (select player_id
										      , case when player_nm is null then '미입력' else player_nm end player_nm
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY ROW_NUM DESC ) as index
										  from (SELECT player_id
													 , player_nm
													 , ROW_NUMBER() OVER( PARTITION BY player_id ORDER BY stdr_year ) AS ROW_NUM
												 from (select player_id 
															 , player_nm 
															 , stdr_year
														  from joinkfa.t_player_info
														union all
														select usrkey 
															 , hname 
															 , match_year 
														   from joinkfa.if_pro_referee_match_007) A 
												group by player_id, player_nm, stdr_year) B ) C
								where index = 1 ) D) a
				where player_id  is not null
				)a )b
				;


  
------------------wd_player_postn
insert into kfadw.wd_player_postn
SELECT THRD_GB AS player_postn_cde
     , KOR_CD_NM AS player_postn_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
  FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'AP0210'
   AND THRD_GB != '*';

insert into kfadm.wd_player_postn values ('CM'  ,  'CM',5);
insert into kfadm.wd_player_postn values ('LM'  ,  'LM',6);
insert into kfadm.wd_player_postn values ('CDM'  ,  'CDM',7);
insert into kfadm.wd_player_postn values ('RM'  ,  'RM',8);
insert into kfadm.wd_player_postn values ('RW'  ,  'RW',9);
insert into kfadm.wd_player_postn values ('CB'  ,  'CB',10);
insert into kfadm.wd_player_postn values ('LWB'  ,  'LWB',11);
insert into kfadm.wd_player_postn values ('LB'  ,  'LB',12);
insert into kfadm.wd_player_postn values ('LW'  ,  'LW',13);
insert into kfadm.wd_player_postn values ('CAM'  ,  'CAM',14);
insert into kfadm.wd_player_postn values ('RWB'  ,  'RWB',15);
insert into kfadm.wd_player_postn values ('LF'  ,  'LF',16);
insert into kfadm.wd_player_postn values ('CF'  ,  'CF',17);
insert into kfadm.wd_player_postn values ('RF'  ,  'RF',18);
insert into kfadm.wd_player_postn values ('RB'  ,  'RB',19);  
insert into kfadm.wd_player_postn values ('SB',  'SB',20);
insert into kfadm.wd_player_postn values ('RWF'  ,  'RWF',21);
insert into kfadm.wd_player_postn values ('FB'  ,  'FB',22);
insert into kfadm.wd_player_postn values ('WB'  ,  'WB',23);
insert into kfadm.wd_player_postn values ('_x0008_LWB'  ,  '_x0008_LWB',24);
insert into kfadm.wd_player_postn values ('CMF'  ,  'CMF',25);
insert into kfadm.wd_player_postn values ('DM'  ,  'DM',26);
insert into kfadm.wd_player_postn values ('AMF'  ,  'AMF',27);
insert into kfadm.wd_player_postn values ('SMF'  ,  'SMF',28);
insert into kfadm.wd_player_postn values ('WF'  ,  'WF',29);
insert into kfadm.wd_player_postn values ('LWF'  ,  'LWF',30);
insert into kfadm.wd_player_postn values ('DMF'  ,  'DMF',31);   
insert into kfadm.wd_player_postn values ('ALA'  ,  'ALA',32);
insert into kfadm.wd_player_postn values ('FIXO'  ,  'FIXO',33);
insert into kfadm.wd_player_postn values ('GOLEIRO'  ,  'GOLEIRO',34);
insert into kfadm.wd_player_postn values ('PIVO'  ,  'PIVO',35);  
insert into kfadm.wd_player_postn values ('CH','CH', 36);
insert into kfadm.wd_player_postn values ('DK','DK', 37);
insert into kfadm.wd_player_postn values ('GF','GF', 38);
insert into kfadm.wd_player_postn values ('HF','HF', 39);
insert into kfadm.wd_player_postn values ('LK','LK', 40);
insert into kfadm.wd_player_postn values ('MB','MB', 41);
insert into kfadm.wd_player_postn values ('MK','MK', 42);
insert into kfadm.wd_player_postn values ('NF','NF', 43);
insert into kfadm.wd_player_postn values ('PW','PW', 44);
insert into kfadm.wd_player_postn values ('SP','SP', 45);
insert into kfadm.wd_player_postn values ('ST','ST', 46);
insert into kfadm.wd_player_postn values ('SW','SW', 47);
  





--------------------wd_repeater
 
 insert into kfadw.wd_repeater VALUES('Y','유급',1);
 insert into kfadw.wd_repeater VALUES('N','정상졸업',2);
 insert into kfadw.wd_repeater VALUES('^','미입력',999999999);
 
 ------------wd_playng_qualf


INSERT INTO kfadw.wd_playng_qualf VALUES ('Y','자격있음',1);
INSERT INTO kfadw.wd_playng_qualf VALUES ('N','자격없음',2);
insert into kfadw.wd_playng_qualf VALUES('^','미입력',999999999);
 




--------------------------------------------------------------------------------
---선수 대회 현황






-------------wd_confm_step

INSERT INTO kfadw.wd_confm_step values('0','미승인',1);
INSERT INTO kfadw.wd_confm_step values('1','1차승인, 승인대기',2);
INSERT INTO kfadw.wd_confm_step values('2','2차승인, 승인대기',3);
INSERT INTO kfadw.wd_confm_step values('9','프로용 미승인',4);
insert into kfadw.wd_confm_step VALUES('^','미입력',999999999);

SELECT * FROM joinkfa."player_info_2021#"
WHERE to_char(REGDATE,'yyyy') ='2021';




--------------------wd_loan

select distinct  loan_at from t_player_info tpi; 
loan_at


insert into kfadw.wd_loan values ('Y','임대',1);
insert into kfadw.wd_loan values ('N','미임대',2);
insert into kfadw.wd_loan values ('^','미입력',999999999);
 


 
 --------------------------------wd_player_grade

 
 select distinct  
 begrade
  FROM   joinkfa."match_player_result#" mpr;
  
insert into kfadw.wd_player_grade values ('1','1학년',1);
insert into kfadw.wd_player_grade values ('2','2학년',2);
insert into kfadw.wd_player_grade values ('3','3학년',3);
insert into kfadw.wd_player_grade values ('4','4학년',4);
insert into kfadw.wd_player_grade values ('5','5학년',5);
insert into kfadm.wd_player_grade values ('6','6학년',6);
insert into kfadm.wd_player_grade values ('^','미입력',999999999);

 
 
  select entryno FROM   joinkfa."match_player_result#" mpr;
  
 
 
 
 -----------------------------wd_cntrct_month

 
 truncate  table kfadm.wd_cntrct_month;


insert into kfadm.wd_cntrct_month values ('1','1개월',1);
insert into kfadm.wd_cntrct_month values ('2','2개월',2);
insert into kfadm.wd_cntrct_month values ('3','3개월',3);
insert into kfadm.wd_cntrct_month values ('4','4개월',4);
insert into kfadm.wd_cntrct_month values ('5','5개월',5);
insert into kfadm.wd_cntrct_month values ('6','6개월',6);
insert into kfadm.wd_cntrct_month values ('7','7개월',7);
insert into kfadm.wd_cntrct_month values ('8','8개월',8);
insert into kfadm.wd_cntrct_month values ('9','9개월',9);
insert into kfadm.wd_cntrct_month values ('10','10개월',10);
insert into kfadm.wd_cntrct_month values ('11','11개월',11);
insert into kfadm.wd_cntrct_month values ('12','12개월',12);
insert into kfadm.wd_cntrct_month values ('13','13개월',13);
insert into kfadm.wd_cntrct_month values ('14','14개월',14);
insert into kfadm.wd_cntrct_month values ('15','15개월',15);
insert into kfadm.wd_cntrct_month values ('16','16개월',16);
insert into kfadm.wd_cntrct_month values ('17','17개월',17);
insert into kfadm.wd_cntrct_month values ('18','18개월',18);
insert into kfadm.wd_cntrct_month values ('19','19개월',19);
insert into kfadm.wd_cntrct_month values ('20','20개월',20);
insert into kfadm.wd_cntrct_month values ('21','21개월',21);
insert into kfadm.wd_cntrct_month values ('22','22개월',22);
insert into kfadm.wd_cntrct_month values ('23','23개월',23);
insert into kfadm.wd_cntrct_month values ('24','24개월',24);
insert into kfadm.wd_cntrct_month values ('25','25개월',25);
insert into kfadm.wd_cntrct_month values ('26','26개월',26);
insert into kfadm.wd_cntrct_month values ('27','27개월',27);
insert into kfadm.wd_cntrct_month values ('28','28개월',28);
insert into kfadm.wd_cntrct_month values ('29','29개월',29);
insert into kfadm.wd_cntrct_month values ('30','30개월',30);
insert into kfadm.wd_cntrct_month values ('31','31개월',31);
insert into kfadm.wd_cntrct_month values ('32','32개월',32);
insert into kfadm.wd_cntrct_month values ('33','33개월',33);
insert into kfadm.wd_cntrct_month values ('34','34개월',34);
insert into kfadm.wd_cntrct_month values ('35','35개월',35);
insert into kfadm.wd_cntrct_month values ('36','36개월',36);
insert into kfadm.wd_cntrct_month values ('37','37개월',37);
insert into kfadm.wd_cntrct_month values ('38','38개월',38);
insert into kfadm.wd_cntrct_month values ('39','39개월',39);
insert into kfadm.wd_cntrct_month values ('40','40개월',40);
insert into kfadm.wd_cntrct_month values ('41','41개월',41);
insert into kfadm.wd_cntrct_month values ('42','42개월',42);
insert into kfadm.wd_cntrct_month values ('43','43개월',43);
insert into kfadm.wd_cntrct_month values ('44','44개월',44);
insert into kfadm.wd_cntrct_month values ('45','45개월',45);
insert into kfadm.wd_cntrct_month values ('46','46개월',46);
insert into kfadm.wd_cntrct_month values ('47','47개월',47);
insert into kfadm.wd_cntrct_month values ('48','48개월',48);
insert into kfadm.wd_cntrct_month values ('49','49개월',49);
insert into kfadm.wd_cntrct_month values ('50','50개월',50);
insert into kfadm.wd_cntrct_month values ('51','51개월',51);
insert into kfadm.wd_cntrct_month values ('52','52개월',52);
insert into kfadm.wd_cntrct_month values ('53','53개월',53);
insert into kfadm.wd_cntrct_month values ('54','54개월',54);
insert into kfadm.wd_cntrct_month values ('55','55개월',55);
insert into kfadm.wd_cntrct_month values ('56','56개월',56);
insert into kfadm.wd_cntrct_month values ('57','57개월',57);
insert into kfadm.wd_cntrct_month values ('58','58개월',58);
insert into kfadm.wd_cntrct_month values ('59','59개월',59);
insert into kfadm.wd_cntrct_month values ('^','미입력',999999999);


 
 
 
 
 
 
 
 
 
 