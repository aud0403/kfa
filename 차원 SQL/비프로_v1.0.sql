
-------------------------wd_bepro_round

select round_id as round_no
     , round_nm as round_nm
     , (ROW_NUMBER() over(ORDER BY round_id )) AS sort_ordr
 from (
		select distinct  round_id
		     , round_name --||'_'|| to_char(start_time::timestamp,  'YYYY-MM-DD') as round_nm
		  from matches
		 where round_id is not null
		) a
;

select round_id as round_no
     , round_nm as round_nm
   --, count(*)
     , (ROW_NUMBER() over(ORDER BY round_id )) AS sort_ordr
 from (
		select distinct  round_id
		     , round_name  as round_nm
		  from matches
		 where round_id is not null
		) a
--where round_id in ( '10127','18619')
 group by round_id, round_nm
 --having count(*) > 1
 ;





-----------------------wd_bepro_season

select s.id as season_no
     , s.season_group_name ||'_'|| l."name" as season_nm
     , (ROW_NUMBER() over(ORDER BY s.id  )) AS sort_ordr
  from seasons s 
       join 
       leagues l
    on s.league_id = l.id
    ;

---------------------wd_bepro_league

    
select id  as league_no
     , "name"  as league_nm
     , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
  from leagues;   


 
---------------------wd_bepro_team

 select * from matches ;
 

select id as team_no
     , "name"  as team_nm
     , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
  from (
		select distinct  id
		     , "name" 
		  from teams 
        ) a
  order by id
  ;

----------------------wd_bepro_nation

 
select nation_cde
     , nation_nm
     , (ROW_NUMBER() over(ORDER BY nation_cde )) AS sort_ordr
  from ( 
select distinct  
       nation_cde
     , nation_nm  
  from (
		 select home_team_country_cd as nation_cde
		      , home_team_country_cd as nation_nm
		   from matches 
		  union all
		 select away_team_country_cd as nation_cde
		      , away_team_country_cd as nation_nm
		   from matches 
    	) a ) b
   ;


select distinct  home_team_country_cd, away_team_country_cd  from matches; 
 
----------------- wd_bepro_stdm

select  from matches ;


select venue_id as stdm_no
     , venue_ground as stdm_nm
     , (ROW_NUMBER() over(ORDER BY venue_id )) AS sort_ordr
  from (
		select distinct  
		       venue_id 
		     , venue_ground  
		  from matches 
		 where venue_id is not null
     	) a
  ;

---------------------- wd_bepro_et_result

select distinct  extra_result_type from matches;

truncate table kfadm.wd_bepro_et_result;

insert into kfadm.wd_bepro_et_result values ('PSO','승부차기',1);
insert into kfadm.wd_bepro_et_result values ('FORFEITURE','몰수게임',2);
insert into kfadm.wd_bepro_et_result values ('^','미입력',999999999);


-------------------------- 포지션 차원 테이블 

select player_postn_cde
     , player_postn_nm
     , (ROW_NUMBER() over(ORDER BY player_postn_cde )) AS sort_ordr
  from (
select distinct 
       position_name as player_postn_cde
     , position_name as player_postn_nm
  from matches_lineup ml
 where position_name is not null
  ) a
 ;
 
select distinct player_postn_cde from wf_bepro_lineup_sttus;

select distinct  main_position  from players;

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
                                    
----------------------------wd_bepro_strtg

truncate table kfadm.wd_bepro_strtg;

insert into kfadm.wd_bepro_strtg values('Y','선발',1);
insert into kfadm.wd_bepro_strtg values('N','미선발',2);
insert into kfadm.wd_bepro_strtg values('^','미입력',999999999);

----------------------------wd_bepro_player


 select id  as player_no
      , player_nm
      , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
   from (
		 select distinct  id 
		      , case when player_last_name is null then player_name else  player_last_name||''||player_name end as player_nm
		      , DENSE_RANK() OVER (PARTITION BY id ORDER BY season_group_name desc ) AS row_num
		      , season_group_name 
		   from players 
		  ) a 
  where row_num = 1
  ;
 
 ------------wd_bepro_game
 
 select id as game_no
      , home_team_name||' : '||away_team_name||'('||id||')' as game_nm
      , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
 from matches
-- group by  home_team_name||':'||away_team_name||'('||id||')'
 --having count(*) >1
 ;
 select * from matches;
 
drop table kfadm.wd_bepor_game;

CREATE TABLE kfadm.wd_bepro_game (
	game_no numeric(11) NOT NULL,
	game_nm varchar(100) NULL,
	sort_ordr numeric(10) NULL,
	CONSTRAINT wd_bepro_game_pkey PRIMARY KEY (game_no)
);
