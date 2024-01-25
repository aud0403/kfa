drop view 비프로경기현황;

create view 비프로경기현황
as 
select b.stdr_year_nm                             as    연도
      , a.game_no                                 as    경기명
      , a.round_no                                as    라운드번호
      , d.round_nm                                as    라운드번호명
      , a.season_no                               as    시즌번호
      , e.season_nm                               as    시즌명
      , a.league_no                               as    리그번호
      , f.league_nm                               as    리그명
      , a.home_team_no                            as    홈팀번호
      , g.team_nm                                 as    홈팀명
      , a.away_team_no                            as    원정팀번호
      , h.team_nm                                 as    원정팀명
      , a.home_team_nation_cde                    as    홈팀국가코드
      , i.nation_nm                               as    홈팀국가명
      , a.away_team_nation_cde                    as    원정팀국가코드
      , j.nation_nm                               as    원정팀국가명
      , a.stdm_no                                 as    경기장번호
      , k.stdm_nm                                 as    경기장명
      , a.et_result_cde                           as    연장결과코드
      , l.et_result_nm                            as    연장결과명
      , m.de_nm                                   as    경기일자
      , a.game_begin_tmzon_cde                    as    경기시작시간대코드
      , n.tmzon_nm                                as    경기시작시간대
      , a.game_time                               as    경기시간
      , a.fhalf_shalf_time                        as    전반후반시간
      , a.et_time                                 as    연장시간
      , a.home_team_score                         as    홈팀득점
      , a.away_team_score                         as    원정팀득점
      , a.home_team_addnl_score                   as    홈팀추가득점
      , a.away_team_addnl_score                   as    원정팀추가득점
      , a.side_line_lt                            as    사이드라인길이
      , a.goal_line_lt                            as    골라인길이
      , a.game_co                                 as    경기수
   from wf_bepro_game_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_game c 
	 ON a.game_no = c.game_no 	    left outer join 
	    wd_bepro_round d 
	 ON a.round_no = d.round_no 	    left outer join 
	    wd_bepro_season e 
	 ON a.season_no = e.season_no 	    left outer join 
	    wd_bepro_league f 
	 ON a.league_no = f.league_no 	    left outer join 
	    wd_bepro_team g 
	 ON a.home_team_no = g.team_no 	    left outer join 
	    wd_bepro_team h 
	 ON a.away_team_no = h.team_no 	    left outer join 
	    wd_nation i 
	 ON a.home_team_nation_cde = i.nation_cde 	    left outer join 
	    wd_nation j 
	 ON a.away_team_nation_cde = j.nation_cde 	    left outer join 
	    wd_bepro_stdm k 
	 ON a.stdm_no = k.stdm_no 	    left outer join 
	    wd_bepro_et_result l 
	 ON a.et_result_cde = l.et_result_cde 	    left outer join 
	    wd_de m 
	 ON a.game_de = m.de 	    left outer join 
	    wd_tmzon n 
	 ON a.game_begin_tmzon_cde = n.tmzon_cde 
;


comment on view kfadm.비프로경기현황 is '비프로경기현황';
comment on column kfadm.비프로경기현황.연도 is '연도';
comment on column kfadm.비프로경기현황.경기명 is '경기명';
comment on column kfadm.비프로경기현황.라운드번호 is '라운드번호';
comment on column kfadm.비프로경기현황.라운드번호명 is '라운드번호명';
comment on column kfadm.비프로경기현황.시즌번호 is '시즌번호';
comment on column kfadm.비프로경기현황.시즌명 is '시즌명';
comment on column kfadm.비프로경기현황.리그번호 is '리그번호';
comment on column kfadm.비프로경기현황.리그명 is '리그명';
comment on column kfadm.비프로경기현황.홈팀번호 is '홈팀번호';
comment on column kfadm.비프로경기현황.홈팀명 is '홈팀명';
comment on column kfadm.비프로경기현황.원정팀번호 is '원정팀번호';
comment on column kfadm.비프로경기현황.원정팀명 is '원정팀명';
comment on column kfadm.비프로경기현황.홈팀국가코드 is '홈팀국가코드';
comment on column kfadm.비프로경기현황.홈팀국가명 is '홈팀국가명';
comment on column kfadm.비프로경기현황.원정팀국가코드 is '원정팀국가코드';
comment on column kfadm.비프로경기현황.원정팀국가명 is '원정팀국가명';
comment on column kfadm.비프로경기현황.경기장번호 is '경기장번호';
comment on column kfadm.비프로경기현황.경기장명 is '경기장명';
comment on column kfadm.비프로경기현황.연장결과코드 is '연장결과코드';
comment on column kfadm.비프로경기현황.연장결과명 is '연장결과명';
comment on column kfadm.비프로경기현황.경기일자 is '경기일자';
comment on column kfadm.비프로경기현황.경기시작시간대코드 is '경기시작시간대코드';
comment on column kfadm.비프로경기현황.경기시작시간대 is '경기시작시간대';
comment on column kfadm.비프로경기현황.경기시간 is '경기시간';
comment on column kfadm.비프로경기현황.전반후반시간 is '전반후반시간';
comment on column kfadm.비프로경기현황.연장시간 is '연장시간';
comment on column kfadm.비프로경기현황.홈팀득점 is '홈팀득점';
comment on column kfadm.비프로경기현황.원정팀득점 is '원정팀득점';
comment on column kfadm.비프로경기현황.홈팀추가득점 is '홈팀추가득점';
comment on column kfadm.비프로경기현황.원정팀추가득점 is '원정팀추가득점';
comment on column kfadm.비프로경기현황.사이드라인길이 is '사이드라인길이';
comment on column kfadm.비프로경기현황.골라인길이 is '골라인길이';
comment on column kfadm.비프로경기현황.경기수 is '경기수';
