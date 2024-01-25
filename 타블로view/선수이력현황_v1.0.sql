drop view 선수이력현황;

create view 선수이력현황
as
select a.player_id           as    선수아이디   
     , b.player_nm           as    선수명     
     , b.brthdy              as    선수생년월일  
     , b.hmnm_se_nm          as    선수동명구분명 
     , c.sexdstn_nm          as    성별      
     , d.agrde_nm            as    나이      
     , e.stdr_year_nm        as    이력년도    
     , a.hist_psitn_team_id  as    소속팀아이디  
     , f.team_nm             as    소속팀명    
     , a.hist_psitn_team_grad_cde      as    소속팀등급코드 
     , g.team_grad_nm        as    소속팀등급명  
     , h.de_nm               as    선수팀등록일자 
     , i.de_nm               as    선수팀탈퇴일자 
     , a.player_postn_cde    as    선수포지션코드 
     , j.player_postn_nm     as    선수포지션명  
     , a.coach_id            as    지도자아아디  
     , k.mbr_nm              as    지도자명    
     , k.brthdy              as    지도자생년월일 
     , k.hmnm_se_nm          as    지도자동명구분명
     , a.coach_clsf_cde      as    지도자직급코드 
     , l.coach_clsf_nm       as    지도자직급명  
     , m.de_nm               as    지도자팀등록일자
     , n.de_nm               as    지도자팀탈퇴일자
     , a.player_co           as    선수수     
   from mf_player_hist_sttus a             
        left outer join 
	    wd_player b 
	 ON a.player_id = b.player_id 	    left outer join 
	    wd_sexdstn c 
	 ON a.player_sexdstn_cde  = c.sexdstn_cde 	    left outer join 
	    wd_agrde d 
	 ON a.player_agrde_cde  = d.agrde_cde 	    left outer join 
	    wd_stdr_year e 
	 ON a.hist_year  = e.stdr_year 	    left outer join 
	    wd_team f 
	 ON a.hist_psitn_team_id = f.team_id 	    left outer join 
	    wd_team_grad g 
	 ON a.hist_psitn_team_grad_cde = g.team_grad_cde 	    left outer join 
	    wd_de h 
	 ON a.player_team_regist_de = h.de 	    left outer join 
	    wd_de i 
	 ON a.player_team_secsn_de = i.de 	    left outer join 
	    wd_player_postn j 
	 ON a.player_postn_cde  = j.player_postn_cde 	    left outer join 
	    wd_mbr k 
	 ON a.coach_id   = k.mbr_id 	    left outer join 
	    wd_coach_clsf l 
	 ON a.coach_clsf_cde  = l.coach_clsf_cde 	    left outer join 
	    wd_de m 
	 ON a.coach_team_regist_de = m.de 	    left outer join 
	    wd_de n 
	 ON a.coach_team_secsn_de = n.de 
   
   
;


comment on view kfadm.선수이력현황 is '선수이력현황';
comment on column kfadm.선수이력현황.선수아이디 IS '선수아이디';
comment on column kfadm.선수이력현황.선수명 IS '선수명';
comment on column kfadm.선수이력현황.선수생년월일 IS '선수생년월일';
comment on column kfadm.선수이력현황.선수동명구분명 IS '선수동명구분명';
comment on column kfadm.선수이력현황.성별 IS '성별';
comment on column kfadm.선수이력현황.나이 IS '나이';
comment on column kfadm.선수이력현황.이력년도 IS '이력년도';
comment on column kfadm.선수이력현황.소속팀아이디 IS '소속팀아이디';
comment on column kfadm.선수이력현황.소속팀명 IS '소속팀명';
comment on column kfadm.선수이력현황.소속팀등급코드 IS '소속팀등급코드';
comment on column kfadm.선수이력현황.소속팀등급명 IS '소속팀등급명';
comment on column kfadm.선수이력현황.선수팀등록일자 IS '선수팀등록일자';
comment on column kfadm.선수이력현황.선수팀탈퇴일자 IS '선수팀탈퇴일자';
comment on column kfadm.선수이력현황.선수포지션코드 IS '선수포지션코드';
comment on column kfadm.선수이력현황.선수포지션명 IS '선수포지션명';
comment on column kfadm.선수이력현황.지도자아아디 IS '지도자아아디';
comment on column kfadm.선수이력현황.지도자명 IS '지도자명';
comment on column kfadm.선수이력현황.지도자생년월일 IS '지도자생년월일';
comment on column kfadm.선수이력현황.지도자동명구분명 IS '지도자동명구분명';
comment on column kfadm.선수이력현황.지도자직급코드 IS '지도자직급코드';
comment on column kfadm.선수이력현황.지도자직급명 IS '지도자직급명';
comment on column kfadm.선수이력현황.지도자팀등록일자 IS '지도자팀등록일자';
comment on column kfadm.선수이력현황.지도자팀탈퇴일자 IS '지도자팀탈퇴일자';
comment on column kfadm.선수이력현황.선수수 IS '선수수';

