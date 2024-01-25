drop view 심판평점현황;

create view 심판평점현황
as 
select  b.stdr_year_nm                   as    연도      
      , a.referee_no                    as    심판번호    
      , c.referee_nm                    as    심판명     
      , c.hmnm_se_nm                    as    심판동명구분명 
      , d.sexdstn_nm                    as    심판성별    
      , e.agrde_nm                      as    연령대     
      , f.agrde_lclas_cde               as    연령대대분류 
      , a.referee_se_cde                as    심판구분코드  
      , g.referee_se_nm                 as    심판구분명   
      , a.referee_wsp_cde               as    심판급수코드  
      , h.referee_wsp_nm                as    심판급수명   
      , a.league_cmpet_se_cde           as    리그대회구분코드
      , i.league_cmpet_se_nm            as    리그대회구분명 
      , a.cmpet_knd_cde                 as    대회종류코드  
      , j.cmpet_knd_nm                  as    대회종류명   
      , a.referee_gpa                   as    심판평점    
      , a.avrg_gpa                      as    평균평점    
      , a.game_co                       as    경기수     
      , a.yellow_card_co                as    경고수     
      , a.red_card_co                   as    퇴장수     
      , a.lstcs_score                   as    어학점수    
      , a.foul_co                       as    파울수     
      , a.var_co                        as    VAR수    
      , a.var_revrsl_co                 as    VAR번복수  
   from mf_referee_gpa_sttus  a                        
        left outer join 
		wd_stdr_year b 
		ON a.stdr_year  = b.stdr_year 		left outer join 
		wd_referee_no c 
		ON a.referee_no = c.referee_no 		left outer join 
		wd_sexdstn d 
		ON a.referee_sexdstn_cde  = d.sexdstn_cde 		left outer join 
		wd_agrde e 
		ON a.referee_agrde_cde  = e.agrde_cde 		left outer join 
		wd_agrde_lclas f 
		ON a.referee_agrde_lclas_cde  = f.agrde_lclas_cde 		left outer join 
		wd_referee_se g 
		ON a.referee_se_cde  = g.referee_se_cde 		left outer join 
		wd_referee_wsp h 
		ON a.referee_wsp_cde  = h.referee_wsp_cde 		left outer join 
		wd_league_cmpet_se i 
		ON a.league_cmpet_se_cde  = i.league_cmpet_se_cde 		left outer join 
		wd_cmpet_knd j 
		ON a.cmpet_knd_cde  = j.cmpet_knd_cde 
  ;

comment on view kfadm.심판평점현황 is '심판평점현황';
comment on column kfadm.심판평점현황.연도 IS '연도';
comment on column kfadm.심판평점현황.심판번호 IS '심판번호';
comment on column kfadm.심판평점현황.심판명 IS '심판명';
comment on column kfadm.심판평점현황.심판동명구분명 IS '심판동명구분명';
comment on column kfadm.심판평점현황.심판성별 IS '심판성별';
comment on column kfadm.심판평점현황.연령대 IS '연령대';
comment on column kfadm.심판평점현황.연령대대분류 IS '연령대대분류';
comment on column kfadm.심판평점현황.심판구분코드 IS '심판구분코드';
comment on column kfadm.심판평점현황.심판구분명 IS '심판구분명';
comment on column kfadm.심판평점현황.심판급수코드 IS '심판급수코드';
comment on column kfadm.심판평점현황.심판급수명 IS '심판급수명';
comment on column kfadm.심판평점현황.리그대회구분코드 IS '리그대회구분코드';
comment on column kfadm.심판평점현황.리그대회구분명 IS '리그대회구분명';
comment on column kfadm.심판평점현황.대회종류코드 IS '대회종류코드';
comment on column kfadm.심판평점현황.대회종류명 IS '대회종류명';
comment on column kfadm.심판평점현황.심판평점 IS '심판평점';
comment on column kfadm.심판평점현황.평균평점 IS '평균평점';
comment on column kfadm.심판평점현황.경기수 IS '경기수';
comment on column kfadm.심판평점현황.경고수 IS '경고수';
comment on column kfadm.심판평점현황.퇴장수 IS '퇴장수';
comment on column kfadm.심판평점현황.어학점수 IS '어학점수';
comment on column kfadm.심판평점현황.파울수 IS '파울수';
comment on column kfadm.심판평점현황.VAR수 IS 'VAR수';
comment on column kfadm.심판평점현황.VAR번복수 IS 'VAR번복수';
