drop view 리그성장시계열;

create view 리그성장시계열
as
select b.stdr_year_nm           as 연도
      , c.sexdstn_nm             as 성별
      , a.unity_cmpet_knd_cde    as 통합대회종류코드
      , d.unity_cmpet_knd_nm     as 통합대회종류명
      , a.es_co                  as 초등수
      , a.ms_co                  as 중등수
      , a.hs_co                  as 고등수
      , a.uv_co                  as 대학수
      , a.k_league_co                 as K리그수
      , a.k3_league_co                  as K3리그수
      , a.k5_league_co                  as K5리그수
      , a.wk_league_co                  as WK리그수
      , a.tot_player_co                 as 선수수
   from mf_league_growth_tmsres a
	    left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_sexdstn c 
	 ON a.player_sexdstn_cde = c.sexdstn_cde 	    left outer join 
	    wd_unity_cmpet_knd d 
	 ON a.unity_cmpet_knd_cde = d.unity_cmpet_knd_cde 
  ;
  
 
 comment on view kfadm.리그성장시계열 is '리그성장시계열';
 comment on column kfadm.리그성장시계열.연도 is '연도';            
 comment on column kfadm.리그성장시계열.성별 is '성별';            
 comment on column kfadm.리그성장시계열.통합대회종류코드 is '통합대회종류코드';
 comment on column kfadm.리그성장시계열.통합대회종류명 is '통합대회종류명';  
 comment on column kfadm.리그성장시계열.초등수 is '초등수';          
 comment on column kfadm.리그성장시계열.중등수 is '중등수';          
 comment on column kfadm.리그성장시계열.고등수 is '고등수';          
 comment on column kfadm.리그성장시계열.대학수 is '대학수';          
 comment on column kfadm.리그성장시계열.K리그수 is 'K리그수';        
 comment on column kfadm.리그성장시계열.K3리그수 is 'K3리그수';      
 comment on column kfadm.리그성장시계열.K5리그수 is 'K5리그수';      
 comment on column kfadm.리그성장시계열.WK리그수 is 'WK리그수';      
 comment on column kfadm.리그성장시계열.선수수 is '선수수';          
                                                        