 drop view 포지션출전시간현황;
 
create view 포지션출전시간현황
as
select b.stdr_year_nm                as    연도       
      , a.unity_cmpet_knd_cde        as    통합대회종류코드 
      , c.unity_cmpet_knd_nm         as    통합대회종류명  
      , a.psitn_team_area_cde        as    소속팀지역코드  
      , d.dstrct_nm                  as    소속팀지역명   
      , a.player_postn_cde           as    포지션코드    
      , e.player_postn_nm            as    포지션명     
      , a.league_cmpet_se_cde        as    리그대회구분코드 
      , f.league_cmpet_se_nm         as    리그대회구분명  
      , a.game_co                    as    경기수      
      , a.tot_playng_time            as    출전시간
      , a.avrg_playng_time           as    평균출전시간
   from mf_postn_playng_time_sttus a                
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_unity_cmpet_knd c 
	 ON a.unity_cmpet_knd_cde = c.unity_cmpet_knd_cde 	    left outer join 
	    wd_dstrct d 
	 ON a.psitn_team_area_cde = d.dstrct_cde 	    left outer join 
	    wd_player_postn e 
	 ON a.player_postn_cde = e.player_postn_cde 	    left outer join 
	    wd_league_cmpet_addnl_se f 
	 ON a.league_cmpet_se_cde = f.league_cmpet_se_cde 

;


comment on view kfadm.포지션출전시간현황 is '포지션출전시간현황';
comment on column kfadm.포지션출전시간현황.연도 IS '연도';
comment on column kfadm.포지션출전시간현황.통합대회종류코드 IS '통합대회종류코드';
comment on column kfadm.포지션출전시간현황.통합대회종류명 IS '통합대회종류명';
comment on column kfadm.포지션출전시간현황.소속팀지역코드 IS '소속팀지역코드';
comment on column kfadm.포지션출전시간현황.소속팀지역명 IS '소속팀지역명';
comment on column kfadm.포지션출전시간현황.포지션코드 IS '포지션코드';
comment on column kfadm.포지션출전시간현황.포지션명 IS '포지션명';
comment on column kfadm.포지션출전시간현황.리그대회구분코드 IS '리그대회구분코드';
comment on column kfadm.포지션출전시간현황.리그대회구분명 IS '리그대회구분명';
comment on column kfadm.포지션출전시간현황.경기수 IS '경기수';
comment on column kfadm.포지션출전시간현황.출전시간 IS '출전시간(분)';
comment on column kfadm.포지션출전시간현황.평균출전시간 IS '평균출전시간(분)';

