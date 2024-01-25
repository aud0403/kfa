CREATE SEQUENCE data_agegroup_id_seq;
CREATE SEQUENCE data_record_id_seq;
CREATE SEQUENCE player_player_id_seq;
CREATE SEQUENCE round_round_id_seq;






-- goldenpass.data_agegroup definition

CREATE TABLE data_agegroup (
  id int NOT NULL DEFAULT nextval('data_agegroup_id_seq'),
  created TIMESTAMP(6) NOT NULL,
  modified TIMESTAMP(6) NOT NULL,
  name varchar(16) NOT null UNIQUE,
  PRIMARY KEY (id)
) ;



-- goldenpass.data_record definition

CREATE TABLE data_record (
  id int NOT NULL DEFAULT nextval('data_record_id_seq') PRIMARY KEY ,
  created TIMESTAMP(6) NOT NULL,
  modified TIMESTAMP(6) NOT NULL,
  team varchar(255) NOT NULL,
  "position" varchar(32) NOT NULL,
  days int NOT NULL,
  years DOUBLE PRECISION NOT NULL,
  height DOUBLE PRECISION DEFAULT NULL,
  weight DOUBLE PRECISION DEFAULT NULL,
  physical_maturity DOUBLE PRECISION DEFAULT NULL,
  body_fat_percentage DOUBLE PRECISION DEFAULT NULL,
  muscle_mass DOUBLE PRECISION DEFAULT NULL,
  dribble DOUBLE PRECISION DEFAULT NULL,
  awareness DOUBLE PRECISION DEFAULT NULL,
  sprint_5m DOUBLE PRECISION DEFAULT NULL,
  sprint_10m DOUBLE PRECISION DEFAULT NULL,
  sprint_30m DOUBLE PRECISION DEFAULT NULL,
  reaction_rapidity DOUBLE PRECISION DEFAULT NULL,
  change_of_direction DOUBLE PRECISION DEFAULT NULL,
  countermovement_jump DOUBLE PRECISION DEFAULT NULL,
  reactive_strength_index DOUBLE PRECISION DEFAULT NULL,
  remark varchar(1024) DEFAULT NULL,
  age_group_id int NOT null UNIQUE,
  player_id int NOT null UNIQUE,
  round_id int NOT null UNIQUE,
  ground_spirit_total DOUBLE PRECISION DEFAULT NULL,
  insight_concentration DOUBLE PRECISION DEFAULT NULL,
  insight_coping_skill DOUBLE PRECISION DEFAULT NULL,
  insight_killer_instinct DOUBLE PRECISION DEFAULT NULL,
  insight_nerve DOUBLE PRECISION DEFAULT NULL,
  insight_self_confidence DOUBLE PRECISION DEFAULT NULL,
  life_spirit_total DOUBLE PRECISION DEFAULT NULL,
  measure_concentration DOUBLE PRECISION DEFAULT NULL,
  measure_coping_skill DOUBLE PRECISION DEFAULT NULL,
  measure_killer_instinct DOUBLE PRECISION DEFAULT NULL,
  measure_nerve DOUBLE PRECISION DEFAULT NULL,
  measure_self_confidence DOUBLE PRECISION DEFAULT NULL,
  mindset DOUBLE PRECISION DEFAULT NULL,
  relationship DOUBLE PRECISION DEFAULT NULL,
  self_management DOUBLE PRECISION DEFAULT NULL,
  support_coach DOUBLE PRECISION DEFAULT NULL,
  support_parents DOUBLE PRECISION DEFAULT NULL,
  support_peer DOUBLE PRECISION DEFAULT NULL,
  insight_play_intelligence DOUBLE PRECISION DEFAULT NULL,
  measure_play_intelligence DOUBLE PRECISION DEFAULT NULL,
  intelligence_url varchar(128) DEFAULT NULL,
  speciality_url varchar(128) DEFAULT NULL,
  unique  (player_id,round_id,age_group_id),
  constraint data_record_age_group_id_ca53a8d7_fk_data_agegroup_id foreign key (age_group_id) REFERENCES data_agegroup(id),
  constraint data_record_player_id_435b0bd3_fk_player_player_id foreign key (player_id) REFERENCES player_player (id),
  CONSTRAINT data_record_round_id_e8d50135_fk_round_round_id FOREIGN KEY (round_id) REFERENCES round_round (id)
);

 /* PRIMARY KEY (id),
  UNIQUE KEY data_record_player_id_round_id_age_group_id_e058f732_uniq (player_id,round_id,age_group_id),
  KEY data_record_age_group_id_ca53a8d7_fk_data_agegroup_id (age_group_id),
  KEY data_record_round_id_e8d50135_fk_round_round_id (round_id),
  CONSTRAINT data_record_age_group_id_ca53a8d7_fk_data_agegroup_id FOREIGN KEY (age_group_id) REFERENCES data_agegroup (id),
  CONSTRAINT data_record_player_id_435b0bd3_fk_player_player_id FOREIGN KEY (player_id) REFERENCES player_player (id),
  CONSTRAINT data_record_round_id_e8d50135_fk_round_round_id FOREIGN KEY (round_id) REFERENCES round_round (id)
  */





-- goldenpass.player_player definition

CREATE TABLE player_player (
  id int NOT NULL DEFAULT nextval('player_player_id_seq') PRIMARY KEY,
  created TIMESTAMP(6) NOT NULL,
  modified TIMESTAMP(6) NOT NULL,
  kfa_id varchar(128) NOT null ,
  name varchar(64) NOT NULL,
  gender varchar(4) DEFAULT NULL,
  birth date DEFAULT NULL,
  "group" varchar(255) DEFAULT NULL,
  is_test SMALLINT DEFAULT NULL,
  unique (kfa_id)
);



-- goldenpass.round_round definition

CREATE TABLE round_round (
  id int NOT NULL DEFAULT nextval('round_round_id_seq') PRIMARY KEY,
  created TIMESTAMP(6) NOT NULL,
  modified TIMESTAMP(6) NOT NULL,
  number int NOT NULL,
  date date NOT NULL,
  UNIQUE  (number,date)
);




COMMENT ON TABLE goldenpass.data_agegroup IS '나이별 그룹';
COMMENT ON TABLE goldenpass.data_record IS '기록';
COMMENT ON TABLE goldenpass.player_player IS '선수';
COMMENT ON TABLE goldenpass.round_round IS '회차';

comment on column data_record.id is '데이터의 id. 생성 순서대로 넘버링';
comment on column data_record.created is '데이터의 생성 날짜';
comment on column data_record.modified is '데이터의 가장 최근 수정 날짜';
comment on column data_record.team is '소속팀';
comment on column data_record."position" is '포지션';
comment on column data_record.days is '일 (생년월일 - 측정날짜)';
comment on column data_record.years is '만 나이';
comment on column data_record."height" is '신장';
comment on column data_record.weight is '체중';
comment on column data_record.physical_maturity is '신체 성숙 상태 (PHV)';
comment on column data_record.body_fat_percentage is '체지방율';
comment on column data_record.muscle_mass is '근육량';
comment on column data_record.dribble is '드리블';
comment on column data_record.awareness is '상황 인지';
comment on column data_record.sprint_5m is '스프린트 5m';
comment on column data_record.sprint_10m is '스프린트 10m';
comment on column data_record.sprint_30m is '스프린트 30m';
comment on column data_record.reaction_rapidity is '반응적 민첩성';
comment on column data_record.change_of_direction is '방향전환 민첩성';
comment on column data_record.countermovement_jump is 'CMJ (하체 근력)';
comment on column data_record.reactive_strength_index is 'RSI (반응 근력)';
comment on column data_record.remark is '비고';
comment on column data_record.age_group_id is '연령 그룹 id (외래키)';
comment on column data_record.player_id is '선수 id (외래키)';
comment on column data_record.round_id is '선수 id (외래키)';
comment on column data_record.ground_spirit_total is '측정한 설문조사 내용 총합 (아래 measure로 시작하는 칼럼)';
comment on column data_record.measure_concentration is '설문조사를 통해 측정한 집중력';
comment on column data_record.measure_coping_skill is '설문조사를 통해 측정한 대처기술';
comment on column data_record.measure_killer_instinct is '설문조사를 통해 측정한 승부근성';
comment on column data_record.measure_nerve is '설문조사를 통해 측정한 긴장 및 불안';
comment on column data_record.measure_self_confidence is '설문조사를 통해 측정한 자신감';
comment on column data_record.measure_play_intelligence is '설문조사를 통해 측정한 경기지능';
comment on column data_record.insight_concentration is '선수 본인이 생각한 집중력';
comment on column data_record.insight_coping_skill is '선수 본인이 생각한 대처기술';
comment on column data_record.insight_killer_instinct is '선수 본인이 생각한 승부근성';
comment on column data_record.insight_nerve is '선수 본인이 생각한 긴장 및 불안';
comment on column data_record.insight_self_confidence is '선수 본인이 생각한 자신감';
comment on column data_record.insight_play_intelligence is '선수 본인이 생각한 경기지능';
comment on column data_record.life_spirit_total is '생활관련 측정항목의 총합 (아래 mindset - support_peer)';
comment on column data_record.mindset is '마인드셋';
comment on column data_record.relationship is '이성관계';
comment on column data_record.self_management is '자기관리';
comment on column data_record.support_coach is '지도자지지';
comment on column data_record.support_parents is '부모지지';
comment on column data_record.support_peer is '또래지지';
comment on column data_record.intelligence_url is 'intelligence 영상 url (비프로 플랫폼)';
comment on column data_record.speciality_url is 'speciallity 영상 url (비프로 플랫폼)';
comment on column data_agegroup.id is '데이터의 id. 생성 순서대로 넘버링';
comment on column data_agegroup.created is '데이터의 생성 날짜';
comment on column data_agegroup.modified is '데이터의 가장 최근 수정 날짜';
comment on column data_agegroup."name" is '성별(M, W), 연령(11-23)에 따른 연령그룹 이름(M11, W23, …)';
comment on column player_player.id is '데이터의 id. 생성 순서대로 넘버링';
comment on column player_player.created is '데이터의 생성 날짜';
comment on column player_player.modified is '데이터의 가장 최근 수정 날짜';
comment on column player_player.kfa_id is '선수 kfa id';
comment on column player_player."name" is '선수 이름';
comment on column player_player.gender is '성별';
comment on column player_player.birth is '생년월일';
comment on column player_player."group" is '구분 (KFA센터, 합동광역센터..)';
comment on column player_player.is_test is '(불필요, 삭제 예정)';
comment on column round_round.id is '데이터의 id. 생성 순서대로 넘버링';
comment on column round_round.created is '데이터의 생성 날짜';
comment on column round_round.modified is '데이터의 가장 최근 수정 날짜';
comment on column round_round."number" is '측정 차시';
comment on column round_round."date" is '측정 날짜';