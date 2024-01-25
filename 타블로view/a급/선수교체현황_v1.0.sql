drop view 선수교체현황;

create view 선수교체현황
as 
select b.stdr_year_nm                  as    연도      
      , a.player_id                    as    선수아이디   
      , c.player_nm                    as    선수명     
      , c.brthdy                       as    선수생년월일  
      , c.hmnm_se_nm                   as    선수동명구분명 
      , d.agrde_nm                     as    나이      
      , f.sexdstn_nm                   as    성별      
      , a.cmpet_no                     as    대회번호    
      , g.cmpet_nm                     as    대회명     
      , a.cmpet_class_cde              as    대회클래스코드 
      , h.cmpet_class_nm               as    대회클래스명  
      , a.cmpet_knd_cde                as    대회종류코드  
      , i.cmpet_knd_nm                 as    대회종류명   
      , a.league_cmpet_se_cde          as    리그대회구분코드
      , j.league_cmpet_se_nm           as    리그대회구분명 
      , a.game_no                      as    경기번호    
      , k.game_nm                      as    경기명     
      , l.de_nm                        as    경기일자    
      , a.psitn_team_id                as    소속팀아이디  
      , m.team_nm                      as    소속팀명
      , a.player_postn_cde             as    선수포지션코드
      , n.player_postn_nm              as    선수포지션명
      , a.player_rcord_se_cde          as    선수기록구분코드
      , o.rcord_se_nm                  as    선수기록구분명  
      , a.player_rcord_occrrnc_time    as    선수기록시간  
      , a.game_co                      as    경기수     
   from mf_player_sbstt_sttus a                      
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_player c 
	 ON a.player_id = c.player_id 	    left outer join 
	    wd_agrde d 
	 ON a.player_agrde_cde = d.agrde_cde 	    left outer join 
	    wd_sexdstn f 
	 ON a.player_sexdstn_cde = f.sexdstn_cde 	    left outer join 
	    wd_cmpet g 
	 ON a.cmpet_no = g.cmpet_no 	    left outer join 
	    wd_cmpet_class h 
	 ON a.cmpet_class_cde = h.cmpet_class_cde 	    left outer join 
	    wd_cmpet_knd i 
	 ON a.cmpet_knd_cde = i.cmpet_knd_cde 	    left outer join 
	    wd_league_cmpet_se j 
	 ON a.league_cmpet_se_cde = j.league_cmpet_se_cde 	    left outer join 
	    wd_game k 
	 ON a.game_no = k.game_no 	    left outer join 
	    wd_de l 
	 ON a.game_de = l.de 	    left outer join 
	    wd_team m 
	 ON a.psitn_team_id = m.team_id 	    left outer join 
	    wd_player_postn n 
	 ON trim(a.player_postn_cde) = n.player_postn_cde 	    left outer join 
	    wd_rcord_se o 
	 ON a.player_rcord_se_cde = o.rcord_se_cde 
;


comment on view kfadm.선수교체현황 is '선수교체현황';
comment on column kfadm.선수교체현황.연도 is '연도';
comment on column kfadm.선수교체현황.선수아이디 is '선수아이디';
comment on column kfadm.선수교체현황.선수명 is '선수명';
comment on column kfadm.선수교체현황.선수생년월일 is '선수생년월일';
comment on column kfadm.선수교체현황.선수동명구분명 is '선수동명구분명';
comment on column kfadm.선수교체현황.나이 is '나이';
comment on column kfadm.선수교체현황.성별 is '성별';
comment on column kfadm.선수교체현황.대회번호 is '대회번호';
comment on column kfadm.선수교체현황.대회명 is '대회명';
comment on column kfadm.선수교체현황.대회클래스코드 is '대회클래스코드';
comment on column kfadm.선수교체현황.대회클래스명 is '대회클래스명';
comment on column kfadm.선수교체현황.대회종류코드 is '대회종류코드';
comment on column kfadm.선수교체현황.대회종류명 is '대회종류명';
comment on column kfadm.선수교체현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.선수교체현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.선수교체현황.경기번호 is '경기번호';
comment on column kfadm.선수교체현황.경기명 is '경기명';
comment on column kfadm.선수교체현황.경기일자 is '경기일자';
comment on column kfadm.선수교체현황.소속팀아이디 is '소속팀아이디';
comment on column kfadm.선수교체현황.소속팀명 is '소속팀명';
comment on column kfadm.선수교체현황.선수포지션코드 is '선수포지션코드';
comment on column kfadm.선수교체현황.선수포지션명 is '선수포지션명';
comment on column kfadm.선수교체현황.선수기록구분코드 is '선수기록구분코드';
comment on column kfadm.선수교체현황.선수기록구분명 is '선수기록구분명';
comment on column kfadm.선수교체현황.선수기록시간 is '선수기록시간';
comment on column kfadm.선수교체현황.경기수 is '경기수';
