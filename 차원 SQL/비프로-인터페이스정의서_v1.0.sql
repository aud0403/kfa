
SELECT C.RELNAME, OBJ_DESCRIPTION(C.OID) 
  FROM PG_CATALOG.PG_CLASS C INNER JOIN PG_CATALOG.PG_NAMESPACE N ON C.RELNAMESPACE=N.OID 
 WHERE C.RELKIND = 'r' 
   AND NSPNAME = 'highleague'
   and OBJ_DESCRIPTION(C.OID) is not null 
 order by char_length(relname)  
;

select 'teams'                  ,count(*) from teams                 union all
select 'matches'                ,count(*) from matches               union all
select 'leagues'               ,count(*) from leagues               union all
select 'players'                ,count(*) from players               union all
select 'seasons'                ,count(*) from seasons               union all
select 'matches_lineup'         ,count(*) from matches_lineup        union all
select 'matches_formation'      ,count(*) from matches_formation     union all
select 'matches_team_stats'     ,count(*) from matches_team_stats    union all
select 'matches_event_data'     ,count(*) from matches_event_data    union all
select 'matches_player_stats'   ,count(*) from matches_player_stats  union all
select 'matches_event_data_bf'  ,count(*) from matches_event_data_bf union all
select 'matches_sequenfce_data' ,count(*) from matches_sequenfce_data;


select b.column_name 
     , a.column_comment
     , data_type
     , character_maximum_length
from (
SELECT
	PS.RELNAME AS TABLE_NAME,
	PA.ATTNAME AS COLUMN_NAME,
	PD.DESCRIPTION AS COLUMN_COMMENT
FROM PG_STAT_ALL_TABLES PS, PG_DESCRIPTION PD, PG_ATTRIBUTE PA
WHERE PD.OBJSUBID<>0
	AND PS.RELID=PD.OBJOID
	AND PD.OBJOID=PA.ATTRELID
	AND PD.OBJSUBID=PA.ATTNUM
	AND PS.SCHEMANAME='highleague'
	AND PS.RELNAME='matches_sequenfce_data'
ORDER BY PS.RELNAME, PD.OBJSUBID
) a
left outer join 
(SELECT
	column_name,
	data_type,
	character_maximum_length
FROM
	information_schema.columns
WHERE
	TABLE_NAME = 'matches_sequenfce_data'
) b
on a.COLUMN_NAME = b.column_name
;