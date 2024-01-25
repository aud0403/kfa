drop view  지도자지도선수현황;

create view 지도자지도선수현황
as 
select b.stdr_year_nm                  as 지도자연도
      , a.coach_id                     as 지도자아이디
      , c.coach_nm                     as 지도자명
      , concat(substring(c.brthdy,1,4),'.',substring(c.brthdy,5,2),'.',substring(c.brthdy,7,2))    as 지도자생년월일
      , c.hmnm_se_nm                   as 지도자동명구분명
      , a.coach_psitn_team_id          as 지도자소속팀아이디
      , e.team_nm                      as 지도자소속팀명
      , a.coach_clsf_cde               as 지도자직급코드
      , g.coach_clsf_nm                as 지도자직급
      , a.coach_psitn_team_grad_cde    as 지도자소속팀등급코드
      , h.team_grad_nm                 as 지도자소속팀등급
      , i.de_nm                        as 지도자팀등록일자
      , j.de_nm                        as 지도자팀탈퇴일자
      , k.stdr_year_nm                 as 선수기준연도
      , a.player_id                    as 선수아이디
      , l.player_nm                    as 선수명
      , concat(substring(l.brthdy,1,4),'.',substring(l.brthdy,5,2),'.',substring(l.brthdy,7,2))   as 선수생년월일
      , l.hmnm_se_nm                   as 선수동명구분명
      , a.player_psitn_team_id         as 선수소속팀아이디
      , n.team_nm                      as 선수소속팀명
      , o.player_postn_nm              as 선수포지션
      , a.player_psitn_team_grad_cde   as 선수소속팀등급코드
      , q.team_grad_nm                 as 선수소속팀등급
      , r.de_nm                        as 선수팀등록일자
      , s.de_nm                        as 선수팀탈퇴일자
      , a.pro_player_co                as 프로선수배출수
      , a.semipro_player_co            as 세미프로배출수
      , a.nl_co                        as 국가대표배출수
   from mf_coach_cch_player_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.coach_stdr_year = b.stdr_year 	    left outer join 
	    wd_coach c 
	 ON a.coach_id = c.coach_id 	    left outer join 
	    wd_team e 
	 ON a.coach_psitn_team_id = e.team_id 	    left outer join 
	    wd_coach_clsf g 
	 ON a.coach_clsf_cde = g.coach_clsf_cde 	    left outer join 
	    wd_team_grad h 
	 ON a.coach_psitn_team_grad_cde = h.team_grad_cde 	    left outer join 
	    wd_de i 
	 ON a.coach_team_regist_de = i.de 	    left outer join 
	    wd_de j 
	 ON a.coach_team_secsn_de = j.de 	    left outer join 
	    wd_stdr_year k 
	 ON a.player_stdr_year = k.stdr_year 	    left outer join 
	    wd_player l 
	 ON a.player_id = l.player_id 	    left outer join 
	    wd_team n 
	 ON a.player_psitn_team_id = n.team_id 	    left outer join 
	    wd_player_postn o 
	 ON a.player_postn_cde = o.player_postn_cde 	    left outer join 
	    wd_team_grad q 
	 ON a.player_psitn_team_grad_cde = q.team_grad_cde 	    left outer join 
	    wd_de r 
	 ON a.player_team_regist_de = r.de 	    left outer join 
	    wd_de s 
	 ON a.player_team_secsn_de = s.de 
  ;
  
comment on view kfadm.지도자지도선수현황 is '지도자지도선수현황';
comment on column kfadm.지도자지도선수현황.지도자연도 is '지도자연도';
comment on column kfadm.지도자지도선수현황.지도자아이디 is '지도자아이디';
comment on column kfadm.지도자지도선수현황.지도자명 is '지도자명';
comment on column kfadm.지도자지도선수현황.지도자생년월일 is '지도자생년월일';
comment on column kfadm.지도자지도선수현황.지도자동명구분명 is '지도자동명구분명';
comment on column kfadm.지도자지도선수현황.지도자소속팀아이디 is '지도자소속팀아이디';
comment on column kfadm.지도자지도선수현황.지도자소속팀명 is '지도자소속팀명';
comment on column kfadm.지도자지도선수현황.지도자직급코드 is '지도자직급코드';
comment on column kfadm.지도자지도선수현황.지도자직급 is '지도자직급';
comment on column kfadm.지도자지도선수현황.지도자소속팀등급코드 is '지도자소속팀등급코드';
comment on column kfadm.지도자지도선수현황.지도자소속팀등급 is '지도자소속팀등급';
comment on column kfadm.지도자지도선수현황.지도자팀등록일자 is '지도자팀등록일자';
comment on column kfadm.지도자지도선수현황.지도자팀탈퇴일자 is '지도자팀탈퇴일자';
comment on column kfadm.지도자지도선수현황.선수기준연도 is '선수기준연도';
comment on column kfadm.지도자지도선수현황.선수아이디 is '선수아이디';
comment on column kfadm.지도자지도선수현황.선수명 is '선수명';
comment on column kfadm.지도자지도선수현황.선수생년월일 is '선수생년월일';
comment on column kfadm.지도자지도선수현황.선수동명구분명 is '선수동명구분명';
comment on column kfadm.지도자지도선수현황.선수소속팀아이디 is '선수소속팀아이디';
comment on column kfadm.지도자지도선수현황.선수소속팀명 is '선수소속팀명';
comment on column kfadm.지도자지도선수현황.선수포지션 is '선수포지션';
comment on column kfadm.지도자지도선수현황.선수소속팀등급코드 is '선수소속팀등급코드';
comment on column kfadm.지도자지도선수현황.선수소속팀등급 is '선수소속팀등급';
comment on column kfadm.지도자지도선수현황.선수팀등록일자 is '선수팀등록일자';
comment on column kfadm.지도자지도선수현황.선수팀탈퇴일자 is '선수팀탈퇴일자';
comment on column kfadm.지도자지도선수현황.프로선수배출수 is '프로선수배출수';
comment on column kfadm.지도자지도선수현황.세미프로배출수 is '세미프로배출수';
comment on column kfadm.지도자지도선수현황.국가대표배출수 is '국가대표배출수';


