drop view 심판평가관평가현황;

create view 심판평가관평가현황
as
select b.stdr_year_nm                as  연도
      , a.referee_no                  as  심판평가관번호
      , c.referee_nm                  as  심판평가관명
      , c.brthdy                      as  심판평가관생년월일
      , c.hmnm_se_nm                  as  심판평가관동명구분명
      , d.sexdstn_nm                  as  심판평가관성별
      , a.referee_assr_agrde_lclas_cde as  죽어
      , e.agrde_lclas_nm              as  심판평가관연령대
      , a.referee_regist_asoc_cde     as  심판평가관등록협회코드
      , f.referee_regist_asoc_nm      as  심판평가관등록협회명
      , a.referee_wsp_cde             as  심판평가관급수코드
      , g.referee_wsp_nm              as  심판평가관급수명
      , a.league_cmpet_se_cde         as  리그대회구분코드
      , h.league_cmpet_se_nm          as  리그대회구분명
      , a.cmpet_knd_cde               as  대회종류코드
      , i.cmpet_knd_nm                as  대회종류명
      , a.cmpet_no                    as  대회번호
      , j.cmpet_nm                    as  대회명
      , a.game_no                     as  경기번호
      , k.game_nm                     as  경기명
    --  , l.de_nm                       as  경기일자
      , a.referee_no                  as  심판번호
      , m.referee_nm                  as  심판명
      , m.brthdy                      as  심판생년월일
      , m.hmnm_se_nm                  as  심판동명구분명
      , n.sexdstn_nm                  as  심판성별
      , o.agrde_lclas_nm              as  심판연령대
      , a.referee_regist_asoc_cde     as  심판등록협회코드
      , p.referee_regist_asoc_nm      as  심판등록협회명
      , a.referee_wsp_cde             as  심판급수코드
      , q.referee_wsp_nm              as  심판급수명
      , a.referee_se_cde              as  심판구분코드
      , r.referee_se_nm               as  심판구분명
      , a.referee_gpa                 as  심판평점
      , a.referee_co                  as  심판수
   from mf_referee_assr_evl_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_referee_no c 
	 ON a.referee_assr_no = c.referee_no 	    left outer join 
	    wd_sexdstn d 
	 ON a.referee_assr_sexdstn_cde = d.sexdstn_cde 	    left outer join 
	    wd_agrde_lclas e 
	 ON a.referee_assr_agrde_lclas_cde = e.agrde_lclas_cde 	    left outer join 
	    wd_referee_regist_asoc f 
	 ON a.referee_assr_regist_asoc_cde = f.referee_regist_asoc_cde 	    left outer join 
	    wd_referee_wsp g 
	 ON a.referee_assr_wsp_cde = g.referee_wsp_cde 	    left outer join 
	    wd_league_cmpet_se h 
	 ON a.league_cmpet_se_cde = h.league_cmpet_se_cde 	    left outer join 
	    wd_cmpet_knd i 
	 ON a.cmpet_knd_cde = i.cmpet_knd_cde 	    left outer join 
	    wd_cmpet j 
	 ON a.cmpet_no = j.cmpet_no 	    left outer join 
	    wd_game k 
	 ON a.game_no = k.game_no 	 /*   left outer join 
	    wd_de l 
	 ON a.game_de = l.de */	    left outer join 
	    wd_referee_no m 
	 ON a.referee_no = m.referee_no 	    left outer join 
	    wd_sexdstn n 
	 ON a.referee_sexdstn_cde = n.sexdstn_cde 	    left outer join 
	    wd_agrde_lclas o 
	 ON a.referee_agrde_lclas_cde = o.agrde_lclas_cde 	    left outer join 
	    wd_referee_regist_asoc p 
	 ON a.referee_regist_asoc_cde = p.referee_regist_asoc_cde 	    left outer join 
	    wd_referee_wsp q 
	 ON a.referee_wsp_cde = q.referee_wsp_cde 	    left outer join 
	    wd_referee_se r 
	 ON a.referee_se_cde = r.referee_se_cde 
;


comment on view kfadm.심판평가관평가현황 is '심판평가관평가현황';
comment on column kfadm.심판평가관평가현황.연도 is '연도';
comment on column kfadm.심판평가관평가현황.심판평가관번호 is '심판평가관번호';
comment on column kfadm.심판평가관평가현황.심판평가관명 is '심판평가관명';
comment on column kfadm.심판평가관평가현황.심판평가관생년월일 is '심판평가관생년월일';
comment on column kfadm.심판평가관평가현황.심판평가관동명구분명 is '심판평가관동명구분명';
comment on column kfadm.심판평가관평가현황.심판평가관성별 is '심판평가관성별';
comment on column kfadm.심판평가관평가현황.심판평가관연령대 is '심판평가관연령대';
comment on column kfadm.심판평가관평가현황.심판평가관등록협회코드 is '심판평가관등록협회코드';
comment on column kfadm.심판평가관평가현황.심판평가관등록협회명 is '심판평가관등록협회명';
comment on column kfadm.심판평가관평가현황.심판평가관급수코드 is '심판평가관급수코드';
comment on column kfadm.심판평가관평가현황.심판평가관급수명 is '심판평가관급수명';
comment on column kfadm.심판평가관평가현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.심판평가관평가현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.심판평가관평가현황.대회종류코드 is '대회종류코드';
comment on column kfadm.심판평가관평가현황.대회종류명 is '대회종류명';
comment on column kfadm.심판평가관평가현황.대회번호 is '대회번호';
comment on column kfadm.심판평가관평가현황.대회명 is '대회명';
comment on column kfadm.심판평가관평가현황.경기번호 is '경기번호';
comment on column kfadm.심판평가관평가현황.경기명 is '경기명';
--comment on column kfadm.심판평가관평가현황.경기일자 is '경기일자';
comment on column kfadm.심판평가관평가현황.심판번호 is '심판번호';
comment on column kfadm.심판평가관평가현황.심판명 is '심판명';
comment on column kfadm.심판평가관평가현황.심판생년월일 is '심판생년월일';
comment on column kfadm.심판평가관평가현황.심판동명구분명 is '심판동명구분명';
comment on column kfadm.심판평가관평가현황.심판성별 is '심판성별';
comment on column kfadm.심판평가관평가현황.심판연령대 is '심판연령대';
comment on column kfadm.심판평가관평가현황.심판등록협회코드 is '심판등록협회코드';
comment on column kfadm.심판평가관평가현황.심판등록협회명 is '심판등록협회명';
comment on column kfadm.심판평가관평가현황.심판급수코드 is '심판급수코드';
comment on column kfadm.심판평가관평가현황.심판급수명 is '심판급수명';
comment on column kfadm.심판평가관평가현황.심판구분코드 is '심판구분코드';
comment on column kfadm.심판평가관평가현황.심판구분명 is '심판구분명';
comment on column kfadm.심판평가관평가현황.심판평점 is '심판평점';
comment on column kfadm.심판평가관평가현황.심판수 is '심판수';

