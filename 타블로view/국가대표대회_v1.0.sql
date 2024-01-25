drop view  국가대표대회;
 
create view 국가대표대회
 as
 select b.stdr_year_nm                       as   연도
      , a.cnvc_no 					         as	  소집번호
	  , c.nl_team_cnvc_nm                    as   소집명
	  , a.cmpet_no   				         as   대회명종류코드
	  ,	d.nl_team_cmpet_nm                   as   대회명종류
	  , a.game_no 					         as	  경기코드
	  ,	e.nl_team_game_nm                    as   경기명
	  , a.cmpet_knd_cde  			         as   대회종류코드
	  ,	f.nl_team_cmpet_knd_nm               as   대회종류
	  , a.cmpet_nm_knd_cde 					 as   라운드구분코드
	  ,	g.cmpet_nm_knd_nm                    as   라운드구분명
	  ,	h.de_nm                              as   대회시작일
	  ,	i.de_nm                              as   대회종료일
	  ,	j.de_nm                              as   본선시작일
	  , a.cmpet_grad_cde  					 as   대회등급코드
	  ,	k.cmpet_grad_nm                      as   대회등급명
	  ,	l.de_nm                              as   경기일자
	  ,	m.tmzon_nm                           as   경기시작시간
	  ,	n.home_away_se_nm                    as   홈원정구분
	  ,	o.at_nm                              as   A매치여부        
	  , a.victry_ty_cde 					 as   승부타입코드
	  ,	r.victry_ty_nm                       as   승부타입
	  , a.game_result_cde 					 as   경기결과코드
	  ,	s.game_result_nm                     as   경기결과
	  , a.host_nation_cde 					 as   개최국가코드                    
	  , a.oppnt_nation_cde                   as   상대국가코드 
	  ,	p.nation_nm                          as   개최국가명
	  ,	q.nation_nm                          as   상대국가명
      ,	a.game_time                          as   경기시간
	  , a.et_time                            as   연장시간
	  , a.fhalf_addnl_time                   as   전반추가시간
	  , a.shalf_addnl_time                   as   후반추가시간
	  , a.et_fhalf_time                      as   연장전반시간
	  , a.et_shalf_time                      as   연장후반시간
	  , a.et_fhalf_addnl_time                as   연장전반추가시간
	  , a.et_shalf_addnl_time                as   연장후반추가시간
	  , a.win_co                             as   승
	  , a.tie_co                             as   무승부
	  , a.lose_co                            as   패
	  , a.game_co                            as   경기수
	  , a.nl_team_fhalf_score                as   대표팀전반득점
	  , a.nl_team_shalf_score                as   대표팀후반득점
	  , a.nl_team_et_fhalf_score             as   대표팀연장전반득점
	  , a.nl_team_et_shalf_score             as   대표팀연장후반득점
	  , a.nl_team_last_score                 as   대표팀최종득점
	  , a.nl_team_panalty_shootout_score     as   대표팀승부차기득점
	  , a.nl_team_shot_co                    as   대표팀슈팅수
	  , a.oppnt_team_fhalf_score             as   상대팀전반득점
	  , a.oppnt_team_shalf_score             as   상대팀후반득점
	  , a.oppnt_team_et_fhalf_score          as   상대팀연장전반득점
	  , a.oppnt_team_et_shalf_score          as   상대팀연장후반득점
	  , a.oppnt_team_last_score              as   상대팀최종득점
	  , a.oppnt_team_panalty_shootout_score  as   상대팀승부차기득점
	  , a.oppnt_team_shot_co                 as   상대팀슈팅수
	  , a.spcttor_co                         as   관중수
	  , a.game_place_nm                     as   경기장소명
   from wf_nl_cmpet a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year  	    left outer join 
	    wd_nl_team_cnvc c 
	 ON a.cnvc_no = c.nl_team_cnvc_no 	    left outer join 
	    wd_nl_team_cmpet d 
	 ON a.cmpet_no = d.nl_team_cmpet_no  	    left outer join 
	    wd_nl_team_game e 
	 ON a.game_no = e.nl_team_game_no  	    left outer join 
	    wd_nl_team_cmpet_knd f 
	 ON a.cmpet_knd_cde = f.nl_team_cmpet_knd_cde  	    left outer join 
	    wd_cmpet_nm_knd g 
	 ON a.cmpet_nm_knd_cde = g.cmpet_nm_knd_cde  	    left outer join 
	    wd_de h 
	 ON a.cmpet_begin_dat = h.de  	    left outer join 
	    wd_de i 
	 ON a.cmpet_end_dat = i.de  	    left outer join 
	    wd_de j 
	 ON a.fins_begin_dat = j.de  	    left outer join 
	    wd_cmpet_grad k 
	 ON a.cmpet_grad_cde = k.cmpet_grad_cde 	    left outer join 
	    wd_de l 
	 ON a.game_de = l.de  	    left outer join 
	    wd_tmzon m 
	 ON a.game_begin_tmzon_cde = m.tmzon_cde  	    left outer join 
	    wd_home_away_se n 
	 ON a.home_away_se_cde = n.home_away_se_cde  	    left outer join 
	    wd_amatch o 
	 ON a.amatch_at = o.amatch_at  	    left outer join 
	    wd_nation p 
	 ON a.host_nation_cde = p.nation_cde  	    left outer join 
	    wd_nation q 
	 ON a.oppnt_nation_cde = q.nation_cde  	    left outer join 
	    wd_victry_ty r 
	 ON a.victry_ty_cde = r.victry_ty_cde  	    left outer join 
	    wd_game_result s 
	 ON a.game_result_cde = s.game_result_cde  
	    left outer join
	    wd_nl_game_place am
	 on a.game_place_nm = am.game_place_nm 
		
  ;
  
comment on view kfadm.국가대표대회 is '국가대표대회';
comment on column kfadm.국가대표대회.연도 is '연도';
comment on column kfadm.국가대표대회.소집번호 is '소집번호';
comment on column kfadm.국가대표대회.소집명 is '소집명';
comment on column kfadm.국가대표대회.대회명종류코드 is '대회명종류코드';
comment on column kfadm.국가대표대회.대회명종류 is '대회명종류';
comment on column kfadm.국가대표대회.경기코드 is '경기코드';
comment on column kfadm.국가대표대회.경기명 is '경기명';
comment on column kfadm.국가대표대회.대회종류코드 is '대회종류코드';
comment on column kfadm.국가대표대회.대회종류 is '대회종류';
comment on column kfadm.국가대표대회.라운드구분코드 is '라운드구분코드';
comment on column kfadm.국가대표대회.라운드구분명 is '라운드구분명';
comment on column kfadm.국가대표대회.대회시작일 is '대회시작일';
comment on column kfadm.국가대표대회.대회종료일 is '대회종료일';
comment on column kfadm.국가대표대회.본선시작일 is '본선시작일';
comment on column kfadm.국가대표대회.대회등급코드 is '대회등급코드';
comment on column kfadm.국가대표대회.대회등급명 is '대회등급명';
comment on column kfadm.국가대표대회.경기일자 is '경기일자';
comment on column kfadm.국가대표대회.경기시작시간 is '경기시작시간';
comment on column kfadm.국가대표대회.홈원정구분 is '홈원정구분';
comment on column kfadm.국가대표대회.A매치여부 is 'A매치여부';
comment on column kfadm.국가대표대회.승부타입코드 is '승부타입코드';
comment on column kfadm.국가대표대회.승부타입 is '승부타입';
comment on column kfadm.국가대표대회.경기결과코드 is '경기결과코드';
comment on column kfadm.국가대표대회.경기결과 is '경기결과';
comment on column kfadm.국가대표대회.개최국가코드 is '개최국가코드';
comment on column kfadm.국가대표대회.상대국가코드 is '상대국가코드';
comment on column kfadm.국가대표대회.개최국가명 is '개최국가명';
comment on column kfadm.국가대표대회.상대국가명 is '상대국가명';
comment on column kfadm.국가대표대회.경기시간 is '경기시간';
comment on column kfadm.국가대표대회.연장시간 is '연장시간';
comment on column kfadm.국가대표대회.전반추가시간 is '전반추가시간';
comment on column kfadm.국가대표대회.후반추가시간 is '후반추가시간';
comment on column kfadm.국가대표대회.연장전반시간 is '연장전반시간';
comment on column kfadm.국가대표대회.연장후반시간 is '연장후반시간';
comment on column kfadm.국가대표대회.연장전반추가시간 is '연장전반추가시간';
comment on column kfadm.국가대표대회.연장후반추가시간 is '연장후반추가시간';
comment on column kfadm.국가대표대회.승 is '승';
comment on column kfadm.국가대표대회.무승부 is '무승부';
comment on column kfadm.국가대표대회.패 is '패';
comment on column kfadm.국가대표대회.경기수 is '경기수';
comment on column kfadm.국가대표대회.대표팀전반득점 is '대표팀전반득점';
comment on column kfadm.국가대표대회.대표팀후반득점 is '대표팀후반득점';
comment on column kfadm.국가대표대회.대표팀연장전반득점 is '대표팀연장전반득점';
comment on column kfadm.국가대표대회.대표팀연장후반득점 is '대표팀연장후반득점';
comment on column kfadm.국가대표대회.대표팀최종득점 is '대표팀최종득점';
comment on column kfadm.국가대표대회.대표팀승부차기득점 is '대표팀승부차기득점';
comment on column kfadm.국가대표대회.대표팀슈팅수 is '대표팀슈팅수';
comment on column kfadm.국가대표대회.상대팀전반득점 is '상대팀전반득점';
comment on column kfadm.국가대표대회.상대팀후반득점 is '상대팀후반득점';
comment on column kfadm.국가대표대회.상대팀연장전반득점 is '상대팀연장전반득점';
comment on column kfadm.국가대표대회.상대팀연장후반득점 is '상대팀연장후반득점';
comment on column kfadm.국가대표대회.상대팀최종득점 is '상대팀최종득점';
comment on column kfadm.국가대표대회.상대팀승부차기득점 is '상대팀승부차기득점';
comment on column kfadm.국가대표대회.상대팀슈팅수 is '상대팀슈팅수';
comment on column kfadm.국가대표대회.관중수 is '관중수';
comment on column kfadm.국가대표대회.경기장소명 is '경기장소명';

