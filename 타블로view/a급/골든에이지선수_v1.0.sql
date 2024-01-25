drop view 골든에이지선수;

create view  골든에이지선수
as
select b.stdr_year_nm                 as    연도
      , a.cnvc_no                     as    소집번호
      , c.cnvc_nm                     as    소집명
      , a.cnvc_tme                    as    소집회차코드
      , d.crse_odr_nm                 as    소집회차명
      , a.item_cde                    as    종목코드
      , e.item_nm                     as    종목명
      , a.player_id                   as    선수아이디
      , f.player_nm                   as    선수명
      , f.brthdy                      as    선수생년월일
      , f.hmnm_se_nm                  as    선수동명구분명
      , h.sexdstn_nm                  as    선수성별
      , i.agrde_nm                    as    선수연령대
      , a.cnvc_cnter_se_cde           as    소집센터구분코드
      , l.cnvc_cnter_se_nm            as    소집센터구분명
      , a.cnvc_wdr_cde                as    소집광역코드
      , m.cnvc_wdr_nm                 as    소집광역명
      , a.cnvc_area_cde               as    소집지역코드
      , n.cnvc_area_nm                as    소집지역명
      , a.cnvc_team_grad_cde          as    소집팀등급코드
      , o.team_grad_nm                as    소집팀등급명
      , p.sexdstn_nm                  as    소집성별
      , q.use_foot_nm                 as    사용발
      , r.at_nm                       as    출석여부
      , a.player_gpa_cde              as    선수평점코드
      , s.player_gpa_nm               as    선수평점
      , t.de_nm                       as    훈련시작일
      , u.de_nm                       as    훈련종료일
      , v.de_nm                       as    선수훈련시작일
      , w.de_nm                       as    선수훈련종료일
      , a.psitn_team_id               as    소속팀아아디
      , x.team_nm                     as    소속팀명
      , y.dstrct_nm                   as    소속팀지역
      , a.psitn_team_class_cde        as    소속팀클래스코드
      , z.team_class_nm               as    소속팀클래스명
      , a.psitn_team_grad_cde         as    소속팀등급코드
      , aa.team_grad_nm               as    소속팀등급명
      , a.psitn_team_mangr_id         as    소속팀감독아이디
      , ab.coach_nm                   as    소속팀감독명
      , ab.brthdy                     as    소속팀감독생년월일
      , ab.hmnm_se_nm                 as    소속팀감독동명구분명
      , a.psitn_team_player_postn_cde as    소속팀선수포지션코드
      , ac.player_postn_nm            as    소속팀선수포지션명
      , ad.traing_place_nm            as    훈련장소명
      , a.psitn_team_nm               as    소속팀아이디
      , af.evl_opinion_cde            as    평가의견코드
      , af.evl_opinion_nm             as    평가의견명
      , ag.cnvc_sttus_cde             as    소집상태코드
      , ag.cnvc_sttus_nm              as    소집상태명
      , a.height                      as    신장
      , a.bdwgh                       as    체중
      , a.cnvc_co                     as    소집수
   from wf_golden_age_player a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_golden_age_cnvc c 
	 ON a.cnvc_no = c.cnvc_no 	    left outer join 
	    wd_crse_odr d 
	 ON a.cnvc_tme = d.crse_odr 	    left outer join 
	    wd_item e 
	 ON a.item_cde = e.item_cde 	    left outer join 
	    wd_golden_age_player f 
	 ON a.player_id = f.player_id 	    left outer join 
	    wd_sexdstn h 
	 ON a.player_sexdstn_cde = h.sexdstn_cde 	    left outer join 
	    wd_agrde i 
	 ON a.player_agrde_cde = i.agrde_cde 	    left outer join 
	    wd_golden_age_cnter_se l 
	 ON a.cnvc_cnter_se_cde = l.cnvc_cnter_se_cde 	    left outer join 
	    wd_golden_age_wdr m 
	 ON a.cnvc_wdr_cde = m.cnvc_wdr_cde 	    left outer join 
	    wd_golden_age_area n 
	 ON a.cnvc_area_cde = n.cnvc_area_cde 	    left outer join 
	    wd_golden_age_grad o 
	 ON a.cnvc_team_grad_cde = o.cnvc_team_grad_cde 	    left outer join 
	    wd_sexdstn p 
	 ON a.cnvc_sexdstn_cde = p.sexdstn_cde 	    left outer join 
	    wd_use_foot q 
	 ON a.use_foot_cde = q.use_foot_cde 	    left outer join 
	    wd_atend r 
	 ON a.atend_at = r.atend_at 	    left outer join 
	    wd_golden_age_player_gpa  s 
	 ON a.player_gpa_cde = s.player_gpa_cde 	    left outer join 
	    wd_de t 
	 ON a.traing_begin_dat = t.de 	    left outer join 
	    wd_de u 
	 ON a.traing_end_dat = u.de 	    left outer join 
	    wd_de v 
	 ON a.player_traing_begin_dat = v.de 	    left outer join 
	    wd_de w 
	 ON a.player_traing_end_dat = w.de 	    left outer join 
	    wd_team x 
	 ON a.psitn_team_id = x.team_id 	    left outer join 
	    wd_dstrct y 
	 ON a.psitn_team_area_cde = y.dstrct_cde 	    left outer join 
	    wd_team_class z 
	 ON a.psitn_team_class_cde = z.team_class_cde 	    left outer join 
	    wd_team_grad aa 
	 ON a.psitn_team_grad_cde = aa.team_grad_cde 	    left outer join 
	    wd_coach ab 
	 ON a.psitn_team_mangr_id = ab.coach_id 	    left outer join 
	    wd_player_postn ac 
	 ON a.psitn_team_player_postn_cde = ac.player_postn_cde 	    left outer join 
	    wd_golden_age_traing_place ad 
	 ON a.traing_place_nm = ad.traing_place_nm 	    left outer join 
	    wd_team ae 
	 ON a.psitn_team_nm = ae.team_id 	    left outer join 
	    wd_golden_age_evl_opinion af 
	 ON a.evl_opinion_cde = af.evl_opinion_cde 	    left outer join 
	    wd_golden_age_cnvc_sttus ag 
	 ON a.cnvc_sttus_cde = ag.cnvc_sttus_cde 
;


comment on view kfadm.골든에이지선수 is '골든에이지선수';
comment on column kfadm.골든에이지선수.연도 is '연도';
comment on column kfadm.골든에이지선수.소집번호 is '소집번호';
comment on column kfadm.골든에이지선수.소집명 is '소집명';
comment on column kfadm.골든에이지선수.소집회차코드 is '소집회차코드';
comment on column kfadm.골든에이지선수.소집회차명 is '소집회차명';
comment on column kfadm.골든에이지선수.종목코드 is '종목코드';
comment on column kfadm.골든에이지선수.종목명 is '종목명';
comment on column kfadm.골든에이지선수.선수아이디 is '선수아이디';
comment on column kfadm.골든에이지선수.선수명 is '선수명';
comment on column kfadm.골든에이지선수.선수생년월일 is '선수생년월일';
comment on column kfadm.골든에이지선수.선수동명구분명 is '선수동명구분명';
comment on column kfadm.골든에이지선수.선수성별 is '선수성별';
comment on column kfadm.골든에이지선수.선수연령대 is '선수연령대';
comment on column kfadm.골든에이지선수.소집센터구분코드 is '소집센터구분코드';
comment on column kfadm.골든에이지선수.소집센터구분명 is '소집센터구분명';
comment on column kfadm.골든에이지선수.소집광역코드 is '소집광역코드';
comment on column kfadm.골든에이지선수.소집광역명 is '소집광역명';
comment on column kfadm.골든에이지선수.소집지역코드 is '소집지역코드';
comment on column kfadm.골든에이지선수.소집지역명 is '소집지역명';
comment on column kfadm.골든에이지선수.소집팀등급코드 is '소집팀등급코드';
comment on column kfadm.골든에이지선수.소집팀등급명 is '소집팀등급명';
comment on column kfadm.골든에이지선수.소집성별 is '소집성별';
comment on column kfadm.골든에이지선수.사용발 is '사용발';
comment on column kfadm.골든에이지선수.출석여부 is '출석여부';
comment on column kfadm.골든에이지선수.선수평점코드 is '선수평점코드';
comment on column kfadm.골든에이지선수.선수평점 is '선수평점';
comment on column kfadm.골든에이지선수.훈련시작일 is '훈련시작일';
comment on column kfadm.골든에이지선수.훈련종료일 is '훈련종료일';
comment on column kfadm.골든에이지선수.선수훈련시작일 is '선수훈련시작일';
comment on column kfadm.골든에이지선수.선수훈련종료일 is '선수훈련종료일';
comment on column kfadm.골든에이지선수.소속팀아아디 is '소속팀아아디';
comment on column kfadm.골든에이지선수.소속팀지역 is '소속팀지역';
comment on column kfadm.골든에이지선수.소속팀클래스코드 is '소속팀클래스코드';
comment on column kfadm.골든에이지선수.소속팀클래스명 is '소속팀클래스명';
comment on column kfadm.골든에이지선수.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.골든에이지선수.소속팀등급명 is '소속팀등급명';
comment on column kfadm.골든에이지선수.소속팀감독아이디 is '소속팀감독아이디';
comment on column kfadm.골든에이지선수.소속팀감독명 is '소속팀감독명';
comment on column kfadm.골든에이지선수.소속팀감독생년월일 is '소속팀감독생년월일';
comment on column kfadm.골든에이지선수.소속팀감독동명구분명 is '소속팀감독동명구분명';
comment on column kfadm.골든에이지선수.소속팀선수포지션코드 is '소속팀선수포지션코드';
comment on column kfadm.골든에이지선수.소속팀선수포지션명 is '소속팀선수포지션명';
comment on column kfadm.골든에이지선수.훈련장소명 is '훈련장소명';
comment on column kfadm.골든에이지선수.소속팀아이디 is '소속팀아이디';
comment on column kfadm.골든에이지선수.소속팀명 is '소속팀명';
comment on column kfadm.골든에이지선수.평가의견코드 is '평가의견코드';
comment on column kfadm.골든에이지선수.평가의견명 is '평가의견명';
comment on column kfadm.골든에이지선수.소집상태코드 is '소집상태코드';
comment on column kfadm.골든에이지선수.소집상태명 is '소집상태명';
comment on column kfadm.골든에이지선수.신장 is '신장';
comment on column kfadm.골든에이지선수.체중 is '체중';
comment on column kfadm.골든에이지선수.소집수 is '소집수';
