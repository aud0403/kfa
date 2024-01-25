drop view 선수일반현황;



create view 선수일반현황
as 
select b.stdr_year_nm                                 as     연도
      , a.nation_cde                                  as     국가코드
      , c.nation_nm                                   as     국가명
      , a.player_id                                   as     선수아이디
      , d.player_nm                                   as     선수명
      , d.brthdy                                      as     선수생년월일
      , d.hmnm_se_nm                                  as     선수동명구분명
      , e.sexdstn_nm                                  as     성별
      , f.agrde_nm                                    as     연령대
      , a.psitn_team_id                               as     소속팀아이디
      , g.team_nm                                     as     소속팀명
      , a.psitn_team_grad_cde                         as     소속팀등급코드 
      , k.team_grad_nm                                as     소속팀등급명
      , upper(trim(a.player_postn_cde))               as     포지션코드
      , case when h.player_postn_nm is null 
             then '입력형식오류' 
             else h.player_postn_nm  END              as     포지션명
      , a.psitn_team_area_cde                         as     소속팀지역코드
      , i.dstrct_nm                                   as     소속팀지역명
      , a.psitn_team_class_cde                        as     소속팀클래스코드
      , j.team_class_nm                               as     소속팀클래스명
      , a.avrg_playng_time                            as     평균출전시간
      , a.game_co                                     as     경기수
   from mf_player_gnrl_sttus a                        
	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_nation c 
	 ON a.nation_cde = c.nation_cde 	    left outer join 
	    wd_player d 
	 ON a.player_id = d.player_id 	    left outer join 
	    wd_sexdstn e 
	 ON a.player_sexdstn_cde = e.sexdstn_cde 	    left outer join 
	    wd_agrde f 
	 ON a.player_agrde_cde = f.agrde_cde 	    left outer join 
	    wd_team g 
	 ON a.psitn_team_id = g.team_id
	    left outer join 
	    wd_team_grad k 
	 on a.psitn_team_grad_cde = k.team_grad_cde 	    left outer join 
	    wd_player_postn h 
	 ON upper(trim(a.player_postn_cde)) = h.player_postn_cde 	    left outer join 
	    wd_dstrct i 
	 ON a.psitn_team_area_cde = i.dstrct_cde 	    left outer join 
	    wd_team_class j 
	 ON a.psitn_team_class_cde = j.team_class_cde 
  ;
  
 
 
comment on view kfadm.선수일반현황 is '선수일반현황';
comment on column kfadm.선수일반현황.연도 is '연도';
comment on column kfadm.선수일반현황.국가코드 is '국가코드';
comment on column kfadm.선수일반현황.국가명 is '국가명';
comment on column kfadm.선수일반현황.선수아이디 is '선수아이디';
comment on column kfadm.선수일반현황.선수명 is '선수명';
comment on column kfadm.선수일반현황.선수생년월일 is '선수생년월일';
comment on column kfadm.선수일반현황.선수동명구분명 is '선수동명구분명';
comment on column kfadm.선수일반현황.성별 is '성별';
comment on column kfadm.선수일반현황.연령대 is '연령대';
comment on column kfadm.선수일반현황.소속팀아이디 is '소속팀아이디';
comment on column kfadm.선수일반현황.소속팀명 is '소속팀명';
comment on column kfadm.선수일반현황.포지션코드 is '포지션코드';
comment on column kfadm.선수일반현황.포지션명 is '포지션명';
comment on column kfadm.선수일반현황.소속팀지역코드 is '소속팀지역코드';
comment on column kfadm.선수일반현황.소속팀지역명 is '소속팀지역명';
comment on column kfadm.선수일반현황.소속팀클래스코드 is '소속팀클래스코드';
comment on column kfadm.선수일반현황.소속팀클래스명 is '소속팀클래스명';
comment on column kfadm.선수일반현황.평균출전시간 is '평균출전시간';
comment on column kfadm.선수일반현황.경기수 is '경기수';
comment on column kfadm.선수일반현황.소속팀등급코드 is '소속팀등급코드';
comment on column kfadm.선수일반현황.소속팀등급명 is '소속팀등급명';
