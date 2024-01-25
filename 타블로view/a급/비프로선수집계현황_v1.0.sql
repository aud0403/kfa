drop view 비프로선수집계현황;

create view 비프로선수집계현황
as 
select b.stdr_year_nm                    기준연도
      , a.game_no                        경기번호
      , k.game_nm                        경기명
      , a.team_no                        팀번호
      , d.team_nm                        팀명
      , a.player_no                      선수번호
      , e.player_nm                      선수명
      , a.kfa_player_id                  kfa선수아이디
      , f.player_nm                      kfa선수명
      , f.brthdy                         kfa선수생년월일
      , f.hmnm_se_nm                     kfa선수동명구분명
      , g.sexdstn_nm                     kfa선수성별
      , h.agrde_nm                       kfa선수연령대
      , i.team_grad_nm                   kfa팀연령대
      , a.player_postn_cde               선수포지션코드
      , j.player_postn_nm                선수포지션명
      , a.goal                           골
      , a.tot_shot                       총슈팅
      , a.shot_on_target                 유효슈팅
      , a.shot_off_target                벗어난슈팅
      , a.shot_blocked                   블락된슈팅
      , a.shot_in_pa                     박스안슈팅
      , a.shot_outside_of_pa             박스밖슈팅
      , a.free_kick                      프리킥
      , a.corner_kick                    코너킥
      , a.throw_in                       스로인
      , a.pass                           패스
      , a.pass_succes                    패스성공
      , a.assist                         도움
      , a.key_pass                       키패스
      , a.control_under_pressure         탈압박
      , a."CROSS"                        크로스
      , a.cross_succes                   크로스성공
      , a.final_third_area_pass          공격지역패스
      , a.final_third_area_pass_succes   공격지역패스성공
      , a.middle_area_pass               중앙지역패스
      , a.middle_area_pass_succes        중앙지역패스성공
      , a.defensive_area_pass            수비지역패스
      , a.defensive_area_pass_succes     수비지역패스성공
      , a.short_pass                     단거리패스
      , a.short_pass_succes              단거리패스성공
      , a.medium_pass                    중거리패스
      , a.medium_pass_succes             중거리패스성공
      , a.long_pass                      장거리패스
      , a.long_pass_succes               장거리패스성공
      , a.forward_pass                   전진패스
      , a.forward_pass_succes            전진패스성공
      , a.backward_pass                  백패스
      , a.backward_pass_succes           백패스성공
      , a.sideways_pass                  횡패스
      , a.sideways_pass_succes           횡패스성공
      , a.tackle                         태클
      , a.tackle_succes                  태클성공
      , a.aerial_duel                    공중볼경합
      , a.aerial_duel_succes             공중볼경합성공
      , a.ground_duel                    그라운드경합
      , a.ground_duel_succes             그라운드경합성공
      , a.intercept                      인터셉트
      , a.clearance                      클리어
      , a.recovery                       획득
      , a.intervention                   차단
      , a.take_on                        돌파
      , a.take_on_succes                 돌파성공
      , a.mistake                        볼미스
      , a.block                          블락
      , a.foul                           파울
      , a.foul_won                       피파울
      , a.offside                        오프사이드
      , a.yellow_card                    경고
      , a.red_card                       퇴장
      , a.own_goal                       자책골
      , a.conceded_goal                  실점
      , a.goal_kick                      골킥
      , a.goal_kick_succes               골킥성공
      , a.aerial_clearance               공중볼처리
      , a.aerial_clearance_succes        공중볼처리성공
      , a.save_by_catching               캐칭세이브
      , a.save_by_punching               펀칭세이브
      , a.game_gpa                       경기평점
      , a.playng_time                    출전시간
      , a.game_co                        경기수
   from wf_bepro_player_sm_sttus a 
	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_game c 
	 ON a.game_no = c.game_no 	    left outer join 
	    wd_bepro_team d 
	 ON a.team_no = d.team_no 	    left outer join 
	    wd_bepro_player e 
	 ON a.player_no = e.player_no 
	    left outer join 
	    wd_player f 
	 on a.kfa_player_id = f.player_id 
	    left outer join 
	    wd_sexdstn g 
	 on a.player_sexdstn_cde = g.sexdstn_cde 
	    left outer join 
	    wd_agrde  h
	 on a.player_agrde_cde = h.agrde_cde 
	    left outer join 
	    wd_golden_age_grad i 
	 on a.team_age_cde = i.cnvc_team_grad_cde 
	    left outer join 
	    wd_player_postn j 
	 on a.player_postn_cde = j.player_postn_cde 
	    left outer join 
	    wd_bepro_game k 
	 on a.game_no = k.game_no 
  ;

 
 
comment on view kfadm.비프로선수집계현황 is '비프로선수집계현황';
comment on column kfadm.비프로선수집계현황.기준연도 is '기준연도';
comment on column kfadm.비프로선수집계현황.경기번호 is '경기번호';
comment on column kfadm.비프로선수집계현황.경기명 is '경기명';
comment on column kfadm.비프로선수집계현황.팀번호 is '팀번호';
comment on column kfadm.비프로선수집계현황.팀명 is '팀명';
comment on column kfadm.비프로선수집계현황.선수번호 is '선수번호';
comment on column kfadm.비프로선수집계현황.선수명 is '선수명';
comment on column kfadm.비프로선수집계현황.kfa선수아이디 is 'kfa선수아이디';
comment on column kfadm.비프로선수집계현황.kfa선수명 is 'kfa선수명';
comment on column kfadm.비프로선수집계현황.kfa선수생년월일 is 'kfa선수생년월일';
comment on column kfadm.비프로선수집계현황.kfa선수동명구분명 is 'kfa선수동명구분명';
comment on column kfadm.비프로선수집계현황.kfa선수성별 is 'kfa선수성별';
comment on column kfadm.비프로선수집계현황.kfa선수연령대 is 'kfa선수연령대';
comment on column kfadm.비프로선수집계현황.kfa팀연령대 is 'kfa팀연령대';
comment on column kfadm.비프로선수집계현황.선수포지션코드 is '선수포지션코드';
comment on column kfadm.비프로선수집계현황.선수포지션명 is '선수포지션명';
comment on column kfadm.비프로선수집계현황.골 is '골';
comment on column kfadm.비프로선수집계현황.총슈팅 is '총슈팅';
comment on column kfadm.비프로선수집계현황.유효슈팅 is '유효슈팅';
comment on column kfadm.비프로선수집계현황.벗어난슈팅 is '벗어난슈팅';
comment on column kfadm.비프로선수집계현황.블락된슈팅 is '블락된슈팅';
comment on column kfadm.비프로선수집계현황.박스안슈팅 is '박스안슈팅';
comment on column kfadm.비프로선수집계현황.박스밖슈팅 is '박스밖슈팅';
comment on column kfadm.비프로선수집계현황.프리킥 is '프리킥';
comment on column kfadm.비프로선수집계현황.코너킥 is '코너킥';
comment on column kfadm.비프로선수집계현황.스로인 is '스로인';
comment on column kfadm.비프로선수집계현황.패스 is '패스';
comment on column kfadm.비프로선수집계현황.패스성공 is '패스성공';
comment on column kfadm.비프로선수집계현황.도움 is '도움';
comment on column kfadm.비프로선수집계현황.키패스 is '키패스';
comment on column kfadm.비프로선수집계현황.탈압박 is '탈압박';
comment on column kfadm.비프로선수집계현황.크로스 is '크로스';
comment on column kfadm.비프로선수집계현황.크로스성공 is '크로스성공';
comment on column kfadm.비프로선수집계현황.공격지역패스 is '공격지역패스';
comment on column kfadm.비프로선수집계현황.공격지역패스성공 is '공격지역패스성공';
comment on column kfadm.비프로선수집계현황.중앙지역패스 is '중앙지역패스';
comment on column kfadm.비프로선수집계현황.중앙지역패스성공 is '중앙지역패스성공';
comment on column kfadm.비프로선수집계현황.수비지역패스 is '수비지역패스';
comment on column kfadm.비프로선수집계현황.수비지역패스성공 is '수비지역패스성공';
comment on column kfadm.비프로선수집계현황.단거리패스 is '단거리패스';
comment on column kfadm.비프로선수집계현황.단거리패스성공 is '단거리패스성공';
comment on column kfadm.비프로선수집계현황.중거리패스 is '중거리패스';
comment on column kfadm.비프로선수집계현황.중거리패스성공 is '중거리패스성공';
comment on column kfadm.비프로선수집계현황.장거리패스 is '장거리패스';
comment on column kfadm.비프로선수집계현황.장거리패스성공 is '장거리패스성공';
comment on column kfadm.비프로선수집계현황.전진패스 is '전진패스';
comment on column kfadm.비프로선수집계현황.전진패스성공 is '전진패스성공';
comment on column kfadm.비프로선수집계현황.백패스 is '백패스';
comment on column kfadm.비프로선수집계현황.백패스성공 is '백패스성공';
comment on column kfadm.비프로선수집계현황.횡패스 is '횡패스';
comment on column kfadm.비프로선수집계현황.횡패스성공 is '횡패스성공';
comment on column kfadm.비프로선수집계현황.태클 is '태클';
comment on column kfadm.비프로선수집계현황.태클성공 is '태클성공';
comment on column kfadm.비프로선수집계현황.공중볼경합 is '공중볼경합';
comment on column kfadm.비프로선수집계현황.공중볼경합성공 is '공중볼경합성공';
comment on column kfadm.비프로선수집계현황.그라운드경합 is '그라운드경합';
comment on column kfadm.비프로선수집계현황.그라운드경합성공 is '그라운드경합성공';
comment on column kfadm.비프로선수집계현황.인터셉트 is '인터셉트';
comment on column kfadm.비프로선수집계현황.클리어 is '클리어';
comment on column kfadm.비프로선수집계현황.획득 is '획득';
comment on column kfadm.비프로선수집계현황.차단 is '차단';
comment on column kfadm.비프로선수집계현황.돌파 is '돌파';
comment on column kfadm.비프로선수집계현황.돌파성공 is '돌파성공';
comment on column kfadm.비프로선수집계현황.볼미스 is '볼미스';
comment on column kfadm.비프로선수집계현황.블락 is '블락';
comment on column kfadm.비프로선수집계현황.파울 is '파울';
comment on column kfadm.비프로선수집계현황.피파울 is '피파울';
comment on column kfadm.비프로선수집계현황.오프사이드 is '오프사이드';
comment on column kfadm.비프로선수집계현황.경고 is '경고';
comment on column kfadm.비프로선수집계현황.퇴장 is '퇴장';
comment on column kfadm.비프로선수집계현황.자책골 is '자책골';
comment on column kfadm.비프로선수집계현황.실점 is '실점';
comment on column kfadm.비프로선수집계현황.골킥 is '골킥';
comment on column kfadm.비프로선수집계현황.골킥성공 is '골킥성공';
comment on column kfadm.비프로선수집계현황.공중볼처리 is '공중볼처리';
comment on column kfadm.비프로선수집계현황.공중볼처리성공 is '공중볼처리성공';
comment on column kfadm.비프로선수집계현황.캐칭세이브 is '캐칭세이브';
comment on column kfadm.비프로선수집계현황.펀칭세이브 is '펀칭세이브';
comment on column kfadm.비프로선수집계현황.경기평점 is '경기평점';
comment on column kfadm.비프로선수집계현황.출전시간 is '출전시간';
comment on column kfadm.비프로선수집계현황.경기수 is '경기수';
