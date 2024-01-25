drop view 경기일반현황;

create view 경기일반현황
as
 select b.stdr_year_nm                                       as    연도
      , a.cmpet_class_cde                                    as    대회클래스코드
      , c.cmpet_class_nm                                     as    대회클래스명
      , a.league_cmpet_se_cde                                as    리그대회구분코드
      , d.league_cmpet_se_nm                                 as    리그대회구분명
      , a.cmpet_knd_cde                                      as    대회종류코드
      , e.cmpet_knd_nm                                       as    대회종류명
      , a.cmpet_no                                           as    대회번호
      , f.cmpet_nm                                           as    대회명
      , g.de_nm                                              as    대회시작일
      , h.de_nm                                              as    대회종료일
      , a.game_no                                            as    경기번호
      , i.game_nm                                            as    경기명
      , a.game_dstrct_cde                                    as    대회지역코드
      , j.dstrct_nm                                          as    대회지역명
      , k.de_nm                                              as    경기일자
      , a.home_team_id                                            as    홈팀아이디
      , l.team_nm                                            as    홈팀명
      , a.home_team_grad_cde                                      as    홈팀등급코드
      , o.team_grad_nm                                       as    홈팀등급명
      , a.away_team_id                                            as    원정팀아이디
      , m.team_nm                                            as    원정팀명
      , a.away_team_grad_cde   		                             as	   원정팀등급코드
      , p.team_grad_nm 			                             as    원정팀등급명
      , a.game_result_cde                                    as    경기결과코드
      , n.game_result_nm                                     as    경기결과명
      , a.home_team_last_score                               as    홈팀최종득점
      , a.away_team_last_score                               as    원정팀최종득점
      , a.game_co                                            as    경기수
   from mf_game_gnrl_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_cmpet_class c 
	 ON a.cmpet_class_cde = c.cmpet_class_cde 	    left outer join 
	    wd_league_cmpet_se d 
	 ON a.league_cmpet_se_cde = d.league_cmpet_se_cde 	    left outer join 
	    wd_cmpet_knd e 
	 ON a.cmpet_knd_cde = e.cmpet_knd_cde 	    left outer join 
	    wd_cmpet f 
	 ON a.cmpet_no = f.cmpet_no 	    left outer join 
	    wd_de g 
	 ON a.cmpet_begin_dat = g.de 	    left outer join 
	    wd_de h 
	 ON a.cmpet_end_dat = h.de 	    left outer join 
	    wd_game i 
	 ON a.game_no = i.game_no 	    left outer join 
	    wd_dstrct j 
	 ON a.game_dstrct_cde = j.dstrct_cde 	    left outer join 
	    wd_de k 
	 ON a.game_de = k.de 	    left outer join 
	    wd_team l 
	 ON a.home_team_id = l.team_id 
	    left outer join 
	    wd_team_grad o 
	 on a.home_team_grad_cde = o.team_grad_cde 	    left outer join 
	    wd_team m 
	 ON a.away_team_id = m.team_id 
	    left outer join
	    wd_team_grad p
	 on a.away_team_grad_cde = p.team_grad_cde 	    left outer join 
	    wd_game_result n 
	 ON a.game_result_cde = n.game_result_cde 
;

comment on view kfadm.경기일반현황 is '경기일반현황';
comment on column kfadm.경기일반현황.연도 is '연도';
comment on column kfadm.경기일반현황.대회클래스코드 is '대회클래스코드';
comment on column kfadm.경기일반현황.대회클래스명 is '대회클래스명';
comment on column kfadm.경기일반현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.경기일반현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.경기일반현황.대회종류코드 is '대회종류코드';
comment on column kfadm.경기일반현황.대회종류명 is '대회종류명';
comment on column kfadm.경기일반현황.대회번호 is '대회번호';
comment on column kfadm.경기일반현황.대회명 is '대회명';
comment on column kfadm.경기일반현황.대회시작일 is '대회시작일';
comment on column kfadm.경기일반현황.대회종료일 is '대회종료일';
comment on column kfadm.경기일반현황.경기번호 is '경기번호';
comment on column kfadm.경기일반현황.경기명 is '경기명';
comment on column kfadm.경기일반현황.대회지역코드 is '대회지역코드';
comment on column kfadm.경기일반현황.대회지역명 is '대회지역명';
comment on column kfadm.경기일반현황.경기일자 is '경기일자';
comment on column kfadm.경기일반현황.홈팀아이디 is '홈팀아이디';
comment on column kfadm.경기일반현황.홈팀명 is '홈팀명';
comment on column kfadm.경기일반현황.원정팀아이디 is '원정팀아이디';
comment on column kfadm.경기일반현황.원정팀명 is '원정팀명';
comment on column kfadm.경기일반현황.경기결과코드 is '경기결과코드';
comment on column kfadm.경기일반현황.경기결과명 is '경기결과명';
comment on column kfadm.경기일반현황.홈팀최종득점 is '홈팀최종득점';
comment on column kfadm.경기일반현황.원정팀최종득점 is '원정팀최종득점';
comment on column kfadm.경기일반현황.홈팀등급코드 is '홈팀등급코드';
comment on column kfadm.경기일반현황.홈팀등급명 is '홈팀등급명';
comment on column kfadm.경기일반현황.원정팀등급코드 is '원정팀등급코드';
comment on column kfadm.경기일반현황.원정팀등급명 is '원정팀등급명';
comment on column kfadm.경기일반현황.경기수 is '경기수';




