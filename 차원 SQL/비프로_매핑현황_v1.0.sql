select 'https://staging.data-api.bepro11.com/api/matches?season='||id||'&Authorization=Bearer+WYU6rH7LVuZOdWtqKc0Lo872M6Mh86' as url
     , current_date as regdate
  from seasons s
where season_group_name = to_char(current_date,'yyyy')
  ;
  
select 'https://staging.data-api.bepro11.com/api/seasons/'||URL||'?Authorization=Bearer+WYU6rH7LVuZOdWtqKc0Lo872M6Mh86' AS URL 
     , current_date as regdate
from (
SELECT
      (REGEXP_SPLIT_TO_ARRAY(replace(replace (a.season_ids,'[',''),']','') ,','))[1] AS URL  
  FROM highleague.leagues  a
union
 SELECT  
        (REGEXP_SPLIT_TO_ARRAY(replace(replace (a.season_ids,'[',''),']','') ,','))[2] AS URL  
  FROM highleague.leagues  a
union
 SELECT  
     (REGEXP_SPLIT_TO_ARRAY(replace(replace (a.season_ids,'[',''),']','') ,','))[3] AS URL  
  FROM highleague.leagues a
union
 SELECT  
     (REGEXP_SPLIT_TO_ARRAY(replace(replace (a.season_ids,'[',''),']','') ,','))[4] AS URL  
  FROM highleague.leagues a
  ) b
 where url is not null
 order by url;


select 'https://staging.data-api.bepro11.com/api/teams?season='||a.season_id||'&Authorization=Bearer+WYU6rH7LVuZOdWtqKc0Lo872M6Mh86' as url
     , a.season_group_name 
     , current_date as regdate
  from (
select season_id ,season_group_name from matches 
 --where season_group_name = to_char(current_date, 'yyyy')
  group by season_id ,season_group_name
 order by season_id)a;




select 'https://staging.data-api.bepro11.com/api/teams?season='||id||'&Authorization=Bearer+WYU6rH7LVuZOdWtqKc0Lo872M6Mh86' as URL
      , season_group_name 
      , current_date as regdate
  from seasons  
 where season_group_name = '2022'
;

 
select * from matches m  
 where 
 cast (start_time  as text)  BETWEEN TO_CHAR(CURRENT_TIMESTAMP - interval '7 day', 'YYYY-MM-DD') AND TO_CHAR(CURRENT_TIMESTAMP,'YYYY-MM-DD')
;


select * from matches m  
 where 
 cast (start_time as text)  BETWEEN '2022-08-27' and '2022-09-27' 
 order by start_time 
;


alter table players add column external_id varchar(64);
alter table teams add column external_id varchar(10);


select * from teams
 where external_id is not null
 ;


select * from matches;

delete from teams  where season_group_name = '2022';

truncate table leagues ;
truncate table seasons  ;
truncate table teams  ;
truncate table players  ;
truncate table matches  ;

truncate from leagues ;


-- 825 not null
-- 135 null
select  'teamid' as "매핑 구분" ,'N' as "매핑 반영 여부", season_group_name , count(*) from teams
 where external_id is  null
group by season_group_name
union all
select 'teamid' as "매핑 구분",  'Y' as "매핑 반영 여부", season_group_name , count(*) from teams
 where external_id is not  null
group by season_group_name
union all
select  'playerid' as "매핑 구분" ,'N' as "매핑 반영 여부", season_group_name , count(*) from players
 where external_id is  null
group by season_group_name
union all
select 'playerid' as "매핑 구분",  'Y' as "매핑 반영 여부", season_group_name , count(*) from players
 where external_id is not  null
group by season_group_name
 ;





select distinct  id  from teams
 where external_id is  null
 order by id
 ;


select distinct  team_id  from players 
 where external_id is  null 
 order by team_id 
;

select * from players 
 where team_id = '41'
 ;


select * from players 
 where season_group_name = '2021'
 ;

delete from players where season_group_name = '2021';



