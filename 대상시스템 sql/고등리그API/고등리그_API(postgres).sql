CREATE TABLE "leagues" (
       id integer
     ,name                            varchar(50)
     ,iso_country_code                varchar(5)
     ,age_limit                       varchar(10)
     ,division                        integer
     ,season_ids                      text
     ,regdate                         date

 );
CREATE TABLE "matches" (
       id integer
     ,start_time                      varchar(30)
     ,round_id                        integer
     ,round_name                      varchar(20)
     ,season_id                       integer
     ,season_name                     varchar(10)
     ,season_group_name               varchar(10)
     ,league_id                       integer
     ,home_team_id                    integer
     ,home_team_name                  varchar(100)
     ,home_team_country_cd            varcahr(5)
     ,away_team_id                    integer
     ,away_team_name                  varchar(100)
     ,away_team_country_cd            varcahr(5)
     ,full_time                       integer
     ,half_time_duration              integer
     ,extra_full_time                 integer
     ,detail_result_home_score        integer
     ,detail_result_away_score        integer
     ,extra_result_home_score         integer
     ,extra_result_away_score         integer
     ,extra_result_type               varchar(50)
     ,venue_id                        integer
     ,venue_ground                    varchar(50)
     ,venue_ground_width              integer
     ,venue_ground_height             integer
     ,is_analysis_finished            boolean
     ,live_analysing                  boolean
     ,regdate                         date

 );
CREATE TABLE "matches_event_data" (
       event_id integer
     ,event_period                    varchar(20)
     ,event_time                      integer
     ,match_id                        integer
     ,team_id                         varchar(10)
     ,player_id                       integer
     ,x                               DOUBLE PRECISION
     ,y                               DOUBLE PRECISION
     ,event_type                      varchar(20)
     ,sub_event_type                  varchar(50)
     ,outcome                         varchar(20)
     ,"CROSS"                         boolean
     ,key_pass                        boolean
     ,assist                          boolean
     ,body_part                       varchar(20)
     ,relative_event_id               int8
     ,relative_event_time             int8
     ,re_player_id                    int4
     ,re_y                            float8
     ,re_x                            float8
     ,ball_position                   text
     ,xg                              DOUBLE PRECISION
     ,season_group_name               varchar(10)
	 ,regdate					   	date
 );
CREATE TABLE "matches_formation" (
       id integer
     ,team_id                         integer
	 ,match_id                        integer
     ,event_period                    varchar(50)
     ,changed_time                    integer
	 ,player_id  					  int8
	 ,position_x					  DOUBLE PRECISION
	 ,position_y					  DOUBLE PRECISION
     ,season_group_name               varchar(10)
	 ,regdate					   	date
 );
CREATE TABLE "matches_lineup" (
       id integer
     ,match_id                        integer
	 ,player_id                       integer
     ,player_name                     varchar(20)
     ,player_last_name                varchar(50)
     ,back_number                     varchar(5)
     ,is_starting_lineup              boolean
     ,position_x                      DOUBLE PRECISION
     ,position_y                      DOUBLE PRECISION
     ,position_name                   varchar(10)
     ,team_id                         integer
     ,season_group_name               varchar(10)
	 ,regdate					   	date

 );
CREATE TABLE "matches_player_stats" (
       team_id integer
     ,player_id                       integer
     ,match_id                        integer
     ,goal                            integer
     ,total_shot                      integer
     ,shot_on_target                  integer
     ,shot_off_target                 integer
     ,shot_blocked                    integer
     ,shot_in_PA                      integer
     ,shot_outside_of_PA              integer
     ,free_kick                       integer
     ,corner_kick                     integer
     ,throw_in                        integer
     ,pass                            integer
     ,pass_succeeded                  integer
     ,assist                          integer
     ,key_pass                        integer
     ,control_under_pressure          integer
     ,"CROSS"                         integer
     ,cross_succeeded                 integer
     ,final_third_area_pass           integer
     ,final_third_area_pass_succeeded integer
     ,middle_area_pass                integer
     ,middle_area_pass_succeeded      integer
     ,defensive_area_pass             integer
     ,defensive_area_pass_succeeded   integer
     ,short_pass                      integer
     ,short_pass_succeeded            integer
     ,medium_range_pass               integer
     ,medium_range_pass_succeeded     integer
     ,long_pass                       integer
     ,long_pass_succeeded             integer
     ,forward_pass                    integer
     ,forward_pass_succeeded          integer
     ,backward_pass                   integer
     ,backward_pass_succeeded         integer
     ,sideways_pass                   integer
     ,sideways_pass_succeeded         integer
     ,tackle                          integer
     ,tackle_succeeded                integer
     ,aerial_duel                     integer
     ,aerial_duel_succeeded           integer
     ,ground_duel                     integer
     ,ground_duel_succeeded           integer
     ,intercept                       integer
     ,clearance                       integer
     ,"recovery"                      integer
     ,intervention                    integer
     ,take_on                         integer
     ,take_on_succeeded               integer
     ,mistake                         integer
     ,block                           integer
     ,foul                            integer
     ,foul_won                        integer
     ,offside                         integer
     ,yellow_card                     integer
     ,red_card                        integer
     ,own_goal                        integer
     ,goal_conceded                   integer
     ,goal_kick                       integer
     ,goal_kick_succeeded             integer
     ,aerial_clearance                integer
     ,aerial_clearance_succeeded      integer
     ,save_by_catching                integer
     ,save_by_punching                integer
     ,rating                          DOUBLE PRECISION
     ,play_time                       integer
     ,season_group_name               varchar(10)

 );
CREATE TABLE "matches_sequenfce_data" (
       team_id integer
     ,event_period                    varchar(20)
     ,start_time                      integer
     ,end_time                        integer
     ,event_ids                       text
     ,season_group_name               varchar(10)

 );
CREATE TABLE "matches_team_stats" (
       team_id integer
     ,match_id                        integer
     ,goal                            integer
     ,total_shot                      integer
     ,shot_on_target                  integer
     ,shot_off_target                 integer
     ,shot_blocked                    integer
     ,shot_in_PA                      integer
     ,shot_outside_of_PA              integer
     ,free_kick                       integer
     ,corner_kick                     integer
     ,throw_in                        integer
     ,pass                            integer
     ,pass_succeeded                  integer
     ,assist                          integer
     ,key_pass                        integer
     ,control_under_pressure          integer
     ,"CROSS"                         integer
     ,cross_succeeded                 integer
     ,final_third_area_pass           integer
     ,final_third_area_pass_succeeded integer
     ,middle_area_pass                integer
     ,middle_area_pass_succeeded      integer
     ,defensive_area_pass             integer
     ,defensive_area_pass_succeeded   integer
     ,short_pass                      integer
     ,short_pass_succeeded            integer
     ,medium_range_pass               integer
     ,medium_range_pass_succeeded     integer
     ,long_pass                       integer
     ,long_pass_succeeded             integer
     ,forward_pass                    integer
     ,forward_pass_succeeded          integer
     ,backward_pass                   integer
     ,backward_pass_succeeded         integer
     ,sideways_pass                   integer
     ,sideways_pass_succeeded         integer
     ,tackle                          integer
     ,tackle_succeeded                integer
     ,aerial_duel                     integer
     ,aerial_duel_succeeded           integer
     ,ground_duel                     integer
     ,ground_duel_succeeded           integer
     ,intercept                       integer
     ,clearance                       integer
     ,"recovery"                      integer
     ,intervention                    integer
     ,take_on                         integer
     ,take_on_succeeded               integer
     ,mistake                         integer
     ,block                           integer
     ,foul                            integer
     ,foul_won                        integer
     ,offside                         integer
     ,yellow_card                     integer
     ,red_card                        integer
     ,own_goal                        integer
     ,goal_conceded                   integer
     ,goal_kick                       integer
     ,goal_kick_succeeded             integer
     ,aerial_clearance                integer
     ,aerial_clearance_succeeded      integer
     ,save_by_catching                integer
     ,save_by_punching                integer
     ,possession                      DOUBLE PRECISION
     ,season_group_name               varchar(10)

 );
CREATE TABLE "players" (
       id integer
     ,player_name                     varcahr(50)
     ,player_last_name                varchar(10)
     ,back_number                     varchar(5)
     ,player_role                     varchar(20)
     ,main_position                   varchar(5)
     ,team_id                         integer
     ,match_id                        integer
     ,season_group_name               varchar(10)
     ,regdate                         date

 );
CREATE TABLE "seasons" (
       id integer
     ,name                            varchar(10)
     ,season_group_name               varchar(10)
     ,league_id                       integer
     ,team_ids                        text

 );
CREATE TABLE "teams" (
       id integer
     ,name                            varchar(100)
     ,country_cd                      varcahr(5)
     ,player_ids                      text
     ,match_id                        integer
     ,season_group_name               varchar(10)
     ,regdate                         date

 );
COMMENT ON TABLE  "leagues" IS ' 리그 정보를 반환';
COMMENT ON COLUMN "leagues".id IS '리그의 고유 ID';
COMMENT ON COLUMN "leagues".name IS '리그 명칭';
COMMENT ON COLUMN "leagues".iso_country_code IS '리그가 소속된 국가의 2자리 ISO 국가코드';
COMMENT ON COLUMN "leagues".age_limit IS '리그의 연령대 정보 (예: "ADULT", "U23")';
COMMENT ON COLUMN "leagues".division IS '0: 토너먼트 컵대회, 1이상부터 1부리그, 2부리그 등등';
COMMENT ON COLUMN "leagues".season_ids IS '해당 리그에 포함되는 시즌 ID 목록';
COMMENT ON COLUMN "leagues".regdate IS '데이터 적재 일자';
COMMENT ON TABLE  "matches" IS '경기 정보를 반환';
COMMENT ON COLUMN "matches".id IS '경기의 고유 ID';
COMMENT ON COLUMN "matches".start_time IS '경기의 로컬 시간대 날짜 및 시간 (ISO 8601 형식)';
COMMENT ON COLUMN "matches".round_id IS '해당 경기 라운드의 고유 ID';
COMMENT ON COLUMN "matches".round_name IS '해당 경기 라운드 명칭 (예: "Round 1")';
COMMENT ON COLUMN "matches".season_id IS '해당 경기 시즌의 고유 ID';
COMMENT ON COLUMN "matches".season_name IS '해당 경기 시즌의 명칭 (예: "2021")';
COMMENT ON COLUMN "matches".season_group_name IS '해당 경기 시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON COLUMN "matches".league_id IS '해당 경기 시즌의 리그 ID';
COMMENT ON COLUMN "matches".home_team_id IS '홈팀의 고유 ID';
COMMENT ON COLUMN "matches".home_team_name IS '홈팀 명칭';
COMMENT ON COLUMN "matches".home_team_country_cd IS '홈팀 국가 코드';
COMMENT ON COLUMN "matches".away_team_id IS '원정팀의 고유 ID';
COMMENT ON COLUMN "matches".away_team_name IS '원정팀 명칭';
COMMENT ON COLUMN "matches".away_team_country_cd IS '원정팀 국가 코드';
COMMENT ON COLUMN "matches".full_time IS '경기의 정규 시간 (분 단위; 예: 90)';
COMMENT ON COLUMN "matches".half_time_duration IS '경기의 전후반 시간 (분 단위; 예: 45)';
COMMENT ON COLUMN "matches".extra_full_time IS '경기의 연장전 시간 (분 단위; 예: 30) (연장전이 없는 경우 null)';
COMMENT ON COLUMN "matches".detail_result_home_score IS '홈팀의 총 득점';
COMMENT ON COLUMN "matches".detail_result_away_score IS '원정팀의 총 득점';
COMMENT ON COLUMN "matches".extra_result_home_score IS ' 처리된 경우: 홈/원정팀의 몰수패 처리 결과 (일반적으로 승리한 팀의 3:0 승리로 처리됨)- 승부차기, 몰수패 둘 다 아닌 경우 nul';
COMMENT ON COLUMN "matches".extra_result_away_score IS ' 처리된 경우: 홈/원정팀의 몰수패 처리 결과 (일반적으로 승리한 팀의 3:0 승리로 처리됨)- 승부차기, 몰수패 둘 다 아닌 경우 nul';
COMMENT ON COLUMN "matches".extra_result_type IS '연장전 타입 ';
COMMENT ON COLUMN "matches".venue_id IS '경기장의 고유 ID';
COMMENT ON COLUMN "matches".venue_ground IS '경기장 명칭';
COMMENT ON COLUMN "matches".venue_ground_width IS '경기장 사이드 라인 길이 (미터 단위)';
COMMENT ON COLUMN "matches".venue_ground_height IS '경기장 골 라인 길이 (미터 단위)';
COMMENT ON COLUMN "matches".is_analysis_finished IS '경기 분석이 끝난 경우 true. 이 필드가 false일 경우 해당 경기의 이벤트 데이터, 집계 데이터, 시퀀스 데이터 엔드포인트를 사용할 수 없음 * 예외: 경기 라이브 분석이 진행 중인 경우 분석중이어도 true를 반환';
COMMENT ON COLUMN "matches".live_analysing IS '경기 라이브 분석이 진행 중인 경우 true';
COMMENT ON COLUMN "matches".regdate IS '데이터 적재 일자';
COMMENT ON TABLE  "matches_event_data" IS '경기 도중 발생한 모든 개별 이벤트 데이터';
COMMENT ON COLUMN "matches_event_data".event_id IS '이벤트의 고유 ID';
COMMENT ON COLUMN "matches_event_data".event_period IS '이벤트가 입력된 시점의 전후반 정보 (또는 연장 전후반 정보)*"FIRST_HALF", "SECOND_HALF", "EXTRA_FIRST_HALF", "EXTRA_SECOND_HALF"';
COMMENT ON COLUMN "matches_event_data".event_time IS '이벤트가 입력된 시점의 경기 시간 (밀리세컨드 단위)*예: 90분 정규시간 경기- 전반 킥오프 시점: 0- 후반 킥오프 시점: 2700000- 전반 추가시간의 경우 2700000보다 값이 클 수 있음. event_period와 같이 사용해야 전반 추가시간인지 후반 정규시간인지 구분 가능';
COMMENT ON COLUMN "matches_event_data".match_id IS '이벤트가 포함된 경기의 ID';
COMMENT ON COLUMN "matches_event_data".team_id IS '이벤트를 발생시킨 선수의 팀 ID';
COMMENT ON COLUMN "matches_event_data".player_id IS '이벤트를 발생시킨 선수의 ID';
COMMENT ON COLUMN "matches_event_data".x IS '이벤트가 입력된 경기장 위 x좌표 위치';
COMMENT ON COLUMN "matches_event_data".y IS '이벤트가 입력된 경기장 위 y좌표 위치';
COMMENT ON COLUMN "matches_event_data".event_type IS '이벤트 타입 (예: "Duel")';
COMMENT ON COLUMN "matches_event_data".sub_event_type IS '이벤트의 하위 타입 (하위 타입이 존재하는 경우; 예: "Aerial")';
COMMENT ON COLUMN "matches_event_data".outcome IS '이벤트의 결과 타입 (결과 타입이 존재하는 경우) *"Successful", "Unsuccessful"';
COMMENT ON COLUMN "matches_event_data"."CROSS" IS '(패스 이벤트에만 해당) 해당 패스 이벤트가 크로스인 경우 true';
COMMENT ON COLUMN "matches_event_data".key_pass IS '(패스 이벤트에만 해당) 해당 패스 이벤트가 키패스인 경우 true';
COMMENT ON COLUMN "matches_event_data".assist IS '(패스 이벤트에만 해당) 해당 패스 이벤트가 어시스트인 경우 true';
COMMENT ON COLUMN "matches_event_data".body_part IS '(슈팅 이벤트에만 해당) 슈팅한 선수가 사용한 신체 부위 *"Left Foot", "Right Foot", "Header", "Other"';
COMMENT ON COLUMN "matches_event_data".relative_event_id IS '해당 이벤트와 연결되는 relative_event';
COMMENT ON COLUMN "matches_event_data".relative_event_time IS '해당 이벤트와 연결되는 이벤트 시간';
COMMENT ON COLUMN "matches_event_data".re_player_id IS '해당 이벤트와 연결되는  선수';
COMMENT ON COLUMN "matches_event_data".re_y IS '이벤트가 입력된 경기장 위 y좌표 위치';
COMMENT ON COLUMN "matches_event_data".re_x IS '이벤트가 입력된 경기장 위 x좌표 위치';
COMMENT ON COLUMN "matches_event_data".ball_position IS '슈팅 이벤트의 골대 위 y좌표 위치 (= 슈팅의 높이)';
COMMENT ON COLUMN "matches_event_data".xg IS '슈팅 이벤트의 기대득점(Expected Goal) 값 *기대득점 값을 사용하기 위해서는 “Advanced Stats” 권한이 있어야 합니다.';
COMMENT ON COLUMN "matches_event_data".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "matches_formation" IS '포메이션이 변경된 시점마다 선수들의 위치';
COMMENT ON COLUMN "matches_formation".id IS '고유 Id';
COMMENT ON COLUMN "matches_formation".team_id IS '포메이션 정보가 기록된 팀의 ID';
COMMENT ON COLUMN "matches_formation".event_period IS '포메이션 정보가 기록된 시점의 전후반 정보 (또는 연장 전후반 정보) *"FIRST_HALF", "SECOND_HALF", "EXTRA_FIRST_HALF", "EXTRA_SECOND_HALF"';
COMMENT ON COLUMN "matches_formation".changed_time IS '포메이션 정보가 기록된 시점의 경기 시간 (밀리세컨드 단위)*예: 90분 정규시간 경기- 전반 킥오프 시점: 0- 후반 킥오프 시점: 2700000- 전반 추가시간의 경우 2700000보다 값이 클 수 있음. event_period와 같이 사용해야 전반 추가시간인지 후반 정규시간인지 구분 가능';
COMMENT ON COLUMN "matches_formation".formation IS '포메이션 정보';
COMMENT ON COLUMN "matches_formation".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "matches_lineup" IS '경기를 치른 양 팀의 라인업 정보';
COMMENT ON COLUMN "matches_lineup".id IS '라인업 내 해당 선수의 고유 ID (선수 ID와 별개)';
COMMENT ON COLUMN "matches_lineup".player_id IS '선수의 고유 ID';
COMMENT ON COLUMN "matches_lineup".player_name IS '선수의 이름 (성 제외)';
COMMENT ON COLUMN "matches_lineup".player_last_name IS '선수의 성';
COMMENT ON COLUMN "matches_lineup".back_number IS '선수의 해당 경기에서의 등번호';
COMMENT ON COLUMN "matches_lineup".is_starting_lineup IS '선수가 선발 출전한 경우 true';
COMMENT ON COLUMN "matches_lineup".position_x IS '경기 시작 시점의 해당 선수의 경기장 위 x좌표 (교체 명단에 있었던 경우 null)';
COMMENT ON COLUMN "matches_lineup".position_y IS '경기 시작 시점의 해당 선수의 경기장 위 y좌표 (교체 명단에 있었던 경우 null)';
COMMENT ON COLUMN "matches_lineup".position_name IS '경기 시작 시점의 해당 선수의 포지션 (교체 명단에 있었던 경우 null) *"CF", "LF", "RF", "CAM", "LW", "RW", "CM", "LM", "RM", "CDM", "LWB", "RWB", "CB", "LB", "RB", "GK"';
COMMENT ON COLUMN "matches_lineup".team_id IS '선수가 소속된 팀의 ID';
COMMENT ON COLUMN "matches_lineup".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "matches_player_stats" IS '경기의 선수 단위 집계 데이터';
COMMENT ON COLUMN "matches_player_stats".team_id IS '팀 교유 id';
COMMENT ON COLUMN "matches_player_stats".player_id IS '선수 교유 id';
COMMENT ON COLUMN "matches_player_stats".match_id IS '이벤트가 포함된 경기의 ID';
COMMENT ON COLUMN "matches_player_stats".goal IS '골+상대팀 자책골';
COMMENT ON COLUMN "matches_player_stats".total_shot IS '모든 슈팅(골 + 유효슈팅+ 벗어난 슈팅+ 블락된 슈팅+슛미스)';
COMMENT ON COLUMN "matches_player_stats".shot_on_target IS '골 + 유효슈팅';
COMMENT ON COLUMN "matches_player_stats".shot_off_target IS '벗어난 슈팅 + 슛미스';
COMMENT ON COLUMN "matches_player_stats".shot_blocked IS '블락된 슈팅';
COMMENT ON COLUMN "matches_player_stats".shot_in_PA IS '패널티 에어리어 안에서 모든 슈팅';
COMMENT ON COLUMN "matches_player_stats".shot_outside_of_PA IS '패널티 에어리어 밖에서 모든 슈팅';
COMMENT ON COLUMN "matches_player_stats".free_kick IS '프리킥';
COMMENT ON COLUMN "matches_player_stats".corner_kick IS '코너킥';
COMMENT ON COLUMN "matches_player_stats".throw_in IS '스로인';
COMMENT ON COLUMN "matches_player_stats".pass IS '패스 성공 + 패스 실패';
COMMENT ON COLUMN "matches_player_stats".pass_succeeded IS '패스 성공';
COMMENT ON COLUMN "matches_player_stats".assist IS '"assist": true인 모든 패스 (= 도움)';
COMMENT ON COLUMN "matches_player_stats".key_pass IS '"key_pass": true인 모든 패스 (=키패스)';
COMMENT ON COLUMN "matches_player_stats".control_under_pressure IS '탈 압박';
COMMENT ON COLUMN "matches_player_stats"."CROSS" IS '"cross": true인 모든 패스 (=크로스)';
COMMENT ON COLUMN "matches_player_stats".cross_succeeded IS '"cross": true인 모든 패스 성공 (=크로스 성공)';
COMMENT ON COLUMN "matches_player_stats".final_third_area_pass IS '경기장을 삼등분 했을 때 상대팀 골대에 가까운 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_player_stats".final_third_area_pass_succeeded IS '경기장을 삼등분 했을 때 상대팀 골대에 가까운 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".middle_area_pass IS '경기장을 삼등분 했을 때 중간 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_player_stats".middle_area_pass_succeeded IS '경기장을 삼등분 했을 때 중간 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".defensive_area_pass IS '경기장을 삼등분 했을 때 우리팀 골대에 가까운 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_player_stats".defensive_area_pass_succeeded IS '경기장을 삼등분 했을 때 우리팀 골대에 가까운 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".short_pass IS '거리가 15미터 미만인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".short_pass_succeeded IS '거리가 15미터 미만인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".medium_range_pass IS '거리가 15미터 이상, 30미터 미만인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".medium_range_pass_succeeded IS '거리가 15미터 이상, 30미터 미만인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".long_pass IS '거리가 30미터 이상인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".long_pass_succeeded IS '거리가 30미터 이상인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".forward_pass IS '방향이 앞쪽으로(상대팀 골대 방향) 60도 이내인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".forward_pass_succeeded IS '방향이 앞쪽으로(상대팀 골대 방향) 60도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".backward_pass IS '방향이 뒤쪽으로(우리팀 골대 방향) 60도 이내인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".backward_pass_succeeded IS '방향이 뒤쪽으로(우리팀 골대 방향) 60도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".sideways_pass IS '방향이 양 옆으로 120도 이내인 모든 패스';
COMMENT ON COLUMN "matches_player_stats".sideways_pass_succeeded IS '방향이 양 옆으로 120도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_player_stats".tackle IS '태클 성공 + 태클 실패';
COMMENT ON COLUMN "matches_player_stats".tackle_succeeded IS '태클 성공';
COMMENT ON COLUMN "matches_player_stats".aerial_duel IS '공중볼 경합 성공 + 공중볼 경합 실패';
COMMENT ON COLUMN "matches_player_stats".aerial_duel_succeeded IS '공중볼 경합 성공';
COMMENT ON COLUMN "matches_player_stats".ground_duel IS '그라운드 경합 성공 + 그라운드 경합 실패';
COMMENT ON COLUMN "matches_player_stats".ground_duel_succeeded IS '그라운드 경합 성공';
COMMENT ON COLUMN "matches_player_stats".intercept IS '인터셉트';
COMMENT ON COLUMN "matches_player_stats".clearance IS '클리어';
COMMENT ON COLUMN "matches_player_stats"."recovery" IS '획득';
COMMENT ON COLUMN "matches_player_stats".intervention IS '차단';
COMMENT ON COLUMN "matches_player_stats".take_on IS '돌파 성공 + 돌파 실패';
COMMENT ON COLUMN "matches_player_stats".take_on_succeeded IS '돌파 성공';
COMMENT ON COLUMN "matches_player_stats".mistake IS '미스';
COMMENT ON COLUMN "matches_player_stats".block IS '블락';
COMMENT ON COLUMN "matches_player_stats".foul IS '파울 + 핸드볼 파울 + 스로인 파울';
COMMENT ON COLUMN "matches_player_stats".foul_won IS '피파울';
COMMENT ON COLUMN "matches_player_stats".offside IS '오프사이드';
COMMENT ON COLUMN "matches_player_stats".yellow_card IS '경고';
COMMENT ON COLUMN "matches_player_stats".red_card IS '퇴장';
COMMENT ON COLUMN "matches_player_stats".own_goal IS '자책골';
COMMENT ON COLUMN "matches_player_stats".goal_conceded IS '실점';
COMMENT ON COLUMN "matches_player_stats".goal_kick IS '골킥';
COMMENT ON COLUMN "matches_player_stats".goal_kick_succeeded IS '골킥 중 패스 성공과 같이 기록된 경우 (=골킥 성공)';
COMMENT ON COLUMN "matches_player_stats".aerial_clearance IS '공중볼 처리 성공 + 공중볼 처리 실패';
COMMENT ON COLUMN "matches_player_stats".aerial_clearance_succeeded IS '공중볼 처리 성공';
COMMENT ON COLUMN "matches_player_stats".save_by_catching IS '캐칭 세이브';
COMMENT ON COLUMN "matches_player_stats".save_by_punching IS '펀칭 세이브';
COMMENT ON COLUMN "matches_player_stats".rating IS '각 선수의 Bepro 경기 평점 (10점 만점)';
COMMENT ON COLUMN "matches_player_stats".play_time IS '각 선수의 경기 출전 시간 (밀리세컨드 단위)';
COMMENT ON COLUMN "matches_player_stats".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "matches_sequenfce_data" IS '경기 도중 발생한 시퀀스';
COMMENT ON COLUMN "matches_sequenfce_data".team_id IS '팀 고유 ID';
COMMENT ON COLUMN "matches_sequenfce_data".event_period IS '이벤트가 입력된 시점의 전후반 정보';
COMMENT ON COLUMN "matches_sequenfce_data".start_time IS '해당 이벤트들의 발생 시간 ';
COMMENT ON COLUMN "matches_sequenfce_data".end_time IS '해당 이벤트들의 종류 시간';
COMMENT ON COLUMN "matches_sequenfce_data".event_ids IS '발생 이벤트 고유 id';
COMMENT ON COLUMN "matches_sequenfce_data".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "matches_team_stats" IS '팀 단위 집계 데이터';
COMMENT ON COLUMN "matches_team_stats".team_id IS '팀 고유 ID';
COMMENT ON COLUMN "matches_team_stats".match_id IS '이벤트가 포함된 경기의 ID';
COMMENT ON COLUMN "matches_team_stats".goal IS '골+상대팀 자책골';
COMMENT ON COLUMN "matches_team_stats".total_shot IS '모든 슈팅(골 + 유효슈팅+ 벗어난 슈팅+ 블락된 슈팅+슛미스)';
COMMENT ON COLUMN "matches_team_stats".shot_on_target IS '골 + 유효슈팅';
COMMENT ON COLUMN "matches_team_stats".shot_off_target IS '벗어난 슈팅 + 슛미스';
COMMENT ON COLUMN "matches_team_stats".shot_blocked IS '블락된 슈팅';
COMMENT ON COLUMN "matches_team_stats".shot_in_PA IS '패널티 에어리어 안에서 모든 슈팅';
COMMENT ON COLUMN "matches_team_stats".shot_outside_of_PA IS '패널티 에어리어 밖에서 모든 슈팅';
COMMENT ON COLUMN "matches_team_stats".free_kick IS '프리킥';
COMMENT ON COLUMN "matches_team_stats".corner_kick IS '코너킥';
COMMENT ON COLUMN "matches_team_stats".throw_in IS '스로인';
COMMENT ON COLUMN "matches_team_stats".pass IS '패스 성공 + 패스 실패';
COMMENT ON COLUMN "matches_team_stats".pass_succeeded IS '패스 성공';
COMMENT ON COLUMN "matches_team_stats".assist IS '"assist": true인 모든 패스 (= 도움)';
COMMENT ON COLUMN "matches_team_stats".key_pass IS '"key_pass": true인 모든 패스 (=키패스)';
COMMENT ON COLUMN "matches_team_stats".control_under_pressure IS '탈 압박';
COMMENT ON COLUMN "matches_team_stats"."CROSS" IS '"cross": true인 모든 패스 (=크로스)';
COMMENT ON COLUMN "matches_team_stats".cross_succeeded IS '"cross": true인 모든 패스 성공 (=크로스 성공)';
COMMENT ON COLUMN "matches_team_stats".final_third_area_pass IS '경기장을 삼등분 했을 때 상대팀 골대에 가까운 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_team_stats".final_third_area_pass_succeeded IS '경기장을 삼등분 했을 때 상대팀 골대에 가까운 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".middle_area_pass IS '경기장을 삼등분 했을 때 중간 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_team_stats".middle_area_pass_succeeded IS '경기장을 삼등분 했을 때 중간 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".defensive_area_pass IS '경기장을 삼등분 했을 때 우리팀 골대에 가까운 지역에서 시작한 모든 패스';
COMMENT ON COLUMN "matches_team_stats".defensive_area_pass_succeeded IS '경기장을 삼등분 했을 때 우리팀 골대에 가까운 지역에서 시작한 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".short_pass IS '거리가 15미터 미만인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".short_pass_succeeded IS '거리가 15미터 미만인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".medium_range_pass IS '거리가 15미터 이상, 30미터 미만인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".medium_range_pass_succeeded IS '거리가 15미터 이상, 30미터 미만인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".long_pass IS '거리가 30미터 이상인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".long_pass_succeeded IS '거리가 30미터 이상인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".forward_pass IS '방향이 앞쪽으로(상대팀 골대 방향) 60도 이내인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".forward_pass_succeeded IS '방향이 앞쪽으로(상대팀 골대 방향) 60도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".backward_pass IS '방향이 뒤쪽으로(우리팀 골대 방향) 60도 이내인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".backward_pass_succeeded IS '방향이 뒤쪽으로(우리팀 골대 방향) 60도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".sideways_pass IS '방향이 양 옆으로 120도 이내인 모든 패스';
COMMENT ON COLUMN "matches_team_stats".sideways_pass_succeeded IS '방향이 양 옆으로 120도 이내인 모든 패스 성공';
COMMENT ON COLUMN "matches_team_stats".tackle IS '태클 성공 + 태클 실패';
COMMENT ON COLUMN "matches_team_stats".tackle_succeeded IS '태클 성공';
COMMENT ON COLUMN "matches_team_stats".aerial_duel IS '공중볼 경합 성공 + 공중볼 경합 실패';
COMMENT ON COLUMN "matches_team_stats".aerial_duel_succeeded IS '공중볼 경합 성공';
COMMENT ON COLUMN "matches_team_stats".ground_duel IS '그라운드 경합 성공 + 그라운드 경합 실패';
COMMENT ON COLUMN "matches_team_stats".ground_duel_succeeded IS '그라운드 경합 성공';
COMMENT ON COLUMN "matches_team_stats".intercept IS '인터셉트';
COMMENT ON COLUMN "matches_team_stats".clearance IS '클리어';
COMMENT ON COLUMN "matches_team_stats"."recovery" IS '획득';
COMMENT ON COLUMN "matches_team_stats".intervention IS '차단';
COMMENT ON COLUMN "matches_team_stats".take_on IS '돌파 성공 + 돌파 실패';
COMMENT ON COLUMN "matches_team_stats".take_on_succeeded IS '돌파 성공';
COMMENT ON COLUMN "matches_team_stats".mistake IS '미스';
COMMENT ON COLUMN "matches_team_stats".block IS '블락';
COMMENT ON COLUMN "matches_team_stats".foul IS '파울 + 핸드볼 파울 + 스로인 파울';
COMMENT ON COLUMN "matches_team_stats".foul_won IS '피파울';
COMMENT ON COLUMN "matches_team_stats".offside IS '오프사이드';
COMMENT ON COLUMN "matches_team_stats".yellow_card IS '경고';
COMMENT ON COLUMN "matches_team_stats".red_card IS '퇴장';
COMMENT ON COLUMN "matches_team_stats".own_goal IS '자책골';
COMMENT ON COLUMN "matches_team_stats".goal_conceded IS '실점';
COMMENT ON COLUMN "matches_team_stats".goal_kick IS '골킥';
COMMENT ON COLUMN "matches_team_stats".goal_kick_succeeded IS '골킥 중 패스 성공과 같이 기록된 경우 (=골킥 성공)';
COMMENT ON COLUMN "matches_team_stats".aerial_clearance IS '공중볼 처리 성공 + 공중볼 처리 실패';
COMMENT ON COLUMN "matches_team_stats".aerial_clearance_succeeded IS '공중볼 처리 성공';
COMMENT ON COLUMN "matches_team_stats".save_by_catching IS '캐칭 세이브';
COMMENT ON COLUMN "matches_team_stats".save_by_punching IS '펀칭 세이브';
COMMENT ON COLUMN "matches_team_stats".possession IS '경기 중 양 팀의 점유율 수치 (퍼센트)';
COMMENT ON COLUMN "matches_team_stats".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON TABLE  "players" IS '선수 정보를 반환';
COMMENT ON COLUMN "players".id IS '선수의 고유 ID';
COMMENT ON COLUMN "players".player_name IS '선수의 이름 (성 제외)';
COMMENT ON COLUMN "players".player_last_name IS '선수의 성';
COMMENT ON COLUMN "players".back_number IS '선수의 등번호';
COMMENT ON COLUMN "players".player_role IS '선수의 역할. 선수일 경우 null이고, 코치나 스태프일 경우 "team.staff"값이 부여됨';
COMMENT ON COLUMN "players".main_position IS '선수의 대표 포지션 (예: GK)';
COMMENT ON COLUMN "players".team_id IS '선수가 소속된 팀의 ID';
COMMENT ON COLUMN "players".match_id IS '경기의 고유 ID';
COMMENT ON COLUMN "players".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON COLUMN "players".regdate IS '데이터 적재 일자';
COMMENT ON TABLE  "seasons" IS '시즌 정보를 반환';
COMMENT ON COLUMN "seasons".id IS '시즌의 고유 ID';
COMMENT ON COLUMN "seasons".name IS '시즌 명칭 (예: "2021")';
COMMENT ON COLUMN "seasons".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON COLUMN "seasons".league_id IS '시즌이 포함되는 리그 ID';
COMMENT ON COLUMN "seasons".team_ids IS '해당 시즌에 포함되는 팀 ID 목록';
COMMENT ON TABLE  "teams" IS '팀 정보를 반환';
COMMENT ON COLUMN "teams".id IS '팀의 고유 ID';
COMMENT ON COLUMN "teams".name IS '팀 명칭';
COMMENT ON COLUMN "teams".country_cd IS '팀이 소속된 국가의 2자리 ISO 국가코드';
COMMENT ON COLUMN "teams".player_ids IS '해당 팀에 소속된 선수 ID 목록';
COMMENT ON COLUMN "teams".match_id IS '경기의 고유 ID';
COMMENT ON COLUMN "teams".season_group_name IS '시즌 그룹 명칭 (= 시즌의 연도; 예: "2021")';
COMMENT ON COLUMN "teams".regdate IS '데이터 적재 일자';
ALTER TABLE "leagues" ADD CONSTRAINT "pk_leagues" PRIMARY KEY (id);
ALTER TABLE "matches" ADD CONSTRAINT "pk_matches" PRIMARY KEY (id);
ALTER TABLE "matches_event_data" ADD CONSTRAINT "pk_matches_event_data" PRIMARY KEY (event_id);
ALTER TABLE "matches_formation" ADD CONSTRAINT "pk_matches_formation" PRIMARY KEY (id);
ALTER TABLE "matches_lineup" ADD CONSTRAINT "pk_matches_lineup" PRIMARY KEY (id);
ALTER TABLE "matches_player_stats" ADD CONSTRAINT "pk_matches_player_stats" PRIMARY KEY (team_id,player_id,match_id);
ALTER TABLE "matches_sequenfce_data" ADD CONSTRAINT "pk_matches_sequenfce_data" PRIMARY KEY (team_id);
ALTER TABLE "matches_team_stats" ADD CONSTRAINT "pk_matches_team_stats" PRIMARY KEY (team_id,match_id);
ALTER TABLE "players" ADD CONSTRAINT "pk_players" PRIMARY KEY (id);
ALTER TABLE "seasons" ADD CONSTRAINT "pk_seasons" PRIMARY KEY (id);
ALTER TABLE "teams" ADD CONSTRAINT "pk_teams" PRIMARY KEY (id);
