drop view 골든에이지지도자;

create view 골든에이지지도자
as 
select b.stdr_year_nm                       as     연도
      , a.cnvc_no                           as     소집코드
      , c.cnvc_nm                           as     소집명
      , a.cnvc_tme                          as     소집회차
      , a.item_cde                          as     종목코드
      , e.item_nm                           as     종목명
      , a.coach_id                          as     지도자아아디
      , f.coach_nm                          as     지도자명
      , f.brthdy                            as     지도자생년월일
      , f.hmnm_se_nm                        as     지도자동명구분명
      , h.sexdstn_nm                        as     지도자성별
      , i.agrde_nm                          as     지도자연령대
      , a.cnvc_coach_se_cde                 as     소집지도자구분코드
      , j.cnvc_coach_se_nm                  as     소집지도자구분명
      , a.cnvc_cnter_se_cde                 as     소집센터구분코드
      , k.cnvc_cnter_se_nm                  as     소집센터구분명
      , a.cnvc_wdr_cde                      as     소집광역코드
      , l.cnvc_wdr_nm                       as     소집광역명
      , a.cnvc_area_cde                     as     소집지역코드
      , m.dstrct_nm                         as     소집지역명
      , a.cnvc_team_grad_cde                as     소집팀등급코드
      , n.team_grad_nm                      as     소집팀등급명
      , o.sexdstn_nm                        as     소집성별
      , p.at_nm                             as     소집담당자여부
      , q.at_nm                             as     출석여부
      , a.act_at                            as     활동여부
      , r.act_nm                            as     활동여부명
      , s.de_nm                             as     훈련시작일
      , t.de_nm                             as     훈련종료일
      , u.de_nm                             as     지도자훈련시작일
      , v.de_nm                             as     지도자훈련종료일
      , a.psitn_team_id                     as     소속팀아이디
      , w.team_nm                           as     소속팀명
      , a.psitn_team_clsf_cde               as     소속팀직급코드
      , x.coach_clsf_nm                     as     소속팀직급명
      , a.psitn_team_grad_cde               as     소속팀등급코드
      , y.team_grad_nm                      as     소속팀등급명
      , a.traing_place_nm                   as     훈련장소명
      , a.cnvc_sttus_cde                    as     소집상태코드
      , aa.cnvc_sttus_nm                    as     소집상태명
      , a.cnvc_co                           as     소집수
   from wf_golden_age_coach a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_golden_age_cnvc c 
	 ON a.cnvc_no = c.cnvc_no 	    left outer join 
	    wd_item e 
	 ON a.item_cde = e.item_cde 	    left outer join 
	    wd_coach f 
	 ON a.coach_id = f.coach_id 	    left outer join 
	    wd_sexdstn h 
	 ON a.coach_sexdstn_cde = h.sexdstn_cde 	    left outer join 
	    wd_agrde i 
	 ON a.coach_agrde_cde = i.agrde_cde 	    left outer join 
	    wd_golden_age_cnvc_coach_se j 
	 ON a.cnvc_coach_se_cde = j.cnvc_coach_se_cde 	    left outer join 
	    wd_golden_age_cnter_se k 
	 ON a.cnvc_cnter_se_cde = k.cnvc_cnter_se_cde 	    left outer join 
	    wd_golden_age_wdr l 
	 ON a.cnvc_wdr_cde = l.cnvc_wdr_cde 	    left outer join 
	    wd_dstrct m 
	 ON a.cnvc_area_cde = m.dstrct_cde 	    left outer join 
	    wd_golden_age_grad n 
	 ON a.cnvc_team_grad_cde = n.cnvc_team_grad_cde 	    left outer join 
	    wd_sexdstn o 
	 ON a.cnvc_sexdstn_cde = o.sexdstn_cde 	    left outer join 
	    wd_cnvc_charger p 
	 ON a.cnvc_charger_at = p.cnvc_charger_at 	    left outer join 
	    wd_atend q 
	 ON a.atend_at = q.atend_at 	    left outer join 
	    wd_act r 
	 ON a.act_at = r.act_cde 	    left outer join 
	    wd_de s 
	 ON a.traing_begin_dat = s.de 	    left outer join 
	    wd_de t 
	 ON a.traing_end_dat = t.de 	    left outer join 
	    wd_de u 
	 ON a.coach_traing_begin_dat = u.de 	    left outer join 
	    wd_de v 
	 ON a.coach_traing_end_dat = v.de 	    left outer join 
	    wd_team w 
	 ON a.psitn_team_id = w.team_id 	    left outer join 
	    wd_coach_clsf x 
	 ON a.psitn_team_clsf_cde = x.coach_clsf_cde 	    left outer join 
	    wd_team_grad y 
	 ON a.psitn_team_grad_cde = y.team_grad_cde 	    left outer join 
	    wd_golden_age_traing_place z 
	 ON a.traing_place_nm = z.traing_place_nm 	    left outer join 
	    wd_golden_age_cnvc_sttus aa 
	 ON a.cnvc_sttus_cde = aa.cnvc_sttus_cde 
;


comment on column kfadm.골든에이지지도자.연도 is '연도';
comment on column kfadm.골든에이지지도자.소집코드 is '소집코드';
comment on column kfadm.골든에이지지도자.소집명 is '소집명';
comment on column kfadm.골든에이지지도자.소집회차 is '소집회차';
comment on column kfadm.골든에이지지도자.종목코드 is '종목코드';
comment on column kfadm.골든에이지지도자.종목명 is '종목명';
comment on column kfadm.골든에이지지도자.지도자아아디 is '지도자아아디';
comment on column kfadm.골든에이지지도자.지도자명 is '지도자명';
comment on column kfadm.골든에이지지도자.지도자생년월일 is '지도자생년월일';
comment on column kfadm.골든에이지지도자.지도자동명구분명 is '지도자동명구분명';
comment on column kfadm.골든에이지지도자.지도자성별 is '지도자성별';
comment on column kfadm.골든에이지지도자.지도자연령대 is '지도자연령대';
comment on column kfadm.골든에이지지도자.소집지도자구분코드 is '소집지도자구분코드';
comment on column kfadm.골든에이지지도자.소집지도자구분명 is '소집지도자구분명';
comment on column kfadm.골든에이지지도자.소집센터구분코드 is '소집센터구분코드';
comment on column kfadm.골든에이지지도자.소집센터구분명 is '소집센터구분명';
comment on column kfadm.골든에이지지도자.소집광역코드 is '소집광역코드';
comment on column kfadm.골든에이지지도자.소집광역명 is '소집광역명';
comment on column kfadm.골든에이지지도자.소집지역코드 is '소집지역코드';
comment on column kfadm.골든에이지지도자.소집지역명 is '소집지역명';
comment on column kfadm.골든에이지지도자.소집팀등급코드 is '소집팀등급코드';
comment on column kfadm.골든에이지지도자.소집팀등급명 is '소집팀등급명';
comment on column kfadm.골든에이지지도자.소집성별 is '소집성별';
comment on column kfadm.골든에이지지도자.소집담당자여부 is '소집담당자여부';
comment on column kfadm.골든에이지지도자.출석여부 is '출석여부';
comment on column kfadm.골든에이지지도자.활동여부 is '활동여부';
comment on column kfadm.골든에이지지도자.활동여부명 is '활동여부명';
comment on column kfadm.골든에이지지도자.훈련시작일 is '훈련시작일';
comment on column kfadm.골든에이지지도자.훈련종료일 is '훈련종료일';
comment on column kfadm.골든에이지지도자.지도자훈련시작일 is '지도자훈련시작일';
comment on column kfadm.골든에이지지도자.지도자훈련종료일 is '지도자훈련종료일';
comment on column kfadm.골든에이지지도자.소속팀아이디 is '소속팀아이디';
comment on column kfadm.골든에이지지도자.소속팀명 is '소속팀명';
comment on column kfadm.골든에이지지도자.소속팀직급코드 is '소속팀직급코드';
comment on column kfadm.골든에이지지도자.소속팀직급명 is '소속팀직급명';
comment on column kfadm.골든에이지지도자.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.골든에이지지도자.소속팀등급명 is '소속팀등급명';
comment on column kfadm.골든에이지지도자.훈련장소명 is '훈련장소명';
comment on column kfadm.골든에이지지도자.소집상태코드 is '소집상태코드';
comment on column kfadm.골든에이지지도자.소집상태명 is '소집상태명';
comment on column kfadm.골든에이지지도자.소집수 is '소집수';
