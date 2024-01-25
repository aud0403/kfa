drop view 골든패스선수지표;

create view 골든패스선수지표
as 
select b.stdr_year_nm                as 연도
      , a.round_no 					 as 라운드코드
      , c.round_nm                   as 라운드명
      , a.age_group_cde              as 연령그룹코드
      , d.age_group_nm               as 연령그룹
      , a.player_id                  as 선수아이디
      , e.player_nm                  as 선수명
      , concat(substring(e.brthdy,1,4),'.',substring(e.brthdy,5,2),'.',substring(e.brthdy,7,2)) as 선수생년월일
      , e.hmnm_se_nm                 as 선수동명구분명
      , f.sexdstn_nm                 as 선수성별
      , g.agrde_nm                   as 선수연령대
      , a.goldenpass_team_id         as 골든패스팀코드
      , h.team_nm                    as 골든패스팀명
      , i.player_postn_nm            as 선수포지션
      , j.de_nm                      as 측정일자
      , a.kfa_player_id              as KFA선수아이디
      , l.player_nm                  as KFA선수명
      , l.brthdy                     as KFA선수생년월일
      , l.hmnm_se_nm                 as KFA선수동명구분명
      , a.height                     as 신장
      , a.bdwgh                      as 체중
      , a.bdy_mtrty_sttus            as 신체성숙상태
      , a.body_fat_percentage        as 체지방율
      , a.muscle_mass                as 근육량
      , a.dribble                    as 드리블
      , a.awareness                  as 상황인지
      , a.sprint_5m                  as 스프린트5M
      , a.sprint_10m                 as 스프린트10M
      , a.sprint_30m                 as 스프린트30M
      , a.reaction_rapidity          as 반응적민첩성
      , a.change_of_direction        as 방향전환민첩성
      , a.countermovement_jump       as 하체근력
      , a.reactive_strength_index    as 반응근력
      , a.mindset                    as 마인드셋
      , a.relationship               as 이성관계
      , a.self_management            as 자기관리
      , a.support_coach              as 지도자지지
      , a.support_parents            as 부모지지
      , a.support_peer               as 또래지지
      , a.measure_concentration      as 설문조사집중력
      , a.measure_coping_skill       as 설문조사대처기술
      , a.measure_killer_instinct    as 설문조사승부근성
      , a.measure_nerve              as 설문조사긴장불안
      , a.measure_confidence         as 설문조사자신감
      , a.measure_play_intelligence  as 설문조사경기지능
      , a.insight_concentration      as 본인평가집중력
      , a.insight_coping_skill       as 본인평가대처기술
      , a.insight_killer_instinct    as 본인평가승부근성
      , a.insight_nerve              as 본인평가긴장불안
      , a.insight_confidence         as 본인평가자신감
      , a.insight_play_intelligence  as 본인평가경기지능
      , a.mesure_co                  as 측정수
   from wf_goldenpass_player_mesure_sttus a
  	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_goldenpass_round c 
	 ON a.round_no = c.round_no 	    left outer join 
	    wd_goldenpass_age_group d 
	 ON a.age_group_cde = d.age_group_cde 	    left outer join 
	    wd_goldenpass_player e 
	 ON a.player_id = e.player_id 	    left outer join 
	    wd_sexdstn f 
	 ON a.player_sexdstn_cde = f.sexdstn_cde 	    left outer join 
	    wd_agrde g 
	 ON a.player_agrde_cde = g.agrde_cde 	    left outer join 
	    wd_goldenpass_team h 
	 ON a.goldenpass_team_id = h.team_id 	    left outer join 
	    wd_player_postn i 
	 ON a.player_postn_cde = i.player_postn_cde 	    left outer join 
	    wd_de j 
	 ON a.mesure_de = j.de 	    left outer join 
	    wd_player l 
	 ON a.kfa_player_id = l.player_id 
  ;
  
 
comment on view kfadm.골든패스선수지표 is '골든패스선수지표';
comment on column kfadm.골든패스선수지표.연도 is '연도';
comment on column kfadm.골든패스선수지표.라운드코드 is '라운드코드';
comment on column kfadm.골든패스선수지표.라운드명 is '라운드명';
comment on column kfadm.골든패스선수지표.연령그룹코드 is '연령그룹코드';
comment on column kfadm.골든패스선수지표.연령그룹 is '연령그룹';
comment on column kfadm.골든패스선수지표.선수아이디 is '선수아이디';
comment on column kfadm.골든패스선수지표.선수명 is '선수명';
comment on column kfadm.골든패스선수지표.선수생년월일 is '선수생년월일';
comment on column kfadm.골든패스선수지표.선수동명구분명 is '선수동명구분명';
comment on column kfadm.골든패스선수지표.선수성별 is '선수성별';
comment on column kfadm.골든패스선수지표.선수연령대 is '선수연령대';
comment on column kfadm.골든패스선수지표.골든패스팀코드 is '골든패스팀코드';
comment on column kfadm.골든패스선수지표.골든패스팀명 is '골든패스팀명';
comment on column kfadm.골든패스선수지표.선수포지션 is '선수포지션';
comment on column kfadm.골든패스선수지표.측정일자 is '측정일자';
comment on column kfadm.골든패스선수지표.KFA선수아이디 is 'KFA선수아이디';
comment on column kfadm.골든패스선수지표.KFA선수명 is 'KFA선수명';
comment on column kfadm.골든패스선수지표.KFA선수생년월일 is 'KFA선수생년월일';
comment on column kfadm.골든패스선수지표.KFA선수동명구분명 is 'KFA선수동명구분명';
comment on column kfadm.골든패스선수지표.신장 is '신장';
comment on column kfadm.골든패스선수지표.체중 is '체중';
comment on column kfadm.골든패스선수지표.신체성숙상태 is '신체성숙상태';
comment on column kfadm.골든패스선수지표.체지방율 is '체지방율';
comment on column kfadm.골든패스선수지표.근육량 is '근육량';
comment on column kfadm.골든패스선수지표.드리블 is '드리블';
comment on column kfadm.골든패스선수지표.상황인지 is '상황인지';
comment on column kfadm.골든패스선수지표.스프린트5M is '스프린트5M';
comment on column kfadm.골든패스선수지표.스프린트10M is '스프린트10M';
comment on column kfadm.골든패스선수지표.스프린트30M is '스프린트30M';
comment on column kfadm.골든패스선수지표.반응적민첩성 is '반응적민첩성';
comment on column kfadm.골든패스선수지표.방향전환민첩성 is '방향전환민첩성';
comment on column kfadm.골든패스선수지표.하체근력 is '하체근력';
comment on column kfadm.골든패스선수지표.반응근력 is '반응근력';
comment on column kfadm.골든패스선수지표.마인드셋 is '마인드셋';
comment on column kfadm.골든패스선수지표.이성관계 is '이성관계';
comment on column kfadm.골든패스선수지표.자기관리 is '자기관리';
comment on column kfadm.골든패스선수지표.지도자지지 is '지도자지지';
comment on column kfadm.골든패스선수지표.부모지지 is '부모지지';
comment on column kfadm.골든패스선수지표.또래지지 is '또래지지';
comment on column kfadm.골든패스선수지표.설문조사집중력 is '설문조사집중력';
comment on column kfadm.골든패스선수지표.설문조사대처기술 is '설문조사대처기술';
comment on column kfadm.골든패스선수지표.설문조사승부근성 is '설문조사승부근성';
comment on column kfadm.골든패스선수지표.설문조사긴장불안 is '설문조사긴장불안';
comment on column kfadm.골든패스선수지표.설문조사자신감 is '설문조사자신감';
comment on column kfadm.골든패스선수지표.설문조사경기지능 is '설문조사경기지능';
comment on column kfadm.골든패스선수지표.본인평가집중력 is '본인평가집중력';
comment on column kfadm.골든패스선수지표.본인평가대처기술 is '본인평가대처기술';
comment on column kfadm.골든패스선수지표.본인평가승부근성 is '본인평가승부근성';
comment on column kfadm.골든패스선수지표.본인평가긴장불안 is '본인평가긴장불안';
comment on column kfadm.골든패스선수지표.본인평가자신감 is '본인평가자신감';
comment on column kfadm.골든패스선수지표.본인평가경기지능 is '본인평가경기지능';
comment on column kfadm.골든패스선수지표.측정수 is '측정수';
