
drop view 비프로팀집계현황;

create view 비프로팀집계현황
as
select  b.stdr_year_nm                      as   연도
      , a.game_no                          as   경기명
      , a.team_no                          as   팀번호
      , d.team_nm                          as   팀명
      , a.kfa_team_id                      as   kfa팀아이디
      , h.team_nm                          as   fka팀명
      , a.team_area_cde                    as   팀지역코드
      , e.dstrct_nm                        as   팀지역명
      , f.sexdstn_nm                       as   팀성별
      , g.cnvc_team_grad_cde               as   팀연령등급코드
      , g.team_grad_nm                     as   팀연령등급명
      , a.goal                             as   골
      , a.tot_shot                         as   총슈팅
      , a.shot_on_target                   as   유효슈팅
      , a.shot_off_target                  as   벗어난슈팅
      , a.shot_blocked                     as   블락된슈팅
      , a.shot_in_pa                       as   박스안슈팅
      , a.shot_outside_of_pa               as   박스밖슈팅
      , a.free_kick                        as   프리킥
      , a.corner_kick                      as   코너킥
      , a.throw_in                         as   스로인
      , a.pass                             as   패스
      , a.pass_succes                      as   패스성공
      , a.assist                           as   도움
      , a.key_pass                         as   키패스
      , a.control_under_pressure           as   탈압박
      , a."CROSS"                          as   크로스
      , a.cross_succes                     as   크로스성공
      , a.final_third_area_pass            as   공격지역패스
      , a.final_third_area_pass_succes     as   공격지역패스성공
      , a.middle_area_pass                 as   중앙지역패스
      , a.middle_area_pass_succes          as   중앙지역패스성공
      , a.defensive_area_pass              as   수비지역패스
      , a.defensive_area_pass_succes       as   수비지역패스성공
      , a.short_pass                       as   단거리패스
      , a.short_pass_succes                as   단거리패스성공
      , a.medium_pass                      as   중거리패스
      , a.medium_pass_succes               as   중거리패스성공
      , a.long_pass                        as   장거리패스
      , a.long_pass_succes                 as   장거리패스성공
      , a.forward_pass                     as   전진패스
      , a.forward_pass_succes              as   전진패스성공
      , a.backward_pass                    as   백패스
      , a.backward_pass_succes             as   백패스성공
      , a.sideways_pass                    as   횡패스
      , a.sideways_pass_succes             as   횡패스성공
      , a.tackle                           as   태클
      , a.tackle_succes                    as   태클성공
      , a.aerial_duel                      as   공중볼경합
      , a.aerial_duel_succes               as   공중볼경합성공
      , a.ground_duel                      as   그라운드경합
      , a.ground_duel_succes               as   그라운드경합성공
      , a.intercept                        as   인터셉트
      , a.clearance                        as   클리어
      , a.RECOVERY                         as   획득
      , a.intervention                     as   차단
      , a.take_on                          as   돌파
      , a.take_on_succes                   as   돌파성공
      , a.mistake                          as   볼미스
      , a.block                            as   블락
      , a.foul                             as   파울
      , a.foul_won                         as   피파울
      , a.offside                          as   오프사이드
      , a.yellow_card                      as   경고
      , a.red_card                         as   퇴장
      , a.own_goal                         as   자책골
      , a.conceded_goal                    as   실점
      , a.goal_kick                        as   골킥
      , a.goal_kick_succes                 as   골킥성공
      , a.aerial_clearance                 as   공중볼처리
      , a.aerial_clearance_succes          as   공중볼처리성공
      , a.save_by_catching                 as   캐칭세이브
      , a.save_by_punching                 as   펀칭세이브
      , a.possesn_rt                       as   점유율
      , a.game_co                          as   경기수
   from wf_bepro_team_sm_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_game c 
	 ON a.game_no = c.game_no 	    left outer join 
	    wd_bepro_team d 
	 ON a.team_no = d.team_no 	    left outer join 
	    wd_dstrct e 
	 ON a.team_area_cde = e.dstrct_cde 	    left outer join 
	    wd_sexdstn f 
	 ON a.team_sexdstn_cde = f.sexdstn_cde 	    left outer join 
	    wd_golden_age_grad g 
	 ON a.team_age_cde = g.cnvc_team_grad_cde 
	    left outer join 
	    wd_team h 
	 on a.kfa_team_id = h.team_id 
  ;
  
 comment on view kfadm.비프로팀집계현황 is '비프로팀집계현황';
 comment on column kfadm.비프로팀집계현황.연도 IS '연도';
comment on column kfadm.비프로팀집계현황.경기명 IS '경기명';
comment on column kfadm.비프로팀집계현황.팀번호 IS '팀번호';
comment on column kfadm.비프로팀집계현황.팀명 IS '팀명';
comment on column kfadm.비프로팀집계현황.kfa팀아이디 IS 'kfa팀아이디';
comment on column kfadm.비프로팀집계현황.fka팀명 IS 'fka팀명';
comment on column kfadm.비프로팀집계현황.팀지역코드 IS '팀지역코드';
comment on column kfadm.비프로팀집계현황.팀지역명 IS '팀지역명';
comment on column kfadm.비프로팀집계현황.팀성별 IS '팀성별';
comment on column kfadm.비프로팀집계현황.팀연령등급코드 IS '팀연령등급코드';
comment on column kfadm.비프로팀집계현황.팀연령등급명 IS '팀연령등급명';
comment on column kfadm.비프로팀집계현황.골 IS '골';
comment on column kfadm.비프로팀집계현황.총슈팅 IS '총슈팅';
comment on column kfadm.비프로팀집계현황.유효슈팅 IS '유효슈팅';
comment on column kfadm.비프로팀집계현황.벗어난슈팅 IS '벗어난슈팅';
comment on column kfadm.비프로팀집계현황.블락된슈팅 IS '블락된슈팅';
comment on column kfadm.비프로팀집계현황.박스안슈팅 IS '박스안슈팅';
comment on column kfadm.비프로팀집계현황.박스밖슈팅 IS '박스밖슈팅';
comment on column kfadm.비프로팀집계현황.프리킥 IS '프리킥';
comment on column kfadm.비프로팀집계현황.코너킥 IS '코너킥';
comment on column kfadm.비프로팀집계현황.스로인 IS '스로인';
comment on column kfadm.비프로팀집계현황.패스 IS '패스';
comment on column kfadm.비프로팀집계현황.패스성공 IS '패스성공';
comment on column kfadm.비프로팀집계현황.도움 IS '도움';
comment on column kfadm.비프로팀집계현황.키패스 IS '키패스';
comment on column kfadm.비프로팀집계현황.탈압박 IS '탈압박';
comment on column kfadm.비프로팀집계현황.크로스 IS '크로스';
comment on column kfadm.비프로팀집계현황.크로스성공 IS '크로스성공';
comment on column kfadm.비프로팀집계현황.공격지역패스 IS '공격지역패스';
comment on column kfadm.비프로팀집계현황.공격지역패스성공 IS '공격지역패스성공';
comment on column kfadm.비프로팀집계현황.중앙지역패스 IS '중앙지역패스';
comment on column kfadm.비프로팀집계현황.중앙지역패스성공 IS '중앙지역패스성공';
comment on column kfadm.비프로팀집계현황.수비지역패스 IS '수비지역패스';
comment on column kfadm.비프로팀집계현황.수비지역패스성공 IS '수비지역패스성공';
comment on column kfadm.비프로팀집계현황.단거리패스 IS '단거리패스';
comment on column kfadm.비프로팀집계현황.단거리패스성공 IS '단거리패스성공';
comment on column kfadm.비프로팀집계현황.중거리패스 IS '중거리패스';
comment on column kfadm.비프로팀집계현황.중거리패스성공 IS '중거리패스성공';
comment on column kfadm.비프로팀집계현황.장거리패스 IS '장거리패스';
comment on column kfadm.비프로팀집계현황.장거리패스성공 IS '장거리패스성공';
comment on column kfadm.비프로팀집계현황.전진패스 IS '전진패스';
comment on column kfadm.비프로팀집계현황.전진패스성공 IS '전진패스성공';
comment on column kfadm.비프로팀집계현황.백패스 IS '백패스';
comment on column kfadm.비프로팀집계현황.백패스성공 IS '백패스성공';
comment on column kfadm.비프로팀집계현황.횡패스 IS '횡패스';
comment on column kfadm.비프로팀집계현황.횡패스성공 IS '횡패스성공';
comment on column kfadm.비프로팀집계현황.태클 IS '태클';
comment on column kfadm.비프로팀집계현황.태클성공 IS '태클성공';
comment on column kfadm.비프로팀집계현황.공중볼경합 IS '공중볼경합';
comment on column kfadm.비프로팀집계현황.공중볼경합성공 IS '공중볼경합성공';
comment on column kfadm.비프로팀집계현황.그라운드경합 IS '그라운드경합';
comment on column kfadm.비프로팀집계현황.그라운드경합성공 IS '그라운드경합성공';
comment on column kfadm.비프로팀집계현황.인터셉트 IS '인터셉트';
comment on column kfadm.비프로팀집계현황.클리어 IS '클리어';
comment on column kfadm.비프로팀집계현황.획득 IS '획득';
comment on column kfadm.비프로팀집계현황.차단 IS '차단';
comment on column kfadm.비프로팀집계현황.돌파 IS '돌파';
comment on column kfadm.비프로팀집계현황.돌파성공 IS '돌파성공';
comment on column kfadm.비프로팀집계현황.볼미스 IS '볼미스';
comment on column kfadm.비프로팀집계현황.블락 IS '블락';
comment on column kfadm.비프로팀집계현황.파울 IS '파울';
comment on column kfadm.비프로팀집계현황.피파울 IS '피파울';
comment on column kfadm.비프로팀집계현황.오프사이드 IS '오프사이드';
comment on column kfadm.비프로팀집계현황.경고 IS '경고';
comment on column kfadm.비프로팀집계현황.퇴장 IS '퇴장';
comment on column kfadm.비프로팀집계현황.자책골 IS '자책골';
comment on column kfadm.비프로팀집계현황.실점 IS '실점';
comment on column kfadm.비프로팀집계현황.골킥 IS '골킥';
comment on column kfadm.비프로팀집계현황.골킥성공 IS '골킥성공';
comment on column kfadm.비프로팀집계현황.공중볼처리 IS '공중볼처리';
comment on column kfadm.비프로팀집계현황.공중볼처리성공 IS '공중볼처리성공';
comment on column kfadm.비프로팀집계현황.캐칭세이브 IS '캐칭세이브';
comment on column kfadm.비프로팀집계현황.펀칭세이브 IS '펀칭세이브';
comment on column kfadm.비프로팀집계현황.점유율 IS '점유율';
comment on column kfadm.비프로팀집계현황.경기수 IS '경기수';
