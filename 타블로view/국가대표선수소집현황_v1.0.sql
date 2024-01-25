drop view 국가대표선수소집현황;
 
create view  국가대표선수소집현황
as
select b.stdr_year_nm            as   연도
     , a.player_id 		         as   선수아이디
     , c.nl_team_player_nm       as   선수이름
     , concat(substring(c.brthdy,1,4),'.',substring(c.brthdy,5,2),'.',substring(c.brthdy,7,2))   as   선수생년월일
     , c.hmnm_se_nm              as   선수동명구분명
     , a.psitn_team_id   		 as   소속팀아이디
     , d.team_nm                 as   소속팀명
     , a.psitn_team_grad_cde     as   소속팀등급코드
     , e.team_grad_nm            as   소속팀등급
     , a.psitn_team_nation_cde   as   소속팀국가코드
     , f.nation_nm               as   소속팀국가
     , g.sexdstn_nm              as   성별
     , h.agrde_nm                as   나이
     , a.cnvc_no                 as   소집번호
     , i.nl_team_cnvc_nm         as   소집명
     , a.nl_team_grad_cde        as   대표팀등급코드
     , j.nl_team_grad_nm         as   대표팀등급명
     , k.de_nm                   as   소집시작일
     , l.de_nm                   as   소집종료일
     , a.cmpet_no                as   대회코드
     , m.nl_team_cmpet_nm        as   대회명
     , a.game_no                 as   경기코드
     , n.nl_team_game_nm         as   경기명
     , a.cmpet_nm_knd_cde        as   라운드구분코드
     , o.cmpet_nm_knd_nm         as   라운드구분
     , p.de_nm                   as   경기일자
     , a.entry_se_cde            as   엔트리구분코드
     , q.entry_se_nm             as   엔트리구분
     , a.oppnt_nation_cde        as   상대국가코드
     , r.nation_nm               as   상대국가
     , s.home_away_se_nm         as   홈원정구분
     , a.playng_time             as   출전시간
     , a.score                   as   득점
     , a.shot_co                 as   슈팅
     , a.shot_on_target_co       as   유효슈팅
     , a.assist_co               as   도움
     , a.yellow_card_co          as   경고
     , a.red_card_co             as   퇴장
     , a.own_goal_co             as   자책골
     , a.game_co                 as   경기수
   from mf_nl_player_cnvc_sttus a
	    left outer join 
	    wd_stdr_year b 
	 on a.stdr_year  = b.stdr_year 	    left outer join 
	    wd_nl_team_player c 
	 on a.player_id  = c.nl_team_player_id 	    left outer join 
	    wd_team d 
	 on a.psitn_team_id = d.team_id 	    left outer join 
	    wd_team_grad e 
	 on a.psitn_team_grad_cde = e.team_grad_cde 	    left outer join 
	    wd_nation f 
	 on a.psitn_team_nation_cde = f.nation_cde 	    left outer join 
	    wd_sexdstn g 
	 on a.player_sexdstn_cde  = g.sexdstn_cde 	    left outer join 
	    wd_agrde h 
	 on a.player_agrde_cde  = h.agrde_cde 	    left outer join 
	    wd_nl_team_cnvc i 
	 on a.cnvc_no  = i.nl_team_cnvc_no 	    left outer join 
	    wd_nl_team_grad j 
	 on a.nl_team_grad_cde  = j.nl_team_grad_cde 	    left outer join 
	    wd_de k 
	 on a.player_cnvc_begin_dat  = k.de 	    left outer join 
	    wd_de l 
	 on a.player_cnvc_end_dat  = l.de 	    left outer join 
	    wd_nl_team_cmpet m 
	 on a.cmpet_no  = m.nl_team_cmpet_no 	    left outer join 
	    wd_nl_team_game n 
	 on a.game_no = n.nl_team_game_no 	    left outer join 
	    wd_cmpet_nm_knd o 
	 on a.cmpet_nm_knd_cde  = o.cmpet_nm_knd_cde 	    left outer join 
	    wd_de p 
	 on a.game_de  = p.de 	    left outer join 
	    wd_entry_se q 
	 on a.entry_se_cde  = q.entry_se_cde 	    left outer join 
	    wd_nation r 
	 on a.oppnt_nation_cde = r.nation_cde 	    left outer join 
	    wd_home_away_se s 
	 on a.home_away_se_cde = s.home_away_se_cde 
; 



comment on view kfadm.국가대표선수소집현황 is '국가대표선수소집현황';
comment on column kfadm.국가대표선수소집현황.연도 is '연도';
comment on column kfadm.국가대표선수소집현황.선수아이디 is '선수아이디';
comment on column kfadm.국가대표선수소집현황.선수이름 is '선수이름';
comment on column kfadm.국가대표선수소집현황.선수생년월일 is '선수생년월일';
comment on column kfadm.국가대표선수소집현황.선수동명구분명 is '선수동명구분명';
comment on column kfadm.국가대표선수소집현황.소속팀아이디 is '소속팀아이디';
comment on column kfadm.국가대표선수소집현황.소속팀명 is '소속팀명';
comment on column kfadm.국가대표선수소집현황.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.국가대표선수소집현황.소속팀등급 is '소속팀등급';
comment on column kfadm.국가대표선수소집현황.소속팀국가코드 is '소속팀국가코드';
comment on column kfadm.국가대표선수소집현황.소속팀국가 is '소속팀국가';
comment on column kfadm.국가대표선수소집현황.성별 is '성별';
comment on column kfadm.국가대표선수소집현황.나이 is '나이';
comment on column kfadm.국가대표선수소집현황.소집번호 is '소집번호';
comment on column kfadm.국가대표선수소집현황.소집명 is '소집명';
comment on column kfadm.국가대표선수소집현황.대표팀등급코드 is '대표팀등급코드';
comment on column kfadm.국가대표선수소집현황.대표팀등급명 is '대표팀등급명';
comment on column kfadm.국가대표선수소집현황.소집시작일 is '소집시작일';
comment on column kfadm.국가대표선수소집현황.소집종료일 is '소집종료일';
comment on column kfadm.국가대표선수소집현황.대회코드 is '대회코드';
comment on column kfadm.국가대표선수소집현황.대회명 is '대회명';
comment on column kfadm.국가대표선수소집현황.경기코드 is '경기코드';
comment on column kfadm.국가대표선수소집현황.경기명 is '경기명';
comment on column kfadm.국가대표선수소집현황.라운드구분코드 is '라운드구분코드';
comment on column kfadm.국가대표선수소집현황.라운드구분 is '라운드구분';
comment on column kfadm.국가대표선수소집현황.경기일자 is '경기일자';
comment on column kfadm.국가대표선수소집현황.엔트리구분코드 is '엔트리구분코드';
comment on column kfadm.국가대표선수소집현황.엔트리구분 is '엔트리구분';
comment on column kfadm.국가대표선수소집현황.상대국가코드 is '상대국가코드';
comment on column kfadm.국가대표선수소집현황.상대국가 is '상대국가';
comment on column kfadm.국가대표선수소집현황.홈원정구분 is '홈원정구분';
comment on column kfadm.국가대표선수소집현황.출전시간 is '출전시간';
comment on column kfadm.국가대표선수소집현황.득점 is '득점';
comment on column kfadm.국가대표선수소집현황.슈팅 is '슈팅';
comment on column kfadm.국가대표선수소집현황.유효슈팅 is '유효슈팅';
comment on column kfadm.국가대표선수소집현황.도움 is '도움';
comment on column kfadm.국가대표선수소집현황.경고 is '경고';
comment on column kfadm.국가대표선수소집현황.퇴장 is '퇴장';
comment on column kfadm.국가대표선수소집현황.자책골 is '자책골';
comment on column kfadm.국가대표선수소집현황.경기수 is '경기수';
