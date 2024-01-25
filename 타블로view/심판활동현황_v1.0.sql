drop view  심판활동현황;


create view 심판활동현황
as
 select b.stdr_year_nm                   as 연도       
      , a.regist_asoc_cde                as 등록협회코드   
      , c.referee_regist_asoc_nm         as 등록협회명    
      , a.referee_wsp_cde                as 심판급수코드   
      , d.referee_wsp_nm                 as 심판급수명    
      , a.act_cde                        as 활동여부코드   
      , e.act_nm                         as 활동여부명    
      , a.referee_no                     as 심판번호     
      , f.referee_nm                     as 심판명      
      , f.brthdy                         as 심판생년월일   
      , f.hmnm_se_nm                     as 심판동명구분명  
      , g.sexdstn_nm                     as 성별       
      , a.referee_agrde_cde              as 연령대코드    
      , h.agrde_nm                       as 연령대      
      , a.league_cmpet_se_cde            as 리그대회구분코드 
      , i.league_cmpet_se_nm             as 리그대회구분명  
      , a.cmpet_knd_cde                  as 대회종류코드   
      , j.cmpet_knd_nm                   as 대회종류명    
      , a.cmpet_no                       as 대회번호     
      , k.cmpet_nm                       as 대회명      
      , a.game_no                        as 경기번호     
      , l.game_nm                        as 경기명      
      , a.referee_assr_at                as 심판평가관여부코드
      , m.at_nm                          as 심판평가관여부명 
      , a.fut_act_cde                    as 풋살활동여부코드 
      , n.act_nm                         as 풋살활동여부명  
      , a.referee_co                     as 심판수      
      , a.asign_co                       as 배정건수     
   from mf_referee_act_sttus a                       
        left outer join 
		wd_stdr_year b 
     ON a.stdr_year = b.stdr_year 		left outer join 
		wd_referee_regist_asoc c 
     ON a.regist_asoc_cde = c.referee_regist_asoc_cde 		left outer join 
		wd_referee_wsp d 
	 ON a.referee_wsp_cde = d.referee_wsp_cde 		left outer join 
		wd_act e 
	 ON a.act_cde = e.act_cde 		left outer join 
		wd_referee_no f 
	 ON a.referee_no = f.referee_no 		left outer join 
		wd_sexdstn g 
	 ON a.referee_sexdstn_cde = g.sexdstn_cde 		left outer join 
		wd_agrde h 
	 ON a.referee_agrde_cde = h.agrde_cde 		left outer join 
		wd_league_cmpet_se i 
	 ON a.league_cmpet_se_cde = i.league_cmpet_se_cde 		left outer join 
		wd_cmpet_knd j 
	 ON a.cmpet_knd_cde = j.cmpet_knd_cde 		left outer join 
		wd_cmpet k 
	 ON a.cmpet_no = k.cmpet_no 		left outer join 
		wd_game l 
	 ON a.game_no = l.game_no 		left outer join 
		wd_referee_assr m 
	 ON a.referee_assr_at = m.referee_assr_at 		left outer join 
		wd_act n 
	 ON a.fut_act_cde = n.act_cde 
	 ;
	
	
comment on view kfadm.심판활동현황 is '심판활동현황';
comment on column kfadm.심판활동현황.연도 IS '연도';
comment on column kfadm.심판활동현황.등록협회코드 IS '등록협회코드';
comment on column kfadm.심판활동현황.등록협회명 IS '등록협회명';
comment on column kfadm.심판활동현황.심판급수코드 IS '심판급수코드';
comment on column kfadm.심판활동현황.심판급수명 IS '심판급수명';
comment on column kfadm.심판활동현황.활동여부코드 IS '활동여부코드';
comment on column kfadm.심판활동현황.활동여부명 IS '활동여부명';
comment on column kfadm.심판활동현황.심판번호 IS '심판번호';
comment on column kfadm.심판활동현황.심판명 IS '심판명';
comment on column kfadm.심판활동현황.심판생년월일 IS '심판생년월일';
comment on column kfadm.심판활동현황.심판동명구분명 IS '심판동명구분명';
comment on column kfadm.심판활동현황.성별 IS '성별';
comment on column kfadm.심판활동현황.연령대코드 IS '연령대코드';
comment on column kfadm.심판활동현황.연령대 IS '연령대';
comment on column kfadm.심판활동현황.리그대회구분코드 IS '리그대회구분코드';
comment on column kfadm.심판활동현황.리그대회구분명 IS '리그대회구분명';
comment on column kfadm.심판활동현황.대회종류코드 IS '대회종류코드';
comment on column kfadm.심판활동현황.대회종류명 IS '대회종류명';
comment on column kfadm.심판활동현황.대회번호 IS '대회번호';
comment on column kfadm.심판활동현황.대회명 IS '대회명';
comment on column kfadm.심판활동현황.경기번호 IS '경기번호';
comment on column kfadm.심판활동현황.경기명 IS '경기명';
comment on column kfadm.심판활동현황.심판평가관여부코드 IS '심판평가관여부코드';
comment on column kfadm.심판활동현황.심판평가관여부명 IS '심판평가관여부명';
comment on column kfadm.심판활동현황.풋살활동여부코드 IS '풋살활동여부코드';
comment on column kfadm.심판활동현황.풋살활동여부명 IS '풋살활동여부명';
comment on column kfadm.심판활동현황.심판수 IS '심판수';
comment on column kfadm.심판활동현황.배정건수 IS '배정건수';
	
	
	
	 
	 