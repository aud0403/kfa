drop view 연도별출전비교현황;

create view  연도별출전비교현황
as                              
select b.stdr_year_nm           as    연도      
     , a.unity_cmpet_knd_cde    as    통합대회종류코드
     , c.unity_cmpet_knd_nm     as    통합대회종류명 
     , a.league_cmpet_se_cde    as    리그대회구분코드
     , d.league_cmpet_se_nm     as    리그대회구분명    
     , a.game_co                as    경기수     
     , a.prvyy_game_co          as    전년경기수
     , a.prvyy_provs_rate       as    전년대비비율
   from mf_year_playng_cmpr_sttus a           
        left outer join 
		wd_stdr_year b 
     ON a.stdr_year = b.stdr_year 		left outer join 
		wd_unity_cmpet_knd c 
	 ON a.unity_cmpet_knd_cde = c.unity_cmpet_knd_cde 		left outer join 
		wd_league_cmpet_addnl_se d 
	 ON a.league_cmpet_se_cde = d.league_cmpet_se_cde 
  ;
  
comment on view kfadm.연도별출전비교현황 is '연도별출전비교현황';
comment on column kfadm.연도별출전비교현황.연도 is '연도';
comment on column kfadm.연도별출전비교현황.통합대회종류코드 is '통합대회종류코드';
comment on column kfadm.연도별출전비교현황.통합대회종류명 is '통합대회종류명';
comment on column kfadm.연도별출전비교현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.연도별출전비교현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.연도별출전비교현황.경기수 is '경기수';
comment on column kfadm.연도별출전비교현황.전년경기수 is '전년경기수';
comment on column kfadm.연도별출전비교현황.전년대비비율 is '전년대비비율';