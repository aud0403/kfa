---------------wd_cmpet

SELECT IDX as cmpet_no
     , case when match_gradeopt is not null and mas_titl is not null
            then TITLE||'['||match_gradeopt||']['||mas_titl||']'
            when match_gradeopt is not null and mas_titl is null
            then TITLE||'['||match_gradeopt||']'
            when match_gradeopt isnull and mas_titl is not null
            then TITLE||'['||mas_titl||']'
            else TITLE end
         as cmpet_nm
     , (ROW_NUMBER() over(ORDER BY IDX )) AS sort_ordr
  FROM joinkfa.match_info
 
  ;
 
 select title , match_gradeopt,mas_titl  from match_info 
  where mas_titl is null
;
 


-------wd_cmpet_class

SELECT THRD_GB  AS cmpet_class_cde
     , KOR_CD_NM  AS cmpet_class_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB )) AS sort_ordr
  FROM joinkfa.COMCM010
 WHERE FRST_GB = 'AP01'
   AND SCND_GB = 'F30'
   AND THRD_GB != '*'
    ;
    
   
---------------wd_cmpet_knd

select mgc_idx as cmpet_knd_cde
     , mgc_nm as cmpet_knd_nm
     , (ROW_NUMBER() over(ORDER BY mgc_idx)) AS sort_ordr
from joinkfa.MCH_GRP_CLSS;
 


select mgc_idx as cmpet_knd_cde
     , case when mgc_nm like 'K%'then mgc_nm ELSE
        ''||regexp_replace(mgc_nm,'리그|대회','')||''||case when mgc_type ='S' then '축구'
												          when mgc_type ='F' then '풋살'
												          when mgc_type ='J' then'준회원' else '' end||''
												   ||case when mgc_cl = 'league2' then '리그'
      													  when mgc_cl = 'match' then '대회' else '' end||''
      										END	  as cmpet_knd_nm
     , (ROW_NUMBER() over(ORDER BY mgc_idx)) AS sort_ordr
 from joinkfa.MCH_GRP_CLSS;


insert into kfadm.wd_cmpet_knd values('ES_TOTAL','초등전체',45);
insert into kfadm.wd_cmpet_knd values('MS_TOTAL','중등전체',46);
insert into kfadm.wd_cmpet_knd values('HS_TOTAL','고등전체',47);


----------------------wd_dwrn

SELECT THRD_GB AS dwrn_at
     , KOR_CD_NM AS at_nm
     , (ROW_NUMBER() over(ORDER BY THRD_GB DESC )) AS sort_ordr
  FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'AP0256'
   AND THRD_GB != '*'
 ;

-----------------wd_league_cmpet_se

SELECT THRD_GB AS league_cmpet_se_cde
     , KOR_CD_NM AS league_cmpet_se_nm
	 , (ROW_NUMBER() over(ORDER BY THRD_GB DESC )) AS sort_ordr
FROM joinkfa.COMCM010 
 WHERE SCND_GB = 'AP0203'
   AND THRD_GB != '*'
 ;
 
---------------wd_cmpet_nm_knd
select distinct  match_title_type  from national_match_info;

select thrd_gb as cmpet_nm_knd_cde
     , kor_cd_nm  as cmpet_nm_knd_nm
     , (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
  from comcm010 
 where scnd_gb = 'A11'
   and thrd_gb != '*' 
;

--------------wd_cmpet_grad


select thrd_gb as cmpet_grad_cde
     , kor_cd_nm  as cmpet_grad_nm
     , (ROW_NUMBER() over(ORDER by thrd_gb)) AS sort_ordr
  from comcm010
 where scnd_gb = 'A06'
   and thrd_gb != '*'
;



------------ wd_red_card_sbstt_use

INSERT into  kfadm.wd_red_card_sbstt_use VALUES('Y','사용',1);
INSERT into  kfadm.wd_red_card_sbstt_use VALUES('N','미사용',2);




truncate  table     ;
--------------------------wd_anytm_sbstt_use

INSERT INTO kfadm.wd_anytm_sbstt_use VALUES ('Y','퇴장교체',1);
INSERT INTO kfadm.wd_anytm_sbstt_use VALUES ('N','퇴장교체안함',2);


---------------------wd_cmpet_et

INSERT INTO kfadm.wd_cmpet_et VALUES ('Y','연장전',1);
INSERT INTO kfadm.wd_cmpet_et VALUES ('N','연장전 안함',2);


----------------------------wd_confm_cmpet

INSERT INTO kfadm.wd_confm_cmpet VALUES('Y','승인대회',1);
INSERT INTO kfadm.wd_confm_cmpet VALUES('N','비승인대회',2);

---------------------------wd_home_stdm_use

INSERT INTO kfadm.wd_home_stdm_use VALUES ('Y','홈경기사용',1);
INSERT INTO kfadm.wd_home_stdm_use VALUES ('N','홈경기사용안함',2);

------------------------wd_panalty_shootout

INSERT INTO kfadm.wd_panalty_shootout VALUES ('Y','승부차기',1);
INSERT INTO kfadm.wd_panalty_shootout VALUES ('N','승부차기사용안함',2);

---------------------------wd_ranking_system_use

INSERT INTO kfadm.wd_ranking_system_use VALUES ('Y','출전정지이월',1);
INSERT INTO kfadm.wd_ranking_system_use VALUES ('N','출전정지이월안함',2);

---------------------------wd_wnrd_playng_stop_cyfd

INSERT INTO kfadm.wd_wnrd_playng_stop_cyfd VALUES ('Y','출전정지이월',1);
INSERT INTO kfadm.wd_wnrd_playng_stop_cyfd VALUES ('N','출전정지이월안함',2);

---------------------------wd_unity_cmpet_knd

INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('ES','초등',1);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('MS','중등',2);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('HS','고등',3);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('K','K리그',4);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('K3','세미프로',5);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('K5','아마추어',6);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('UV','대학',7);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('WK','WK리그',8);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('K1','K1',9);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('K2','K2',10);
INSERT INTO kfadm.wd_unity_cmpet_knd VALUES ('^','미입력',999999999);

----------------------wd_game_place


select match_area  
     , match_area 
     , (ROW_NUMBER() over(ORDER by match_area)) AS sort_ordr
  from match_single_info
 where match_area  is not null
 group by match_area
  ;


insert into kfadm.wd_game_place  values ('선라이프스타디움',8343);
insert into kfadm.wd_game_place  values ('라자망갈라 국립 경기장',8344);
insert into kfadm.wd_game_place  values ('시드니 스타디움',8345);
insert into kfadm.wd_game_place  values ('윈저파크',8346);
insert into kfadm.wd_game_place  values ('우츠 스타디움',8347);
insert into kfadm.wd_game_place  values ('하자 빈 자예드 스타디움',8348);
insert into kfadm.wd_game_place  values ('김일성경기장',8349);
insert into kfadm.wd_game_place  values ('킹압둘라스타디움',8350);
insert into kfadm.wd_game_place  values ('모하메드 빈 자에드 스타디움',8351);
insert into kfadm.wd_game_place  values ('퀸즈랜드 스포츠 육상센터',8352);
insert into kfadm.wd_game_place  values ('솔저 필드',8353);
insert into kfadm.wd_game_place  values ('티쏘 아레나',8354);
insert into kfadm.wd_game_place  values ('카라이스카키스 스타디움',8355);
insert into kfadm.wd_game_place  values ('자빌스타디움',8356);
insert into kfadm.wd_game_place  values ('라시드 스타디움',8357);
insert into kfadm.wd_game_place  values ('내셔널 스포츠 콤플렉스 스타디움',8358);
insert into kfadm.wd_game_place  values ('소가 스포츠파크',8359);
insert into kfadm.wd_game_place  values ('니즈니 노브고르드 스타디움',8360);
insert into kfadm.wd_game_place  values ('샤밥알 아흘리 스타디움',8361);
insert into kfadm.wd_game_place  values ('코페크다그 스타디움',8362);
insert into kfadm.wd_game_place  values ('아자디스타디움',8363);
insert into kfadm.wd_game_place  values ('로스토프 아레나',8364);
insert into kfadm.wd_game_place  values ('비너노이슈타트스타디움',8365);
insert into kfadm.wd_game_place  values ('샤알람 스타디움',8366);
insert into kfadm.wd_game_place  values ('몬트리올 올림픽 스타디움',8367);
insert into kfadm.wd_game_place  values ('알 막툼 스타디움',8368);
insert into kfadm.wd_game_place  values ('크레이븐코티지',8369);
insert into kfadm.wd_game_place  values ('포르투알레그리 에스타디우 베이라',8370);
insert into kfadm.wd_game_place  values ('스타드 드 잘프',8371);
insert into kfadm.wd_game_place  values ('허룽스타디움',8372);
insert into kfadm.wd_game_place  values ('니싼스타디움',8373);
insert into kfadm.wd_game_place  values ('캔버라 스타디움',8374);
insert into kfadm.wd_game_place  values ('바니야스 스타디움',8375);
insert into kfadm.wd_game_place  values ('콜리세움메모리얼 스타디움',8376);
insert into kfadm.wd_game_place  values ('카잔 아레나',8377);
insert into kfadm.wd_game_place  values ('마르단 스타디움',8378);
insert into kfadm.wd_game_place  values ('알라모돔',8379);
insert into kfadm.wd_game_place  values ('렉탱귤러 스타디움',8380);
insert into kfadm.wd_game_place  values ('BSFZ아레나',8381);
insert into kfadm.wd_game_place  values ('파르크 데 프랭스',8382);
insert into kfadm.wd_game_place  values ('랜스다운 스타디움',8383);
insert into kfadm.wd_game_place  values ('폰테 노바 아레나',8384);
insert into kfadm.wd_game_place  values ('부산구덕경기장',8385);
insert into kfadm.wd_game_place  values ('수파찰라사이경기장',8386);
insert into kfadm.wd_game_place  values ('선콥 스타디움',8387);
insert into kfadm.wd_game_place  values ('브리즈번 스타디움',8388);
insert into kfadm.wd_game_place  values ('용인미르스타디움',8389);
insert into kfadm.wd_game_place  values ('분요드코르 스타디움',8390);
insert into kfadm.wd_game_place  values ('징계에 따른 몰수승',8391);
insert into kfadm.wd_game_place  values ('에덴아레나',8392);
insert into kfadm.wd_game_place  values ('용인시민체육공원',8393);
insert into kfadm.wd_game_place  values ('카이로인터내셔널스타디움',8394);
insert into kfadm.wd_game_place  values ('세일런 스타디움',8395);
insert into kfadm.wd_game_place  values ('아지노모토',8396);
insert into kfadm.wd_game_place  values ('퍼텍 스타디움',8397);
insert into kfadm.wd_game_place  values ('알 나히안 스타디움',8398);
insert into kfadm.wd_game_place  values ('사이다 무니시팔 스타디움',8399);
insert into kfadm.wd_game_place  values ('미네이랑 경기장',8400);
insert into kfadm.wd_game_place  values ('파로이 스타디움',8401);
insert into kfadm.wd_game_place  values ('카밀 사문 스포츠시티 스타디움',8402);
insert into kfadm.wd_game_place  values ('알막툼 스타디움',8403);
insert into kfadm.wd_game_place  values ('자예드 스포츠 시티 스타디움',8404);
insert into kfadm.wd_game_place  values ('SC스타디움',8405);
insert into kfadm.wd_game_place  values ('메르세데스-벤츠 슈퍼돔',8406);
insert into kfadm.wd_game_place  values ('마네 가린샤 스타디움',8407);
insert into kfadm.wd_game_place  values ('에미리츠클럽 스타디움',8408);
insert into kfadm.wd_game_place  values ('스타드 드 랭스',8409);
insert into kfadm.wd_game_place  values ('우한 스포츠 센터',8410);
insert into kfadm.wd_game_place  values ('쿠이아바 아레나 판타나우',8411);
insert into kfadm.wd_game_place  values ('VEB 아레나',8412);
insert into kfadm.wd_game_place  values ('상파울루 아레나 코린티안스',8413);
insert into kfadm.wd_game_place  values ('다스골트베르크 스타디움',8414);
insert into kfadm.wd_game_place  values ('쑤저우올림픽스타디움',8415);
insert into kfadm.wd_game_place  values ('레드불 아레나',8416);
insert into kfadm.wd_game_place  values ('실레시안 스타디움',8417);
insert into kfadm.wd_game_place  values ('비엘스코 비아와 스타디움',8418);
insert into kfadm.wd_game_place  values ('루블린 스타디움',8419);
insert into kfadm.wd_game_place  values ('카슨 스텁허브',8420);
insert into kfadm.wd_game_place  values ('자심 빈 하마드 경기장',8421);
insert into kfadm.wd_game_place  values ('티히 스타디움',8422);
insert into kfadm.wd_game_place  values ('샬럿 뱅크 오프 아메리카 스타디움',8423);
insert into kfadm.wd_game_place  values ('티볼리 스타디움',8424);
insert into kfadm.wd_game_place  values ('바샥셰히르 파티흐 테림 스타디움',8425);
