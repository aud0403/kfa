drop view 국가대표선수;

create view 국가대표선수
as
select b.stdr_year_nm                          as  연도
      , a.cnvc_no                              as  소집번호
      , c.nl_team_cnvc_nm                      as  소집명
      , a.player_id                            as  선수아이디 
      , d.nl_team_player_nm                    as  선수명
      , concat(substring(d.brthdy,1,4),'.',substring(d.brthdy,5,2),'.',substring(d.brthdy,7,2))     as  선수생년월일
      , d.hmnm_se_nm                           as  선수동명구분명
      , f.sexdstn_nm                           as  성별
      , g.agrde_nm                             as  연령대
      , a.cmpet_no		                       as  대회명코드
      , h.nl_team_cmpet_nm                     as  대회명종류
      , a.game_no         		               as  경기명코드
      , i.nl_team_game_nm                      as  경기명
      , j.de_nm                                as  경기일자
      , k.at_nm                                as  A매치여부
      , a.nl_team_mangr_id                     as  대표팀감독아이디
      , l.nl_team_coach_nm                     as  대표팀감독명
      , concat(substring(l.brthdy,1,4),'.',substring(l.brthdy,5,2),'.',substring(l.brthdy,7,2))   as  대표팀감독생년월일
      , l.hmnm_se_nm                           as  대표팀감독동명구분명
      , a.nl_team_grad_cde                     as  대표팀등급코드
      , m.nl_team_grad_nm                      as  대표팀등급
      , a.psitn_team_id                        as  소속팀코드
      , n.team_nm                              as  소속팀명
      , a.psitn_team_area_cde                  as  소속팀지역코드
      , o.dstrct_nm                            as  소속팀지역
      , a.psitn_team_class_cde                 as  소속팀클래스코드
      , p.team_class_nm                        as  소속팀클래스
      , a.psitn_team_grad_cde                  as  소속팀등급코드
      , q.team_grad_nm                         as  소속팀등급
      , a.psitn_team_mangr_id                  as  소속팀감독아아디
      , r.coach_nm                             as  소속팀감독명
      , concat(substring(r.brthdy,1,4),'.',substring(r.brthdy,5,2),'.',substring(r.brthdy,7,2))     as  소속팀감독생년월일
      , r.hmnm_se_nm                           as  소속팀감독동명구분명
      , a.psitn_team_nation_cde                as  소속팀국가코드
      , s.nation_nm                            as  소속팀국가
      , t.de_nm                                as  소집시작일
      , u.de_nm                                as  소집종료일
      , a.player_postn_cde                     as  선수포지션코드
      , v.player_postn_nm                      as  선수포지션
      , w.entry_se_nm                          as  엔트리구분
      , x.at_nm                                as  주장여부
      , y.at_nm                                as  패널티킥여부
      , z.at_nm                                as  유효슈팅여부
      , aa.rcord_se_nm                         as  선수기록구분
      , a.player_rcord_occrrnc_time            as  선수기록발생시간
      , a.rcord_occrrnc_addnl_time             as  기록발생추가시간
      , a.player_grade_cde                     as  선수학년코드
      , ad.player_grade_nm                     as  선수학년
      , a.entry_no                             as  엔트리번호코드
      , ae.entry_se_nm                         as  엔트리번호
      , a.playng_time                          as  출전시간
      , a.game_co                              as  경기수
   from wf_nl_player a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_nl_team_cnvc c 
	 ON a.cnvc_no = c.nl_team_cnvc_no 	    left outer join 
	    wd_nl_team_player d 
	 ON a.player_id = d.nl_team_player_id 	    left outer join 
	    wd_sexdstn f 
	 ON a.player_sexdstn_cde = f.sexdstn_cde 	    left outer join 
	    wd_agrde g 
	 ON a.player_agrde_cde = g.agrde_cde 	    left outer join 
	    wd_nl_team_cmpet h 
	 ON a.cmpet_no = h.nl_team_cmpet_no 	    left outer join 
	    wd_nl_team_game i 
	 ON a.game_no = i.nl_team_game_no 	    left outer join 
	    wd_de j 
	 ON a.game_de = j.de 	    left outer join 
	    wd_amatch k 
	 ON a.amatch_at = k.amatch_at 	    left outer join 
	    wd_nl_team_coach l 
	 ON a.nl_team_mangr_id = l.nl_team_coach_id 	    left outer join 
	    wd_nl_team_grad m 
	 ON a.nl_team_grad_cde = m.nl_team_grad_cde 	    left outer join 
	    wd_team n 
	 ON a.psitn_team_id = n.team_id 	    left outer join 
	    wd_dstrct o 
	 ON a.psitn_team_area_cde = o.dstrct_cde 	    left outer join 
	    wd_team_class p 
	 ON a.psitn_team_class_cde = p.team_class_cde 	    left outer join 
	    wd_team_grad q 
	 ON a.psitn_team_grad_cde = q.team_grad_cde 	    left outer join 
	    wd_coach r 
	 ON a.psitn_team_mangr_id = r.coach_id 	    left outer join 
	    wd_nation s 
	 ON a.psitn_team_nation_cde = s.nation_cde 	    left outer join 
	    wd_de t 
	 ON a.player_cnvc_begin_dat = t.de 	    left outer join 
	    wd_de u 
	 ON a.player_cnvc_end_dat = u.de 	    left outer join 
	    wd_player_postn v 
	 ON a.player_postn_cde = v.player_postn_cde 	    left outer join 
	    wd_entry_se w 
	 ON a.entry_se_cde = w.entry_se_cde 	    left outer join 
	    wd_capt x 
	 ON a.capt_at = x.capt_at 	    left outer join 
	    wd_panalty_kick y 
	 ON a.panalty_kick_at = y.panalty_kick_at 	    left outer join 
	    wd_shot_on_target z 
	 ON a.shot_on_target_at = z.shot_on_target_at 	    left outer join 
	    wd_rcord_se aa 
	 ON a.player_rcord_se_cde = aa.rcord_se_cde 	    left outer join 
	    wd_player_grade ad 
	 ON a.player_grade_cde = ad.player_grade_cde 	    left outer join 
	    wd_entry_se ae 
	 ON a.entry_no = ae.entry_se_cde 
  ;
  
 
comment on view kfadm.국가대표선수 is '국가대표선수';
comment on column kfadm.국가대표선수.연도 is '연도';
comment on column kfadm.국가대표선수.소집번호 is '소집번호';
comment on column kfadm.국가대표선수.소집명 is '소집명';
comment on column kfadm.국가대표선수.선수아이디 is '선수아이디';
comment on column kfadm.국가대표선수.선수명 is '선수명';
comment on column kfadm.국가대표선수.선수생년월일 is '선수생년월일';
comment on column kfadm.국가대표선수.선수동명구분명 is '선수동명구분명';
comment on column kfadm.국가대표선수.성별 is '성별';
comment on column kfadm.국가대표선수.연령대 is '연령대';
comment on column kfadm.국가대표선수.대회명코드 is '대회명코드';
comment on column kfadm.국가대표선수.대회명종류 is '대회명종류';
comment on column kfadm.국가대표선수.경기명코드 is '경기명코드';
comment on column kfadm.국가대표선수.경기명 is '경기명';
comment on column kfadm.국가대표선수.경기일자 is '경기일자';
comment on column kfadm.국가대표선수.A매치여부 is 'A매치여부';
comment on column kfadm.국가대표선수.대표팀감독아이디 is '대표팀감독아이디';
comment on column kfadm.국가대표선수.대표팀감독명 is '대표팀감독명';
comment on column kfadm.국가대표선수.대표팀감독생년월일 is '대표팀감독생년월일';
comment on column kfadm.국가대표선수.대표팀감독동명구분명 is '대표팀감독동명구분명';
comment on column kfadm.국가대표선수.대표팀등급코드 is '대표팀등급코드';
comment on column kfadm.국가대표선수.대표팀등급 is '대표팀등급';
comment on column kfadm.국가대표선수.소속팀코드 is '소속팀코드';
comment on column kfadm.국가대표선수.소속팀명 is '소속팀명';
comment on column kfadm.국가대표선수.소속팀지역코드 is '소속팀지역코드';
comment on column kfadm.국가대표선수.소속팀지역 is '소속팀지역';
comment on column kfadm.국가대표선수.소속팀클래스코드 is '소속팀클래스코드';
comment on column kfadm.국가대표선수.소속팀클래스 is '소속팀클래스';
comment on column kfadm.국가대표선수.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.국가대표선수.소속팀등급 is '소속팀등급';
comment on column kfadm.국가대표선수.소속팀감독아아디 is '소속팀감독아아디';
comment on column kfadm.국가대표선수.소속팀감독명 is '소속팀감독명';
comment on column kfadm.국가대표선수.소속팀감독생년월일 is '소속팀감독생년월일';
comment on column kfadm.국가대표선수.소속팀감독동명구분명 is '소속팀감독동명구분명';
comment on column kfadm.국가대표선수.소속팀국가코드 is '소속팀국가코드';
comment on column kfadm.국가대표선수.소속팀국가 is '소속팀국가';
comment on column kfadm.국가대표선수.소집시작일 is '소집시작일';
comment on column kfadm.국가대표선수.소집종료일 is '소집종료일';
comment on column kfadm.국가대표선수.선수포지션코드 is '선수포지션코드';
comment on column kfadm.국가대표선수.선수포지션 is '선수포지션';
comment on column kfadm.국가대표선수.엔트리구분 is '엔트리구분';
comment on column kfadm.국가대표선수.주장여부 is '주장여부';
comment on column kfadm.국가대표선수.패널티킥여부 is '패널티킥여부';
comment on column kfadm.국가대표선수.유효슈팅여부 is '유효슈팅여부';
comment on column kfadm.국가대표선수.선수기록구분 is '선수기록구분';
comment on column kfadm.국가대표선수.선수기록발생시간 is '선수기록발생시간';
comment on column kfadm.국가대표선수.기록발생추가시간 is '기록발생추가시간';
comment on column kfadm.국가대표선수.선수학년코드 is '선수학년코드';
comment on column kfadm.국가대표선수.선수학년 is '선수학년';
comment on column kfadm.국가대표선수.엔트리번호코드 is '엔트리번호코드';
comment on column kfadm.국가대표선수.엔트리번호 is '엔트리번호';
comment on column kfadm.국가대표선수.출전시간 is '출전시간';
comment on column kfadm.국가대표선수.경기수 is '경기수';
