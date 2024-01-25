-----------------------wd_area

SELECT signgu_cde
     , signgu_nm
	 , ctprvn_cde
	 , ctprvn_nm
	 , (ROW_NUMBER() over(ORDER BY signgu_cde )) AS sort_ordr
  FROM(
SELECT THRD_GB AS signgu_cde
       , KOR_CD_NM AS signgu_nm
       , SCND_GB AS ctprvn_cde 
       , SCND_NM AS ctprvn_nm
   FROM joinkfa.COMCM010 
  WHERE FRST_GB ='P03'
    AND SCND_GB != '*'
    AND THRD_GB != '*')a
 ;
 
---------------------------wd_dstrct

SELECT THRD_GB AS dstrct_cde
     , KOR_CD_NM AS dstrct_nm
     , (ROW_NUMBER() over(ORDER BY sort_seq  )) AS sort_ordr
     FROM joinkfa.COMCM010 
 WHERE --FRST_GB = 'RE01'
    SCND_GB = 'RE0128'
   AND THRD_GB != '*'
 ;
 
-----------------------wd_nation

select nation_cde
     , nation_nm
     , (ROW_NUMBER() over(ORDER BY nation_cde )) AS sort_ordr
  from(
		SELECT THRD_GB  AS nation_cde
		     , KOR_CD_NM||'('||THRD_GB||')'  AS nation_nm
		  FROM JOINKFA.COMCM010
		 WHERE FRST_GB = 'NA01'
		    and SCND_GB = 'A09'
		  AND THRD_GB != '*'
		union all
		select kor_cd_nm AS nation_cde
		     , ref1 ||'('||kor_cd_nm||')' AS nation_nm
		  from comcm010 
		 where frst_gb  = 'NA01'
		   and scnd_gb = 'A08'
		  AND THRD_GB != '*'
		  and eng_cd_nm != '*'
		) a
  group by nation_cde, nation_nm
		  ;
		  
 insert into kfadm.wd_nation values('NOT','NO',999999998);

     

   
 ----------wd_rcord_se
   SELECT THRD_GB  AS rcord_se_cde
     , KOR_CD_NM  AS rcord_se_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM JOINKFA.COMCM010
 WHERE FRST_GB = 'MA04'
   AND SCND_GB = 'MA0408'
   AND THRD_GB != '*'
    ;
   
 INSERT INTO kfadw.wd_rcord_se VALUES ('12','슈팅',14);
 
 
INSERT INTO kfadm.wd_rcord_se VALUES ('11','득점',	1	);
INSERT INTO kfadm.wd_rcord_se VALUES ('12','슈팅',	2	);
INSERT INTO kfadm.wd_rcord_se VALUES ('21','도움',	3	);
INSERT INTO kfadm.wd_rcord_se VALUES ('31','경고',	4	);
INSERT INTO kfadm.wd_rcord_se VALUES ('32','지도자경고',	5	);
INSERT INTO kfadm.wd_rcord_se VALUES ('33','임원경고',	6	);
INSERT INTO kfadm.wd_rcord_se VALUES ('41','퇴장',	7	);
INSERT INTO kfadm.wd_rcord_se VALUES ('51','교체IN',	8	);
INSERT INTO kfadm.wd_rcord_se VALUES ('52','교체OUT',	9	);
INSERT INTO kfadm.wd_rcord_se VALUES ('53','플라잉교체',	10	);
INSERT INTO kfadm.wd_rcord_se VALUES ('61','자책골	',	11	);
INSERT INTO kfadm.wd_rcord_se VALUES ('71','지도자퇴장',	12	);
INSERT INTO kfadm.wd_rcord_se VALUES ('76','임원퇴장',	13	);
INSERT INTO kfadm.wd_rcord_se VALUES ('81','PSO',	14	);
INSERT INTO kfadm.wd_rcord_se VALUES ('90','오프사이즈',	15	);
INSERT INTO kfadm.wd_rcord_se VALUES ('91','파울',	16	);
INSERT INTO kfadm.wd_rcord_se VALUES ('92','피파울',	17	);
INSERT INTO kfadm.wd_rcord_se VALUES ('^','미입력',	999999999	);

   

   
  -----------wd_warn_resn

   SELECT THRD_GB AS card_reason_cde
     , KOR_CD_NM  AS card_reason_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
  FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'F01'
   AND THRD_GB != '*'
 ;

---------------wd_sexdstn
SELECT THRD_GB AS sexdstn_cde
     , KOR_CD_NM  AS sexdstn_nm
     , SORT_SEQ AS sort_ordr
  FROM JOINKFA.comcm010
 WHERE FRST_GB = 'AP02'
   AND SCND_GB = 'AP0201'
   AND THRD_GB != '*'
     ;


truncate table     ;

-----------------wd_act
insert into kfadm.wd_act;
SELECT THRD_GB  AS act_at
     , KOR_CD_NM  AS act_NM
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'RE0106'
   AND THRD_GB != '*'
 ;
INSERT INTO act_at VALUES ('ACTIVE','활동',1);
INSERT INTO act_at VALUES ('INACTIVE','비활동',2);
INSERT INTO act_at VALUES ('STANDBY','대기',3);
INSERT INTO act_at VALUES ('DUE','활동예정',4);

---------------wd_act
INSERT INTO kfadm.wd_act VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_act VALUES ('ACTIVE','활동',1);
INSERT INTO kfadm.wd_act VALUES ('INACTIVE','비활동',2);
INSERT INTO kfadm.wd_act VALUES ('STANDBY','대기',3);
INSERT INTO kfadm.wd_act VALUES ('DUE','활동예정',4);



/*SELECT THRD_GB  AS act_at
     , KOR_CD_NM  AS act_NM
     , (ROW_NUMBER() over(ORDER BY THRD_GB)) AS sort_ordr
FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'RE0106'
   AND THRD_GB != '*'
 ;
INSERT INTO act_at VALUES ('DUE','활동예정',4);
*/

--------------wd_capt
INSERT INTO kfadm.wd_capt VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_capt VALUES ('Y','주장',1);
INSERT INTO kfadm.wd_capt VALUES ('N','일반선수',2);

-----------------wd_entry_se
INSERT INTO kfadm.wd_entry_se VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_entry_se VALUES ('S','주전',1);
INSERT INTO kfadm.wd_entry_se VALUES ('R','교체',2);
INSERT INTO kfadm.wd_entry_se VALUES ('N','미출전',3);
INSERT INTO kfadm.wd_entry_se VALUES ('B','미출전',4);

---------------------wd_forfeit
INSERT INTO kfadm.wd_forfeit VALUES ('^','미입력',999999999);
insert into kfadm.wd_forfeit VALUES('Y','실격',1);


---------------------wd_forfeit_pnttm_half_elapse
INSERT INTO kfadm.wd_forfeit_pnttm_half_elapse VALUES ('^','미입력',999999999);
insert into kfadm.wd_forfeit_pnttm_half_elapse VALUES('Y','경과',1);
insert into kfadm.wd_forfeit_pnttm_half_elapse VALUES('N','경과하지않음',2);


------------wd_hnrt_edc_compl
INSERT INTO kfadm.wd_hnrt_edc_compl VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_hnrt_edc_compl VALUES('Y','이수',1);
INSERT INTO kfadm.wd_hnrt_edc_compl VALUES('N','미이수',2);


-------------------wd_home_team
INSERT INTO kfadm.wd_home_team VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_home_team VALUES ('Y','홈경기',1);
INSERT INTO kfadm.wd_home_team VALUES ('N','홈경기아님',2);
INSERT INTO kfadm.wd_home_team VALUES ('H','홈팀',3);
INSERT INTO kfadm.wd_home_team VALUES ('A','원정팀',4);

-------------wd_item
INSERT INTO kfadm.wd_item VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_item VALUES ('S', '축구', 1);
INSERT INTO kfadm.wd_item VALUES ('F', '풋살', 2);
 

---------------wd_panalty_kick
INSERT INTO kfadm.wd_panalty_kick VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_panalty_kick VALUES ('Y','패널티킥',1);
INSERT INTO kfadm.wd_panalty_kick VALUES ('N','NO',2);

--------------wd_pro_junior
INSERT INTO kfadm.wd_pro_junior VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_pro_junior VALUES ('Y','프로산하',1);
INSERT INTO kfadm.wd_pro_junior VALUES ('N','NO',2);


------------wd_game

SELECT  IDX as game_no
, '['||IDX||'] '||TEAM_HOME ||' : '||TEAM_AWAY ||'' as game_nm
, (ROW_NUMBER() over(ORDER BY IDX )) AS sort_ordr
FROM JOINKFA.MATCH_SINGLE_INFO 
 where REGDATE is not null
  ; 
 
 
 
 
--------------------wd_game_mthd_se
 select thrd_gb as game_mthd_se_cde
      , kor_cd_nm   as game_mthd_se_nm
      , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 c 
  where scnd_gb = 'AP0226'
    and thrd_gb != '*'
 ;
 

 
 ---------------------wd_forfeit_game
 
INSERT INTO kfadm.wd_forfeit_game VALUES ('^','미입력',999999999);
insert into kfadm.wd_forfeit_game VALUES('Y','실격',1);
insert into kfadm.wd_forfeit_game VALUES('N','출전가능',2);

select  distinct  forfeit from match_single_info;
 

--------------------wd_fut_act (사용안함)

INSERT INTO kfadm.wd_fut_act VALUES ('^','미입력',999999999);
INSERT INTO kfadm.wd_fut_act VALUES ('ACTIVE','활동',1);
INSERT INTO kfadm.wd_fut_act VALUES ('INACTIVE','비활동',2);
INSERT INTO kfadm.wd_fut_act VALUES ('STANDBY','대기',3);
INSERT INTO kfadm.wd_fut_act VALUES ('DUE','활동예정',4);



fut_act_cde
activity_fs;
select distinct  activity_fs from referee_info_year;


-------------------------wd_tmzon


-----------------------시분초

insert into wd_tmzon;
select replace(a.TimeOfDay,':','') as tmzon_cde
     , a.TimeOfDay as tmzon_nm
     , (ROW_NUMBER() over(ORDER BY  a.TimeOfDay)) AS sort_ordr  
  from (
select to_char(minute, 'hh24:mi') AS TimeOfDay,
	-- Hour of the day (0 - 23)
	extract(hour from minute) as Hour, 
	-- Extract and format quarter hours
	to_char(minute - (extract(minute from minute)::integer % 15 || 'minutes')::interval, 'hh24:mi') ||
	' – ' ||
	to_char(minute - (extract(minute from minute)::integer % 15 || 'minutes')::interval + '14 minutes'::interval, 'hh24:mi')
		as QuarterHour,
	-- Minute of the day (0 - 1439)
	extract(hour from minute)*60 + extract(minute from minute) as minute,
	-- Names of day periods
	case when to_char(minute, 'hh24:mi') between '06:00' and '08:29'
		then 'Morning'
	     when to_char(minute, 'hh24:mi') between '08:30' and '11:59'
		then 'AM'
	     when to_char(minute, 'hh24:mi') between '12:00' and '17:59'
		then 'PM'
	     when to_char(minute, 'hh24:mi') between '18:00' and '22:29'
		then 'Evening'
	     else 'Night'
	end as DaytimeName,
	-- Indicator of day or night
	case when to_char(minute, 'hh24:mi') between '07:00' and '19:59' then 'Day'
	     else 'Night'
	end AS DayNight
from (SELECT '0:00'::time + (sequence.minute || ' minutes')::interval AS minute
	FROM generate_series(0,1439) AS sequence(minute)
	GROUP BY sequence.minute
     ) DQ
order by 1) a



--------------------------------- 년월일
SELECT
	datum as Date,
	extract(year from datum) AS Year,
	extract(month from datum) AS Month,
	-- Localized month name
	to_char(datum, 'TMMonth') AS MonthName,
	extract(day from datum) AS Day,
	extract(doy from datum) AS DayOfYear,
	-- Localized weekday
	to_char(datum, 'TMDay') AS WeekdayName,
	-- ISO calendar week
	extract(week from datum) AS CalendarWeek,
	to_char(datum, 'dd. mm. yyyy') AS FormattedDate,
	'Q' || to_char(datum, 'Q') AS Quartal,
	to_char(datum, 'yyyy/"Q"Q') AS YearQuartal,
	to_char(datum, 'yyyy/mm') AS YearMonth,
	-- ISO calendar year and week
	to_char(datum, 'iyyy/IW') AS YearCalendarWeek,
	-- Weekend
	CASE WHEN extract(isodow from datum) in (6, 7) THEN 'Weekend' ELSE 'Weekday' END AS Weekend,
	-- Fixed holidays 
        -- for America
        CASE WHEN to_char(datum, 'MMDD') IN ('0101', '0704', '1225', '1226')
		THEN 'Holiday' ELSE 'No holiday' END
		AS AmericanHoliday,
        -- for Austria
	CASE WHEN to_char(datum, 'MMDD') IN 
		('0101', '0106', '0501', '0815', '1101', '1208', '1225', '1226') 
		THEN 'Holiday' ELSE 'No holiday' END 
		AS AustrianHoliday,
        -- for Canada
        CASE WHEN to_char(datum, 'MMDD') IN ('0101', '0701', '1225', '1226')
		THEN 'Holiday' ELSE 'No holiday' END 
		AS CanadianHoliday,
	-- Some periods of the year, adjust for your organisation and country
	CASE WHEN to_char(datum, 'MMDD') BETWEEN '0701' AND '0831' THEN 'Summer break'
	     WHEN to_char(datum, 'MMDD') BETWEEN '1115' AND '1225' THEN 'Christmas season'
	     WHEN to_char(datum, 'MMDD') > '1225' OR to_char(datum, 'MMDD') <= '0106' THEN 'Winter break'
		ELSE 'Normal' END
		AS Period,
	-- ISO start and end of the week of this date
	datum + (1 - extract(isodow from datum))::integer AS CWStart,
	datum + (7 - extract(isodow from datum))::integer AS CWEnd,
	-- Start and end of the month of this date
	datum + (1 - extract(day from datum))::integer AS MonthStart,
	(datum + (1 - extract(day from datum))::integer + '1 month'::interval)::date - '1 day'::interval AS MonthEnd
FROM (
	-- There are 3 leap years in this range, so calculate 365 * 10 + 3 records
	SELECT '2000-01-01'::DATE + sequence.day AS datum
	FROM generate_series(0,3652) AS sequence(day)
	GROUP BY sequence.day
     ) DQ
order by 1



----------------------------wd_psitn_month

insert into wd_psitn_month








