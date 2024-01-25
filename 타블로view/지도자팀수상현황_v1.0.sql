drop view 지도자팀수상현황;

create view  지도자팀수상현황
as
select b.stdr_year_nm                         as    연도
      , a.cmpet_no                            as    대회번호
      , c.cmpet_nm                            as    대회명
      , a.league_cmpet_se_cde                 as    리그대회구분코드
      , d.league_cmpet_se_nm                  as    리그대회구분
      , a.cmpet_knd_cde                       as    대회종류코드
      , e.cmpet_knd_nm                        as    대회종류
      , a.coach_id                            as    지도자아이디
      , f.coach_nm                            as    지도자명
      , f.brthdy                              as    생년월일
      , f.hmnm_se_nm                          as    동명구분명
      , g.sexdstn_nm                          as    성별
      , a.coach_clsf_cde                      as    지도자직급코드
      , h.coach_clsf_nm                       as    지도자직급
      , a.psitn_team_id                       as    소속팀아이디
      , i.team_nm                             as    소속팀명
      , a.psitn_team_grad_cde                 as    소속팀등급코드
      , j.team_grad_nm                        as    소속팀등급
      , a.wnpz_cde                            as    수상코드
      , k.wnpz_nm                             as    수상명
      , a.wnpz_co                             as    수상수
   from mf_coach_wnpz_sttus a                 
        left outer join 
	    wd_stdr_year b 
	 on a.stdr_year = b.stdr_year 	    left outer join 
	    wd_cmpet c 
	 on a.cmpet_no = c.cmpet_no 	    left outer join 
	    wd_league_cmpet_se d 
	 on a.league_cmpet_se_cde = d.league_cmpet_se_cde 	    left outer join 
	    wd_cmpet_knd e 
	 on a.cmpet_knd_cde = e.cmpet_knd_cde 	    left outer join 
	    wd_coach f 
	 on a.coach_id = f.coach_id 	    left outer join 
	    wd_sexdstn g 
	 on a.coach_sexdstn_cde = g.sexdstn_cde 	    left outer join 
	    wd_coach_clsf h 
	 on a.coach_clsf_cde = h.coach_clsf_cde 	    left outer join 
	    wd_team i 
	 on a.psitn_team_id = i.team_id 	    left outer join 
	    wd_team_grad j 
	 on a.psitn_team_grad_cde = j.team_grad_cde 	    left outer join 
	    wd_wnpz k 
	 on a.wnpz_cde = k.wnpz_cde 
;


comment on view kfadm.지도자팀수상현황 is '지도자팀수상현황';
comment on column kfadm.지도자팀수상현황.연도 is '연도';
comment on column kfadm.지도자팀수상현황.대회번호 is '대회번호';
comment on column kfadm.지도자팀수상현황.대회명 is '대회명';
comment on column kfadm.지도자팀수상현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.지도자팀수상현황.리그대회구분 is '리그대회구분';
comment on column kfadm.지도자팀수상현황.대회종류코드 is '대회종류코드';
comment on column kfadm.지도자팀수상현황.대회종류 is '대회종류';
comment on column kfadm.지도자팀수상현황.지도자아이디 is '지도자아이디';
comment on column kfadm.지도자팀수상현황.지도자명 is '지도자명';
comment on column kfadm.지도자팀수상현황.생년월일 is '생년월일';
comment on column kfadm.지도자팀수상현황.동명구분명 is '동명구분명';
comment on column kfadm.지도자팀수상현황.성별 is '성별';
comment on column kfadm.지도자팀수상현황.지도자직급코드 is '지도자직급코드';
comment on column kfadm.지도자팀수상현황.지도자직급 is '지도자직급';
comment on column kfadm.지도자팀수상현황.소속팀아이디 is '소속팀아이디';
comment on column kfadm.지도자팀수상현황.소속팀명 is '소속팀명';
comment on column kfadm.지도자팀수상현황.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.지도자팀수상현황.소속팀등급 is '소속팀등급';
comment on column kfadm.지도자팀수상현황.수상코드 is '수상코드';
comment on column kfadm.지도자팀수상현황.수상명 is '수상명';
comment on column kfadm.지도자팀수상현황.수상수 is '수상수';

