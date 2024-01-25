drop view  지도자선수배출현황;

create view  지도자선수배출현황
as
select  a.coach_id                                   as     지도자아이디     
      , b.coach_nm                                   as     지도자명       
      , b.hmnm_se_nm                                 as     지도자동명구분명   
      , c.sexdstn_nm                                 as     지도자성별      
      , a.coach_psitn_team_class_cde                 as     지도자소속팀클래스코드
      , d.team_class_nm                              as     지도자소속팀클래스명 
      , e.stdr_year                                  as     기준년도       
      , a.coach_team_id                              as     지도자팀아이디    
      , f.team_nm                                    as     지도자팀명      
      , a.coach_clsf_cde                             as     지도자직급코드    
      , g.coach_clsf_nm                              as     지도자직급명     
      , a.coach_team_class_cde                       as     지도자팀클래스코드  
      , h.team_class_nm                              as     지도자팀클래스명   
      , a.coach_team_grad_cde                         as     지도자팀등급코드   
      , i.team_grad_nm                               as     지도자팀등급명    
      , j.de_nm                                      as     지도자팀등록일자   
      , k.de_nm                                      as     지도자팀탈퇴일자   
      , l.at_nm                                      as     프로산하여부     
      , a.player_id                                  as     선수아이디      
      , m.player_nm                                  as     선수명        
      , m.hmnm_se_nm                                 as     선수동명구분명    
      , n.sexdstn_nm                                 as     선수성별       
      , a.player_psitn_team_class_cde                as     선수소속팀클래스코드 
      , o.team_class_nm                              as     선수소속팀클래스명  
      , a.player_psitn_team_grad_cde                 as     선수소속팀등급코드  
      , p.team_grad_nm                               as     선수소속팀등급명   
      , a.player_postn_cde                           as     선수포지션코드    
      , q.player_postn_nm                            as     선수포지션명     
      , a.player_team_area_cde                       as     선수팀지역코드    
      , r.dstrct_nm                                  as     선수팀지역명     
      , s.de_nm                                      as     선수팀등록일자    
      , t.de_nm                                      as     선수팀탈퇴일자    
      , a.player_hist_id                             as     선수이력아이디    
      , u.player_nm                                  as     선수이력명      
      , u.hmnm_se_nm                                 as     선수이력동명구분명  
      , a.player_hist_team_class_cde                 as     선수이력팀클래스코드 
      , v.team_class_nm                              as     선수이력팀클래스명  
      , w.stdr_year_nm                               as     선수이력년도     
      , x.at_nm                                      as     국가대표여부     
      , a.pro_player_co                              as     프로선수수      
      , a.semipro_player_co                          as     세미프로선수수    
      , a.nl_co                                      as     국가대표수      
   from mf_coach_player_exhst_sttus a                                  
        left outer join 
		wd_coach b 
     ON a.coach_id = b.coach_id 		left outer join 
		wd_sexdstn c 
	 ON a.coach_sexdstn_cde = c.sexdstn_cde 		left outer join 
		wd_team_class d 
	 ON a.coach_psitn_team_class_cde = d.team_class_cde 		left outer join 
		wd_stdr_year e 
	 ON a.stdr_year = e.stdr_year 		left outer join 
		wd_team f 
	 ON a.coach_team_id = f.team_id 		left outer join 
		wd_coach_clsf g 
	 ON a.coach_clsf_cde = g.coach_clsf_cde 		left outer join 
		wd_team_class h 
	 ON a.coach_team_class_cde = h.team_class_cde 		left outer join 
		wd_team_grad i 
	 ON a.coach_team_grad_cde = i.team_grad_cde 		left outer join 
		wd_de j 
	 ON a.coach_team_regist_de = j.de 		left outer join 
		wd_de k 
	 ON a.coach_team_secsn_de = k.de 		left outer join 
		wd_pro_junior l 
	 ON a.pro_junior_at = l.pro_junior_at 		left outer join 
		wd_player m 
	 ON a.player_id = m.player_id 		left outer join 
		wd_sexdstn n 
	 ON a.player_sexdstn_cde = n.sexdstn_cde 		left outer join 
		wd_team_class o 
	 ON a.player_psitn_team_class_cde = o.team_class_cde 		left outer join 
		wd_team_grad p 
	 ON a.player_psitn_team_grad_cde = p.team_grad_cde 		left outer join 
		wd_player_postn q 
	 ON a.player_postn_cde = q.player_postn_cde 		left outer join 
		wd_dstrct r 
	 ON a.player_team_area_cde = r.dstrct_cde 		left outer join 
		wd_de s 
	 ON a.player_team_regist_de = s.de 		left outer join 
		wd_de t 
	 ON a.player_team_secsn_de = t.de 		left outer join 
		wd_player u 
	 ON a.player_hist_id = u.player_id 		left outer join 
		wd_team_class v 
	 ON a.player_hist_team_class_cde  = v.team_class_cde 		left outer join 
		wd_stdr_year w 
	 ON a.player_hist_year = w.stdr_year 		left outer join 
		wd_nl_at x 
	 ON a.nl_at = x.nl_at  
  ;
  
comment on view kfadm.지도자선수배출현황 is '지도자선수배출현황';
comment on column kfadm.지도자선수배출현황.지도자아이디 IS '지도자아이디';
comment on column kfadm.지도자선수배출현황.지도자명 IS '지도자명';
comment on column kfadm.지도자선수배출현황.지도자동명구분명 IS '지도자동명구분명';
comment on column kfadm.지도자선수배출현황.지도자성별 IS '지도자성별';
comment on column kfadm.지도자선수배출현황.지도자소속팀클래스코드 IS '지도자소속팀클래스코드';
comment on column kfadm.지도자선수배출현황.지도자소속팀클래스명 IS '지도자소속팀클래스명';
comment on column kfadm.지도자선수배출현황.기준년도 IS '기준년도';
comment on column kfadm.지도자선수배출현황.지도자팀아이디 IS '지도자팀아이디';
comment on column kfadm.지도자선수배출현황.지도자팀명 IS '지도자팀명';
comment on column kfadm.지도자선수배출현황.지도자직급코드 IS '지도자직급코드';
comment on column kfadm.지도자선수배출현황.지도자직급명 IS '지도자직급명';
comment on column kfadm.지도자선수배출현황.지도자팀클래스코드 IS '지도자팀클래스코드';
comment on column kfadm.지도자선수배출현황.지도자팀클래스명 IS '지도자팀클래스명';
comment on column kfadm.지도자선수배출현황.지도자팀등급코드 IS '지도자팀등급코드';
comment on column kfadm.지도자선수배출현황.지도자팀등급명 IS '지도자팀등급명';
comment on column kfadm.지도자선수배출현황.지도자팀등록일자 IS '지도자팀등록일자';
comment on column kfadm.지도자선수배출현황.지도자팀탈퇴일자 IS '지도자팀탈퇴일자';
comment on column kfadm.지도자선수배출현황.프로산하여부 IS '프로산하여부';
comment on column kfadm.지도자선수배출현황.선수아이디 IS '선수아이디';
comment on column kfadm.지도자선수배출현황.선수명 IS '선수명';
comment on column kfadm.지도자선수배출현황.선수동명구분명 IS '선수동명구분명';
comment on column kfadm.지도자선수배출현황.선수성별 IS '선수성별';
comment on column kfadm.지도자선수배출현황.선수소속팀클래스코드 IS '선수소속팀클래스코드';
comment on column kfadm.지도자선수배출현황.선수소속팀클래스명 IS '선수소속팀클래스명';
comment on column kfadm.지도자선수배출현황.선수소속팀등급코드 IS '선수소속팀등급코드';
comment on column kfadm.지도자선수배출현황.선수소속팀등급명 IS '선수소속팀등급명';
comment on column kfadm.지도자선수배출현황.선수포지션코드 IS '선수포지션코드';
comment on column kfadm.지도자선수배출현황.선수포지션명 IS '선수포지션명';
comment on column kfadm.지도자선수배출현황.선수팀지역코드 IS '선수팀지역코드';
comment on column kfadm.지도자선수배출현황.선수팀지역명 IS '선수팀지역명';
comment on column kfadm.지도자선수배출현황.선수팀등록일자 IS '선수팀등록일자';
comment on column kfadm.지도자선수배출현황.선수팀탈퇴일자 IS '선수팀탈퇴일자';
comment on column kfadm.지도자선수배출현황.선수이력아이디 IS '선수이력아이디';
comment on column kfadm.지도자선수배출현황.선수이력명 IS '선수이력명';
comment on column kfadm.지도자선수배출현황.선수이력동명구분명 IS '선수이력동명구분명';
comment on column kfadm.지도자선수배출현황.선수이력팀클래스코드 IS '선수이력팀클래스코드';
comment on column kfadm.지도자선수배출현황.선수이력팀클래스명 IS '선수이력팀클래스명';
comment on column kfadm.지도자선수배출현황.선수이력년도 IS '선수이력년도';
comment on column kfadm.지도자선수배출현황.국가대표여부 IS '국가대표여부';
comment on column kfadm.지도자선수배출현황.프로선수수 IS '프로선수수';
comment on column kfadm.지도자선수배출현황.세미프로선수수 IS '세미프로선수수';
comment on column kfadm.지도자선수배출현황.국가대표수 IS '국가대표수';
