drop view 선수출전현황;

create view 선수출전현황
as
select b.stdr_year_nm          as   연도
      , a.player_id             as   선수아이디
      , c.player_nm             as   선수명
      , c.brthdy                as   선수생년월일
      , c.hmnm_se_nm            as   선수동명구분명
      , a.player_postn_cde      as   포지션코드
      , d.player_postn_nm       as   포지션명
      , e.agrde_nm              as   나이
      , a.league_cmpet_se_cde   as   리그대회구분코드
      , f.league_cmpet_se_nm    as   리그대회구분명
      , a.unity_cmpet_knd_cde   as   통합대회종류코드
      , g.unity_cmpet_knd_nm    as   통합대회종류명
      , a.cmpet_knd_cde         as   대회종류코드
      , h.cmpet_knd_nm          as   대회종류명
      , a.psitn_team_area_cde   as   권역코드
      , i.dstrct_nm             as   권역명
      , a.game_co               as   경기수
      , a.strtg_co              as   선발수
      , a.sbstt_co              as   교체수
      , a.playng_time           as   출전시간
   from mf_player_playng_sttus a
  	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_player c 
	 ON a.player_id = c.player_id 	    left outer join 
	    wd_player_postn d 
	 ON a.player_postn_cde = d.player_postn_cde 	    left outer join 
	    wd_agrde e 
	 ON a.player_agrde_cde = e.agrde_cde 	    left outer join 
	    wd_league_cmpet_se f 
	 ON a.league_cmpet_se_cde = f.league_cmpet_se_cde 	    left outer join 
	    wd_unity_cmpet_knd g 
	 ON a.unity_cmpet_knd_cde = g.unity_cmpet_knd_cde 	    left outer join 
	    wd_cmpet_knd h 
	 ON a.cmpet_knd_cde = h.cmpet_knd_cde 	    left outer join 
	    wd_dstrct i 
	 ON a.psitn_team_area_cde = i.dstrct_cde 
;

comment on view kfadm.선수출전현황 is '선수출전현황';
comment on column kfadm.선수출전현황.연도 is '연도';
comment on column kfadm.선수출전현황.선수아이디 is '선수아이디';
comment on column kfadm.선수출전현황.선수명 is '선수명';
comment on column kfadm.선수출전현황.선수생년월일 is '선수생년월일';
comment on column kfadm.선수출전현황.선수동명구분명 is '선수동명구분명';
comment on column kfadm.선수출전현황.포지션코드 is '포지션코드';
comment on column kfadm.선수출전현황.포지션명 is '포지션명';
comment on column kfadm.선수출전현황.나이 is '나이';
comment on column kfadm.선수출전현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.선수출전현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.선수출전현황.통합대회종류코드 is '통합대회종류코드';
comment on column kfadm.선수출전현황.통합대회종류명 is '통합대회종류명';
comment on column kfadm.선수출전현황.대회종류코드 is '대회종류코드';
comment on column kfadm.선수출전현황.대회종류명 is '대회종류명';
comment on column kfadm.선수출전현황.권역코드 is '권역코드';
comment on column kfadm.선수출전현황.권역명 is '권역명';
comment on column kfadm.선수출전현황.경기수 is '경기수';
comment on column kfadm.선수출전현황.선발수 is '선발수';
comment on column kfadm.선수출전현황.교체수 is '교체수';
comment on column kfadm.선수출전현황.출전시간 is '출전시간';
