drop view 출전팀득실현황;

create  view 출전팀득실현황
as
select  b.stdr_year_nm        as    연도
      , a.league_cmpet_se_cde  as    리그대회구분코드
      , c.league_cmpet_se_nm   as    리그대회구분명
      , a.unity_cmpet_knd_cde  as    통합대회종류코드
      , d.unity_cmpet_knd_nm   as    통합대회종류명
      , a.cmpet_knd_cde        as    대회종류코드
      , e.cmpet_knd_nm         as    대회종류명
      , a.team_area_cde        as    권역코드
      , f.dstrct_nm            as    권역명
      , a.team_id              as    팀아이디
      , g.team_nm              as    팀명
      , a.mangr_id             as    감독아이디
      , h.coach_nm             as    감독명
      , h.brthdy               as    감독생년월일
      , h.hmnm_se_nm           as    감독동명구분명
      , a.game_co              as    경기수
      , a.score                as    득점
      , a.conceded_goal        as    실점
      , a.goal_dffrnc_co       as    골득실점
      , a.score_avrg           as    득점평균
      , a.conceded_goal_avrg   as    실점평균
      , a.goal_dffrnc_avrg     as    골득실평균
   from mf_team_goal_dffrnc_sttus a
	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_league_cmpet_se c 
	 ON a.league_cmpet_se_cde = c.league_cmpet_se_cde 	    left outer join 
	    wd_unity_cmpet_knd d 
	 ON a.unity_cmpet_knd_cde = d.unity_cmpet_knd_cde 	    left outer join 
	    wd_cmpet_knd e 
	 ON a.cmpet_knd_cde = e.cmpet_knd_cde 	    left outer join 
	    wd_dstrct f 
	 ON a.team_area_cde = f.dstrct_cde 	    left outer join 
	    wd_team g 
	 ON a.team_id = g.team_id 	    left outer join 
	    wd_coach h 
	 ON a.mangr_id  = h.coach_id 
;

comment on view kfadm.출전팀득실현황 is '출전팀득실현황';
comment on column kfadm.출전팀득실현황.연도 is '연도';
comment on column kfadm.출전팀득실현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.출전팀득실현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.출전팀득실현황.통합대회종류코드 is '통합대회종류코드';
comment on column kfadm.출전팀득실현황.통합대회종류명 is '통합대회종류명';
comment on column kfadm.출전팀득실현황.대회종류코드 is '대회종류코드';
comment on column kfadm.출전팀득실현황.대회종류명 is '대회종류명';
comment on column kfadm.출전팀득실현황.권역코드 is '권역코드';
comment on column kfadm.출전팀득실현황.권역명 is '권역명';
comment on column kfadm.출전팀득실현황.팀아이디 is '팀아이디';
comment on column kfadm.출전팀득실현황.팀명 is '팀명';
comment on column kfadm.출전팀득실현황.감독아이디 is '감독아이디';
comment on column kfadm.출전팀득실현황.감독명 is '감독명';
comment on column kfadm.출전팀득실현황.감독생년월일 is '감독생년월일';
comment on column kfadm.출전팀득실현황.감독동명구분명 is '감독동명구분명';
comment on column kfadm.출전팀득실현황.경기수 is '경기수';
comment on column kfadm.출전팀득실현황.득점 is '득점';
comment on column kfadm.출전팀득실현황.실점 is '실점';
comment on column kfadm.출전팀득실현황.골득실점 is '골득실점';
comment on column kfadm.출전팀득실현황.득점평균 is '득점평균';
comment on column kfadm.출전팀득실현황.실점평균 is '실점평균';
comment on column kfadm.출전팀득실현황.골득실평균 is '골득실평균';
