drop view 팀별기록현황;

create view  팀별기록현황 
as
select b.stdr_year_nm            as   연도
      , a.league_cmpet_se_cde    as   리그대회구분코드
      , c.league_cmpet_se_nm     as   리그대회구분명
      , a.unity_cmpet_knd_cde    as   통합대회종류코드
      , d.unity_cmpet_knd_nm     as   통합대회종류명
      , a.cmpet_knd_cde          as   대회종류코드
      , e.cmpet_knd_nm           as   대회종류명
      , a.game_dstrct_cde        as   경기지역코드
      , f.dstrct_nm              as   경기지역
      , a.home_team_id           as   홈팀아이디
      , g.team_nm                as   홈팀명
      , a.home_team_grad_cde     as   홈팀등급코드
      , h.team_grad_nm           as   홈팀등급명
      , a.away_team_id           as   원정팀아이디
      , i.team_nm                as   원정팀명
      , j.team_grad_cde          as   원정팀등급코드
      , j.team_grad_nm           as   원정팀등급명
      , a.game_no                as   경기번호
      , k.game_nm 				 as   경기명
      , a.home_team_last_score   as   홈팀최종득점
      , a.away_team_last_score   as   원정팀최종득점
      , a.goal_dffrnc_co         as   골득실
      , a.under_5_score_co       as   "5점미만"
      , a.from_5_to_10_score_co  as   "5점이상10점미만"
      , a.over_10_score_co       as   "10점이상"
      , a.game_co                as   경기수
   from mf_team_rcord_sttus a
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
	 ON a.game_dstrct_cde = f.dstrct_cde 	    left outer join 
	    wd_team g 
	 ON a.home_team_id = g.team_id 	    left outer join 
	    wd_team_grad h 
	 ON a.home_team_grad_cde = h.team_grad_cde 	    left outer join 
	    wd_team i 
	 ON a.away_team_id = i.team_id 	    left outer join 
	    wd_team_grad j 
	 ON a.away_team_grad_cde = j.team_grad_cde 
	    left outer join 
	    wd_game k 
	 on a.game_no = k.game_no 
;


comment on column kfadm.팀별기록현황.연도 is '연도';
comment on column kfadm.팀별기록현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.팀별기록현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.팀별기록현황.통합대회종류코드 is '통합대회종류코드';
comment on column kfadm.팀별기록현황.통합대회종류명 is '통합대회종류명';
comment on column kfadm.팀별기록현황.대회종류코드 is '대회종류코드';
comment on column kfadm.팀별기록현황.대회종류명 is '대회종류명';
comment on column kfadm.팀별기록현황.경기지역코드 is '경기지역코드';
comment on column kfadm.팀별기록현황.경기지역 is '경기지역';
comment on column kfadm.팀별기록현황.홈팀아이디 is '홈팀아이디';
comment on column kfadm.팀별기록현황.홈팀명 is '홈팀명';
comment on column kfadm.팀별기록현황.홈팀등급코드 is '홈팀등급코드';
comment on column kfadm.팀별기록현황.홈팀등급명 is '홈팀등급명';
comment on column kfadm.팀별기록현황.원정팀아이디 is '원정팀아이디';
comment on column kfadm.팀별기록현황.원정팀명 is '원정팀명';
comment on column kfadm.팀별기록현황.원정팀등급코드 is '원정팀등급코드';
comment on column kfadm.팀별기록현황.원정팀등급명 is '원정팀등급명';
comment on column kfadm.팀별기록현황.경기번호 is '경기번호';
comment on column kfadm.팀별기록현황.경기명 is '경기명';
comment on column kfadm.팀별기록현황.홈팀최종득점 is '홈팀최종득점';
comment on column kfadm.팀별기록현황.원정팀최종득점 is '원정팀최종득점';
comment on column kfadm.팀별기록현황.골득실 is '골득실';
comment on column kfadm.팀별기록현황."5점미만" is '5점미만';
comment on column kfadm.팀별기록현황."5점이상10점미만" is '5점이상10점미만';
comment on column kfadm.팀별기록현황."10점이상" is '10점이상';
comment on column kfadm.팀별기록현황.경기수 is '경기수';
