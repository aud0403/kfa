drop view 국가대표소집현황;


create view 국가대표소집현황
as 
select b.stdr_year_nm                              as  연도
      , a.cnvc_no		                           as  소집번호
      , c.nl_team_cnvc_nm                          as  소집명
      , coalesce (d.de_nm, '입력형식오류')             as  소집시작일
      , coalesce (e.de_nm, '입력형식오류')             as  소집종료일
      , a.nl_team_grad_cde                         as  대표팀등급코드
      , f.nl_team_grad_nm                          as  대표팀등급명
      , a.mbr_se_cde                               as  소집멤버구분코드
      , g.mbr_se_nm                                as  소집멤버구분
      , a.mbr_id                                   as  소집멤버아이디
      , h.mbr_nm                                   as  소집멤버명
      , h.brthdy                                   as  소집멤버생년월일
      , h.hmnm_se_nm                               as  소집멤버동명구분명
      , i.sexdstn_nm                               as  성별
      , j.agrde_nm                                 as  나이
      , a.psitn_team_id                            as  소속팀아이디
      , k.team_nm                                  as  소속팀명
      , a.psitn_team_nation_cde                    as  소속팀국가코드
      , l.nation_nm                                as  소속팀국가명
      , a.game_co                                  as  경기수
   from mf_nl_team_cnvc_sttus a
   	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join  
	    wd_nl_team_cnvc c 
	 ON a.cnvc_no = c.nl_team_cnvc_no 	    left outer join 
	    wd_de d 
	 ON a.nl_team_cnvc_begin_dat  = d.de 	    left outer join 
	    wd_de e 
	 ON a.nl_team_cnvc_end_dat  = e.de 	    left outer join 
	    wd_nl_team_grad f 
	 ON a.nl_team_grad_cde = f.nl_team_grad_cde 	    left outer join 
	    wd_nl_team_mbr_se g 
	 ON a.mbr_se_cde = g.mbr_se_cde 	    left outer join 
	    wd_mbr h 
	 ON a.mbr_id = h.mbr_id 	    left outer join 
	    wd_sexdstn i 
	 ON a.sexdstn_cde = i.sexdstn_cde 	    left outer join 
	    wd_agrde j 
	 ON a.agrde_cde = j.agrde_cde 	    left outer join 
	    wd_team k 
	 ON a.psitn_team_id  = k.team_id 
	    left outer join 
	    wd_nation l
	 on a.psitn_team_nation_cde = l.nation_cde 
  ;
  
 
 
comment on view kfadm.국가대표소집현황 is '국가대표소집현황';
comment on column kfadm.국가대표소집현황.연도 is '연도';
comment on column kfadm.국가대표소집현황.소집번호 is '소집번호';
comment on column kfadm.국가대표소집현황.소집명 is '소집명';
comment on column kfadm.국가대표소집현황.소집시작일 is '소집시작일';
comment on column kfadm.국가대표소집현황.소집종료일 is '소집종료일';
comment on column kfadm.국가대표소집현황.대표팀등급코드 is '대표팀등급코드';
comment on column kfadm.국가대표소집현황.대표팀등급명 is '대표팀등급명';
comment on column kfadm.국가대표소집현황.소집멤버구분코드 is '소집멤버구분코드';
comment on column kfadm.국가대표소집현황.소집멤버구분 is '소집멤버구분';
comment on column kfadm.국가대표소집현황.소집멤버아이디 is '소집멤버아이디';
comment on column kfadm.국가대표소집현황.소집멤버명 is '소집멤버명';
comment on column kfadm.국가대표소집현황.소집멤버생년월일 is '소집멤버생년월일';
comment on column kfadm.국가대표소집현황.소집멤버동명구분명 is '소집멤버동명구분명';
comment on column kfadm.국가대표소집현황.성별 is '성별';
comment on column kfadm.국가대표소집현황.나이 is '나이';
comment on column kfadm.국가대표소집현황.소속팀아이디 is '소속팀아이디';
comment on column kfadm.국가대표소집현황.소속팀명 is '소속팀명';
comment on column kfadm.국가대표소집현황.소속팀국가코드 is '소속팀국가코드';
comment on column kfadm.국가대표소집현황.소속팀국가명 is '소속팀국가명';
comment on column kfadm.국가대표소집현황.경기수 is '경기수';
