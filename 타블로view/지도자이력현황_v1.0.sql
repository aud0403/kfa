drop view 지도자이력현황;

create view 지도자이력현황
as
 
select a.coach_id                    as    지도자아이디      
      , b.coach_nm                    as    지도자명        
      , b.brthdy                      as    지도자생년월일     
      , b.hmnm_se_nm                  as    지도자동명구분명    
      , c.sexdstn_nm                  as    지도자성별       
      , a.coach_psitn_team_class_cde  as    지도자소속팀클래스코드 
      , d.team_class_nm               as    지도자소속팀클래스명  
      , e.stdr_year_nm                as    연도          
      , a.coach_team_id               as    지도자소속팀아이디   
      , f.team_nm                     as    지도자소속팀명     
      , a.coach_clsf_cde              as    지도자직급코드     
      , g.coach_clsf_nm               as    지도자직급명      
      , a.coach_team_class_cde        as    지도자팀클래스코드   
      , h.team_class_nm               as    지도자팀클래스명    
      , a.coach_team_grad_cde         as    지도자팀등급코드    
      , i.team_grad_nm                as    지도자팀등급명     
      , j.de_nm                       as    지도자팀탈퇴일     
      , k.de_nm                       as    지도자팀등록일
      , a.pro_junior_at               as    프로산하여부코드
      , l.at_nm                       as    프로산하여부      
      , a.player_id                   as    선수아이디       
      , m.player_nm                   as    선수명         
      , m.brthdy                      as    선수생년월일      
      , m.hmnm_se_nm                  as    선수동명구분명     
      , n.sexdstn_nm                  as    선수성별        
      , a.player_team_class_cde       as    선수소속팀클래스코드  
      , o.team_class_nm               as    선수소속팀클래스명   
      , a.player_team_grad_cde        as    선수소속팀등급코드   
      , p.team_grad_nm                as    선수소속팀등급명    
      , a.player_postn_cde            as    선수포지션코드     
      , q.player_postn_nm             as    선수포지션명   
      , a.player_team_area_cde        as    선수팀지역코드
      , r.dstrct_nm                   as    선수팀지역명      
      , s.de_nm                       as    선수팀등록일      
      , t.de_nm                       as    선수팀탈퇴일      
      , u.at_nm                       as    국가대표여부      
      , a.pro_player_co 			  as    프로배출수       
      , a.semipro_player_co           as    실업선수배출수     
      , a.nl_co                       as    국가대표배출수     
      , a.hist_player_id              as    이력선수아이디     
      , v.player_nm                   as    이력선수명       
      , v.brthdy                      as    이력선수생년월일    
      , v.hmnm_se_nm                  as    이력선수동명구분명   
      , w.sexdstn_nm                  as    이력선수성별      
      , a.hist_psitn_team_id          as    이력선수소속팀코드   
      , x.team_nm                     as    이력선수소속팀명    
      , a.hist_player_postn_cde       as    이력선수포지션코드   
      , y.player_postn_nm             as    이력선수포지션명  
      , a.hist_psitn_team_area_cde    as    이력선수팀지역코드
      , z.dstrct_nm                   as    이력선수팀지역     
      , a.hist_psitn_team_class_cde   as    이력선수팀클래스코드  
      , aa.team_class_nm              as    이력선수팀클래스명   
      , a.hist_psitn_team_grad_cde    as    이력선수팀등급코드   
      , ab.team_grad_nm               as    이력선수팀등급명    
      , ac.stdr_year_nm               as    이력년도        
      , ad.de_nm                      as    이력선수팀등록일자   
      , ae.de_nm                      as    이력선수팀탈퇴일자   
      , a.hist_psitn_team_mangr_id    as    이력소속팀감독아이디  
      , af.coach_nm                   as    이력소속팀감독명    
      , af.brthdy                     as    이력소속팀감독생년월일 
      , af.hmnm_se_nm                 as    이력소속팀감독동명구분명
   from mf_coach_hist_sttus a                           
	    left outer join 
	    wd_coach b 
	 ON a.coach_id = b.coach_id 	    left outer join 
	    wd_sexdstn c 
	 ON a.coach_sexdstn_cde = c.sexdstn_cde 	    left outer join 
	    wd_team_class d 
	 ON a.coach_psitn_team_class_cde = d.team_class_cde 	    left outer join 
	    wd_stdr_year e 
	 ON a.stdr_year = e.stdr_year 	    left outer join 
	    wd_team f 
	 ON a.coach_team_id = f.team_id 	    left outer join 
	    wd_coach_clsf g 
	 ON a.coach_clsf_cde = g.coach_clsf_cde 	    left outer join 
	    wd_team_class h 
	 ON a.coach_team_class_cde = h.team_class_cde 	    left outer join 
	    wd_team_grad i 
	 ON a.coach_team_grad_cde = i.team_grad_cde 	    left outer join 
	    wd_de j 
	 ON a.coach_team_secsn_de = j.de 	    left outer join 
	    wd_de k 
	 ON a.coach_team_regist_de = k.de 	    left outer join 
	    wd_pro_junior l 
	 ON a.pro_junior_at = l.pro_junior_at 	    left outer join 
	    wd_player m 
	 ON a.player_id = m.player_id 	    left outer join 
	    wd_sexdstn n 
	 ON a.player_sexdstn_cde = n.sexdstn_cde 	    left outer join 
	    wd_team_class o 
	 ON a.player_team_class_cde = o.team_class_cde 	    left outer join 
	    wd_team_grad p 
	 ON a.player_team_grad_cde = p.team_grad_cde 	    left outer join 
	    wd_player_postn q 
	 ON a.player_postn_cde = q.player_postn_cde 	    left outer join 
	    wd_dstrct r 
	 ON a.player_team_area_cde = r.dstrct_cde 	    left outer join 
	    wd_de s 
	 ON a.player_team_regist_de = s.de 	    left outer join 
	    wd_de t 
	 ON a.player_team_secsn_de = t.de 	    left outer join 
	    wd_nl_at u 
	 ON a.nl_at = u.nl_at 	    left outer join 
	    wd_player v 
	 ON a.hist_player_id = v.player_id 	    left outer join 
	    wd_sexdstn w 
	 ON a.hist_player_sexdstn_cde = w.sexdstn_cde 	    left outer join 
	    wd_team x 
	 ON a.hist_psitn_team_id = x.team_id 	    left outer join 
	    wd_player_postn y 
	 ON a.hist_player_postn_cde = y.player_postn_cde 	    left outer join 
	    wd_dstrct z 
	 ON a.hist_psitn_team_area_cde = z.dstrct_cde 	    left outer join 
	    wd_team_class aa 
	 ON a.hist_psitn_team_class_cde = aa.team_class_cde 	    left outer join 
	    wd_team_grad ab 
	 ON a.hist_psitn_team_grad_cde = ab.team_grad_cde 	    left outer join 
	    wd_stdr_year ac 
	 ON a.hist_stdr_year = ac.stdr_year 	    left outer join 
	    wd_de ad 
	 ON a.hist_team_regist_de = ad.de 	    left outer join 
	    wd_de ae 
	 ON a.hist_team_secsn_de = ae.de 	    left outer join 
	    wd_coach af 
	 ON a.hist_psitn_team_mangr_id = af.coach_id 
;

comment on view kfadm.지도자이력현황 is '지도자이력현황';
comment on column kfadm.지도자이력현황.지도자아이디 IS '지도자아이디';
comment on column kfadm.지도자이력현황.지도자명 IS '지도자명';
comment on column kfadm.지도자이력현황.지도자생년월일 IS '지도자생년월일';
comment on column kfadm.지도자이력현황.지도자동명구분명 IS '지도자동명구분명';
comment on column kfadm.지도자이력현황.지도자성별 IS '지도자성별';
comment on column kfadm.지도자이력현황.지도자소속팀클래스코드 IS '지도자소속팀클래스코드';
comment on column kfadm.지도자이력현황.지도자소속팀클래스명 IS '지도자소속팀클래스명';
comment on column kfadm.지도자이력현황.연도 IS '연도';
comment on column kfadm.지도자이력현황.지도자소속팀아이디 IS '지도자소속팀아이디';
comment on column kfadm.지도자이력현황.지도자소속팀명 IS '지도자소속팀명';
comment on column kfadm.지도자이력현황.지도자직급코드 IS '지도자직급코드';
comment on column kfadm.지도자이력현황.지도자직급명 IS '지도자직급명';
comment on column kfadm.지도자이력현황.지도자팀클래스코드 IS '지도자팀클래스코드';
comment on column kfadm.지도자이력현황.지도자팀클래스명 IS '지도자팀클래스명';
comment on column kfadm.지도자이력현황.지도자팀등급코드 IS '지도자팀등급코드';
comment on column kfadm.지도자이력현황.지도자팀등급명 IS '지도자팀등급명';
comment on column kfadm.지도자이력현황.지도자팀탈퇴일 IS '지도자팀탈퇴일';
comment on column kfadm.지도자이력현황.지도자팀등록일 IS '지도자팀등록일';
comment on column kfadm.지도자이력현황.프로산하여부코드 IS '프로산하여부코드';
comment on column kfadm.지도자이력현황.프로산하여부 IS '프로산하여부';
comment on column kfadm.지도자이력현황.선수아이디 IS '선수아이디';
comment on column kfadm.지도자이력현황.선수명 IS '선수명';
comment on column kfadm.지도자이력현황.선수생년월일 IS '선수생년월일';
comment on column kfadm.지도자이력현황.선수동명구분명 IS '선수동명구분명';
comment on column kfadm.지도자이력현황.선수성별 IS '선수성별';
comment on column kfadm.지도자이력현황.선수소속팀클래스코드 IS '선수소속팀클래스코드';
comment on column kfadm.지도자이력현황.선수소속팀클래스명 IS '선수소속팀클래스명';
comment on column kfadm.지도자이력현황.선수소속팀등급코드 IS '선수소속팀등급코드';
comment on column kfadm.지도자이력현황.선수소속팀등급명 IS '선수소속팀등급명';
comment on column kfadm.지도자이력현황.선수포지션코드 IS '선수포지션코드';
comment on column kfadm.지도자이력현황.선수포지션명 IS '선수포지션명';
comment on column kfadm.지도자이력현황.선수팀지역코드 IS '선수팀지역코드';
comment on column kfadm.지도자이력현황.선수팀지역명 IS '선수팀지역명';
comment on column kfadm.지도자이력현황.선수팀등록일 IS '선수팀등록일';
comment on column kfadm.지도자이력현황.선수팀탈퇴일 IS '선수팀탈퇴일';
comment on column kfadm.지도자이력현황.국가대표여부 IS '국가대표여부';
comment on column kfadm.지도자이력현황.프로배출수 IS '프로배출수';
comment on column kfadm.지도자이력현황.실업선수배출수 IS '실업선수배출수';
comment on column kfadm.지도자이력현황.국가대표배출수 IS '국가대표배출수';
comment on column kfadm.지도자이력현황.이력선수아이디 IS '이력선수아이디';
comment on column kfadm.지도자이력현황.이력선수명 IS '이력선수명';
comment on column kfadm.지도자이력현황.이력선수생년월일 IS '이력선수생년월일';
comment on column kfadm.지도자이력현황.이력선수동명구분명 IS '이력선수동명구분명';
comment on column kfadm.지도자이력현황.이력선수성별 IS '이력선수성별';
comment on column kfadm.지도자이력현황.이력선수소속팀코드 IS '이력선수소속팀코드';
comment on column kfadm.지도자이력현황.이력선수소속팀명 IS '이력선수소속팀명';
comment on column kfadm.지도자이력현황.이력선수포지션코드 IS '이력선수포지션코드';
comment on column kfadm.지도자이력현황.이력선수포지션명 IS '이력선수포지션명';
comment on column kfadm.지도자이력현황.이력선수팀지역코드 IS '이력선수팀지역코드';
comment on column kfadm.지도자이력현황.이력선수팀지역 IS '이력선수팀지역';
comment on column kfadm.지도자이력현황.이력선수팀클래스코드 IS '이력선수팀클래스코드';
comment on column kfadm.지도자이력현황.이력선수팀클래스명 IS '이력선수팀클래스명';
comment on column kfadm.지도자이력현황.이력선수팀등급코드 IS '이력선수팀등급코드';
comment on column kfadm.지도자이력현황.이력선수팀등급명 IS '이력선수팀등급명';
comment on column kfadm.지도자이력현황.이력년도 IS '이력년도';
comment on column kfadm.지도자이력현황.이력선수팀등록일자 IS '이력선수팀등록일자';
comment on column kfadm.지도자이력현황.이력선수팀탈퇴일자 IS '이력선수팀탈퇴일자';
comment on column kfadm.지도자이력현황.이력소속팀감독아이디 IS '이력소속팀감독아이디';
comment on column kfadm.지도자이력현황.이력소속팀감독명 IS '이력소속팀감독명';
comment on column kfadm.지도자이력현황.이력소속팀감독생년월일 IS '이력소속팀감독생년월일';
comment on column kfadm.지도자이력현황.이력소속팀감독동명구분명 IS '이력소속팀감독동명구분명';

