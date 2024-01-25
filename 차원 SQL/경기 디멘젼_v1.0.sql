------wd_game_atndnc

SELECT * FROM MATCH_COACH_RESULT 
 WHERE ATTEND_YN != 'Y';

INSERT INTO kfadw.wd_game_atndnc VALUES ('Y','참석',1);
INSERT INTO kfadw.wd_game_atndnc VALUES ('N','미참석',2);
INSERT INTO kfadw.wd_game_atndnc VALUES ('^','미입력',999999999);



-----------------wd_game_end


INSERT INTO kfadw.wd_game_end VALUES('Y','경기종료',1);
INSERT INTO kfadw.wd_game_end VALUES('N','경기종료 안함',2);
INSERT INTO kfadw.wd_game_end VALUES ('^','미입력',999999999);

--------------------wd_game_et

insert into kfadw.wd_game_et values('^','미입력',999999999);
INSERT INTO kfadw.wd_game_et VALUES ('Y','연장전',1);
INSERT INTO kfadw.wd_game_et VALUES ('N','연장전 안함',2);



--------------wd_game_result

insert into kfadw.wd_game_result values('^','미입력',999999999);
insert into kfadw.wd_game_result values ('1','승',1);
insert into kfadw.wd_game_result values ('2','패',2);
insert into kfadw.wd_game_result values ('3','무승부',3);


-----------------wd_game_se


game_se_cde

select distinct  game_gubun from match_single_info ;

select * from comcm010 
 where thrd_gb  = '60'
;





 vm_codes := '-1@10@20@30@40@24@50@60';
 vm_names := '미지정@결승@4강@8강@16강@24강@32강@64강';
 
 
insert into kfadm.wd_game_se values('-1','미지정',999999999);
insert into kfadm.wd_game_se values('10','결승',1);
insert into kfadm.wd_game_se values('20','4강',2);
insert into kfadm.wd_game_se values('30','8강',3);
insert into kfadm.wd_game_se values('40','16깅',4);
insert into kfadm.wd_game_se values('24','24강',5);
insert into kfadm.wd_game_se values('50','32강',6);
insert into kfadm.wd_game_se values('60','64강',7);