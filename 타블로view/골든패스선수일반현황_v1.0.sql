drop view 골든패스선수일반현황;

create view   골든패스선수일반현황 
as
select b.stdr_year_nm                   as 기준연도명
       , a.round_no 					as 라운드코드
       , c.round_nm                     as 라운드명
       , d.age_group_nm                 as 연령그룹명
       , a.player_id                    as 선수아이디
       , e.player_nm                    as 선수명
       , concat(substring(e.brthdy,1,4),'.',substring(e.brthdy,5,2),'.',substring(e.brthdy,7,2))  as 선수생년월일
       , e.hmnm_se_nm                   as 동명구분명
       , f.sexdstn_nm                   as 성별명
       , g.agrde_nm                     as 연령대명
       , g.agrde_lclas_nm               as 연령대대분류명
       , a.goldenpass_team_id           as 팀아이디
       , h.team_nm                      as 팀명
       , i.player_postn_nm              as 선수포지션명
       , j.de_nm                        as 측정일자
       , k.crse_odr_nm                  as 측정차시
       , a.kfa_player_id                as KFA선수아이디
       , l.player_nm                    as KFA선수명
       , concat(substring(l.brthdy,1,4),'.',substring(l.brthdy,5,2),'.',substring(l.brthdy,7,2))   as KFA선수생년월일
       , l.hmnm_se_nm                   as KFA선수동명구분명
       , m.stdr_year_nm                 as 이력연도
       , a.cnvc_no                      as 소집번호
       , n.cnvc_nm                      as 소집명
       , a.mesure_ordr                  as 소집회차코드
       , o.crse_odr_nm                  as 소집회차
       , a.cnvc_cnter_se_cde            as 소집센터구분코드
       , p.cnvc_cnter_se_nm             as 소집센터구분명
       , a.cnvc_team_grad_cde           as 팀등급코드
       , q.team_grad_nm                 as 팀등급명
       , r.de_nm                        as 훈련시작일
       , s.de_nm                        as 훈련종료일
       , a.use_foot_cde                 as 사용발코드
       , t.use_foot_nm                  as 사용발명
       , a.player_gpa_cde               as 선수편정코드
       , u.player_gpa_nm                as 선수평점명
       , a.evl_opinion_cde              as 평가의견코드
       , v.evl_opinion_nm               as 평가의견명
       , a.cnvc_area_cde        	    as 소집지역코드
       , w.cnvc_area_nm 				as 소집지역명
       , a.height                       as 신장
		, a.bdwgh                       as 체중
		, a.bdy_mtrty_sttus             as 신체성숙상태
		, a.body_fat_percentage         as 체지방율
		, a.muscle_mass                 as 근육량
		, a.dribble                     as 드리블
		, a.awareness                   as 상황인지
		, a.sprint_5m                   as 스프린트5M
		, a.sprint_10m                  as 스프린트10M
		, a.sprint_30m                  as 스프린트30M
		, a.reaction_rapidity           as 반응적민첩성
		, a.change_of_direction         as 방향전환민첩성
		, a.countermovement_jump        as 하체근력
		, a.reactive_strength_index     as 반응근력
		, a.mindset                     as 마인드셋
		, a.relationship                as 이성관계
		, a.self_management             as 자기관리
		, a.support_coach               as 지도자지지
		, a.support_parents             as 부모지지
		, a.support_peer                as 또래지지
		, a.measure_concentration       as 설문조사집중력
		, a.measure_coping_skill        as 설문조사대처기술
		, a.measure_killer_instinct     as 설문조사승부근성
		, a.measure_nerve               as 설문조사긴장불안
		, a.measure_confidence          as 설문조사자신감
		, a.measure_play_intelligence   as 설문조사경기지능
		, a.insight_concentration       as 본인평가집중력
		, a.insight_coping_skill        as 본인평가대처기술
		, a.insight_killer_instinct     as 본인평가승부근성
		, a.insight_nerve               as 본인평가긴장불안
		, a.insight_confidence          as 본인평가자신감
		, a.insight_play_intelligence   as 본인평가경기지능
		, a.mesure_co                   as 측정수
    from MF_GOLDENPASS_PLAYER_GNRL_STTUS a
         left outer join 
	     wd_stdr_year b 
	  on a.stdr_year = b.stdr_year 	     left outer join 
	     wd_goldenpass_round c 
	  on a.round_no = c.round_no 	     left outer join 
	     wd_goldenpass_age_group d 
	  on a.age_group_cde = d.age_group_cde 	     left outer join 
	     wd_goldenpass_player e 
	  on a.player_id = e.player_id 	     left outer join 
	     wd_sexdstn f 
	  on a.player_sexdstn_cde = f.sexdstn_cde 	     left outer join 
	     wd_agrde g 
	  on a.player_agrde_cde = g.agrde_cde 	     left outer join 
	     wd_goldenpass_team h 
	  on a.goldenpass_team_id = h.team_id 	     left outer join 
	     wd_player_postn i 
	  on a.player_postn_cde = i.player_postn_cde 	     left outer join 
	     wd_de j 
	  on a.mesure_de = j.de 	     left outer join 
	     wd_crse_odr k 
	  on a.mesure_ordr = k.crse_odr 	     left outer join 
	     wd_player l 
	  on a.kfa_player_id = l.player_id 	     left outer join 
	     wd_stdr_year m 
	  on a.stdr_year = m.stdr_year 	     left outer join 
	     wd_golden_age_cnvc n 
	  on a.cnvc_no = n.cnvc_no 	     left outer join 
	     wd_crse_odr o 
	  on a.cnvc_tme = o.crse_odr 	     left outer join 
	     wd_golden_age_cnter_se p 
	  on a.cnvc_cnter_se_cde = p.cnvc_cnter_se_cde 	     left outer join 
	     wd_golden_age_grad q 
	  on a.cnvc_team_grad_cde = q.cnvc_team_grad_cde 	     left outer join 
	     wd_de r 
	  on a.traing_begin_dat = r.de 	     left outer join 
	     wd_de s 
	  on a.traing_end_dat = s.de 	     left outer join 
	     wd_use_foot t 
	  on a.use_foot_cde = t.use_foot_cde 	     left outer join 
	     wd_golden_age_player_gpa u 
	  on a.player_gpa_cde = u.player_gpa_cde 	     left outer join 
	     wd_golden_age_evl_opinion v 
	  on a.evl_opinion_cde = v.evl_opinion_cde 
	     left outer join
	     wd_golden_age_area w 
	  on a.cnvc_area_cde = w.cnvc_area_cde 
;

comment on view kfadm.골든패스선수일반현황  is '골든패스선수일반현황';
comment on column kfadm.골든패스선수일반현황.기준연도명 is '기준연도명';
comment on column kfadm.골든패스선수일반현황.라운드코드 is '라운드코드';
comment on column kfadm.골든패스선수일반현황.라운드명 is '라운드명';
comment on column kfadm.골든패스선수일반현황.연령그룹명 is '연령그룹명';
comment on column kfadm.골든패스선수일반현황.선수아이디 is '선수아이디';
comment on column kfadm.골든패스선수일반현황.선수명 is '선수명';
comment on column kfadm.골든패스선수일반현황.선수생년월일 is '선수생년월일';
comment on column kfadm.골든패스선수일반현황.동명구분명 is '동명구분명';
comment on column kfadm.골든패스선수일반현황.성별명 is '성별명';
comment on column kfadm.골든패스선수일반현황.연령대명 is '연령대명';
comment on column kfadm.골든패스선수일반현황.연령대대분류명 is '연령대대분류명';
comment on column kfadm.골든패스선수일반현황.팀아이디 is '팀아이디';
comment on column kfadm.골든패스선수일반현황.팀명 is '팀명';
comment on column kfadm.골든패스선수일반현황.선수포지션명 is '선수포지션명';
comment on column kfadm.골든패스선수일반현황.측정일자 is '측정일자';
comment on column kfadm.골든패스선수일반현황.측정차시 is '측정차시';
comment on column kfadm.골든패스선수일반현황.KFA선수아이디 is 'KFA선수아이디';
comment on column kfadm.골든패스선수일반현황.KFA선수명 is 'KFA선수명';
comment on column kfadm.골든패스선수일반현황.KFA선수생년월일 is 'KFA선수생년월일';
comment on column kfadm.골든패스선수일반현황.KFA선수동명구분명 is 'KFA선수동명구분명';
comment on column kfadm.골든패스선수일반현황.이력연도 is '이력연도';
comment on column kfadm.골든패스선수일반현황.소집번호 is '소집번호';
comment on column kfadm.골든패스선수일반현황.소집명 is '소집명';
comment on column kfadm.골든패스선수일반현황.소집회차코드 is '소집회차코드';
comment on column kfadm.골든패스선수일반현황.소집회차 is '소집회차';
comment on column kfadm.골든패스선수일반현황.소집센터구분코드 is '소집센터구분코드';
comment on column kfadm.골든패스선수일반현황.소집센터구분명 is '소집센터구분명';
comment on column kfadm.골든패스선수일반현황.팀등급코드 is '팀등급코드';
comment on column kfadm.골든패스선수일반현황.팀등급명 is '팀등급명';
comment on column kfadm.골든패스선수일반현황.훈련시작일 is '훈련시작일';
comment on column kfadm.골든패스선수일반현황.훈련종료일 is '훈련종료일';
comment on column kfadm.골든패스선수일반현황.사용발코드 is '사용발코드';
comment on column kfadm.골든패스선수일반현황.사용발명 is '사용발명';
comment on column kfadm.골든패스선수일반현황.선수편정코드 is '선수편정코드';
comment on column kfadm.골든패스선수일반현황.선수평점명 is '선수평점명';
comment on column kfadm.골든패스선수일반현황.평가의견코드 is '평가의견코드';
comment on column kfadm.골든패스선수일반현황.평가의견명 is '평가의견명';
comment on column kfadm.골든패스선수일반현황.소집지역코드 is '소집지역코드';
comment on column kfadm.골든패스선수일반현황.소집지역명 is '소집지역명';
comment on column kfadm.골든패스선수일반현황.신장 is '신장';
comment on column kfadm.골든패스선수일반현황.체중 is '체중';
comment on column kfadm.골든패스선수일반현황.신체성숙상태 is '신체성숙상태';
comment on column kfadm.골든패스선수일반현황.체지방율 is '체지방율';
comment on column kfadm.골든패스선수일반현황.근육량 is '근육량';
comment on column kfadm.골든패스선수일반현황.드리블 is '드리블';
comment on column kfadm.골든패스선수일반현황.상황인지 is '상황인지';
comment on column kfadm.골든패스선수일반현황.스프린트5M is '스프린트5M';
comment on column kfadm.골든패스선수일반현황.스프린트10M is '스프린트10M';
comment on column kfadm.골든패스선수일반현황.스프린트30M is '스프린트30M';
comment on column kfadm.골든패스선수일반현황.반응적민첩성 is '반응적민첩성';
comment on column kfadm.골든패스선수일반현황.방향전환민첩성 is '방향전환민첩성';
comment on column kfadm.골든패스선수일반현황.하체근력 is '하체근력';
comment on column kfadm.골든패스선수일반현황.반응근력 is '반응근력';
comment on column kfadm.골든패스선수일반현황.마인드셋 is '마인드셋';
comment on column kfadm.골든패스선수일반현황.이성관계 is '이성관계';
comment on column kfadm.골든패스선수일반현황.자기관리 is '자기관리';
comment on column kfadm.골든패스선수일반현황.지도자지지 is '지도자지지';
comment on column kfadm.골든패스선수일반현황.부모지지 is '부모지지';
comment on column kfadm.골든패스선수일반현황.또래지지 is '또래지지';
comment on column kfadm.골든패스선수일반현황.설문조사집중력 is '설문조사집중력';
comment on column kfadm.골든패스선수일반현황.설문조사대처기술 is '설문조사대처기술';
comment on column kfadm.골든패스선수일반현황.설문조사승부근성 is '설문조사승부근성';
comment on column kfadm.골든패스선수일반현황.설문조사긴장불안 is '설문조사긴장불안';
comment on column kfadm.골든패스선수일반현황.설문조사자신감 is '설문조사자신감';
comment on column kfadm.골든패스선수일반현황.설문조사경기지능 is '설문조사경기지능';
comment on column kfadm.골든패스선수일반현황.본인평가집중력 is '본인평가집중력';
comment on column kfadm.골든패스선수일반현황.본인평가대처기술 is '본인평가대처기술';
comment on column kfadm.골든패스선수일반현황.본인평가승부근성 is '본인평가승부근성';
comment on column kfadm.골든패스선수일반현황.본인평가긴장불안 is '본인평가긴장불안';
comment on column kfadm.골든패스선수일반현황.본인평가자신감 is '본인평가자신감';
comment on column kfadm.골든패스선수일반현황.본인평가경기지능 is '본인평가경기지능';
comment on column kfadm.골든패스선수일반현황.측정수 is '측정수';





