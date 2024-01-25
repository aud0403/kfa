
drop view 심판배정현황;

create view 심판배정현황
 as
select b.stdr_year_nm    	                 기준연도명
     , a.referee_no 			             심판번호
     , c.referee_nm      	                 심판명
     , concat(substring(c.brthdy,1,4),'.',substring(c.brthdy,5,2),'.',substring(c.brthdy,7,2))    생년월일
     , c.hmnm_se_nm                          심판동명구분명
     , a.referee_se_cde                      심판구분코드
     , d.referee_se_nm   	                 심판구분명
     , a.cmpet_no 				             대회코드
     , e.cmpet_nm        	                 대회명
     , a.cmpet_class_cde 		             대회클래스코드
     , f.cmpet_class_nm  	                 대회클래스명
     , a.cmpet_knd_cde 			             대회종류코드
     , g.cmpet_knd_nm    	                 대회종류명
     , a.game_no 				             경기번호
     , h.game_nm 				             경기명
     , i.de_nm     		 	                 경기일자 
     , a.referee_dffly_score_cde             심판나이도점수코드
     , j.referee_dffly_score_nm              심판난이도점수명
     , a.referee_game_control_score_cde   	 경기컨트롤점수코드
     , k.referee_score_nm                    경기컨트롤점수
     , a.referee_ftness_score_cde            체력점수코드
     , l.referee_score_nm                    체력점수
     , a.referee_corpr_score_cde         	 협력점수코드
     , m.referee_score_nm                    협력점수
     , a.referee_evl_grad_cde                심판평가등급코드
     , n.referee_evl_grad_nm                 심판평가등급명
     , a.wnpz_cde 			                 수상코드
     , o.wnpz_nm     		                 수상명
     , a.league_cmpet_se_cde 	             리그대회구분코드
     , p.league_cmpet_se_nm                  리그대회구분명
     , a.referee_wsp_cde 		             심판급수코드
     , q.referee_wsp_nm                      심판급수명
     , r.sexdstn_nm 		                 심판성별명
     , a.referee_agrde_cde                   심판연령대코드
     , s.agrde_nm                            심판연령대명
     , s.agrde_lclas_nm                      심판연령대분류명
     , a.yellow_card_co                      경고수
     , a.red_card_co                         퇴장수
     , a.referee_gpa                         심판평점
     , a.lstcs_score                         어학점수
     , a.game_co                             경기수
     , a.foul_co                             파울수
     , a.var_co 			                 VAR횟수
     , a.var_revrsl_co                       VAR번복수
  from mf_referee_asign_sttus a
 	   left outer join
 	   wd_stdr_year b
    on a.stdr_year = b.stdr_year 
       left outer join 
       wd_referee_no c
    on a.referee_no = c.referee_no 
       left outer join 
       wd_referee_se d
    on a.referee_se_cde = d.referee_se_cde 
       left outer join 
       wd_cmpet e
    on a.cmpet_no  = e.cmpet_no 
       left outer join 
       wd_cmpet_class f
    on a.cmpet_class_cde = f.cmpet_class_cde
       left outer join 
       wd_cmpet_knd g
    on a.cmpet_knd_cde = g.cmpet_knd_cde    
       left outer join
       wd_game h
    on a.game_no = h.game_no 
       left outer join
       wd_de i 
    on a.game_de = i.de 
       left outer join  
       wd_referee_dffly_score j 
    on a.referee_dffly_score_cde = j.referee_dffly_score_cde
	   left outer join 
	   wd_referee_score k
	on a.referee_game_control_score_cde = k.referee_score_cde 
	   left outer join 
	   wd_referee_score l 
	on a.referee_ftness_score_cde = l.referee_score_cde 
       left outer join 
       wd_referee_score m
    on a.referee_corpr_score_cde = m.referee_score_cde  
       left outer join 
       wd_referee_evl_grad n
    on a.referee_evl_grad_cde = n.referee_evl_grad_cde 
       left outer join 
	   wd_wnpz o 
    ON a.wnpz_cde = o.wnpz_cde  	   left outer join
	   wd_league_cmpet_se  p 
	ON a.league_cmpet_se_cde = p.league_cmpet_se_cde 	   left outer join 
	   wd_referee_wsp q 
	ON a.referee_wsp_cde = q.referee_wsp_cde 
	   left outer join
	   wd_sexdstn  r
	on a.referee_sexdstn_cde = r.sexdstn_cde 
	   left outer join 
	   wd_agrde s 
	on a.agrde_lclas_cde = s.agrde_cde 
--where not c.referee_nm in ('미입력', '기록부확인요망')
  ;

comment on view kfadm.심판배정현황  is '심판배정현황';
comment on column kfadm.심판배정현황.기준연도명 is '기준연도명';
comment on column kfadm.심판배정현황.심판번호 is '심판번호';
comment on column kfadm.심판배정현황.심판명 is '심판명';
comment on column kfadm.심판배정현황.생년월일 is '생년월일';
comment on column kfadm.심판배정현황.심판동명구분명 is '심판동명구분명';
comment on column kfadm.심판배정현황.심판구분코드 is '심판구분코드';
comment on column kfadm.심판배정현황.심판급수코드 is '심판급수코드';
comment on column kfadm.심판배정현황.심판급수명 is '심판급수명';
comment on column kfadm.심판배정현황.심판구분명 is '심판구분명';
comment on column kfadm.심판배정현황.대회코드 is '대회코드';
comment on column kfadm.심판배정현황.대회명 is '대회명';
comment on column kfadm.심판배정현황.대회클래스코드 is '대회클래스코드';
comment on column kfadm.심판배정현황.대회클래스명 is '대회클래스명';
comment on column kfadm.심판배정현황.대회종류코드 is '대회종류코드';
comment on column kfadm.심판배정현황.대회종류명 is '대회종류명';
comment on column kfadm.심판배정현황.경기번호 is '경기번호';
comment on column kfadm.심판배정현황.경기명 is '경기명';
comment on column kfadm.심판배정현황.경기일자 is '경기일자';
comment on column kfadm.심판배정현황.심판나이도점수코드 is '심판나이도점수코드';
comment on column kfadm.심판배정현황.심판난이도점수명 is '심판난이도점수명';
comment on column kfadm.심판배정현황.경기컨트롤점수코드 is '경기컨트롤점수코드';
comment on column kfadm.심판배정현황.경기컨트롤점수 is '경기컨트롤점수';
comment on column kfadm.심판배정현황.체력점수코드 is '체력점수코드';
comment on column kfadm.심판배정현황.체력점수 is '체력점수';
comment on column kfadm.심판배정현황.협력점수코드 is '협력점수코드';
comment on column kfadm.심판배정현황.협력점수 is '협력점수';
comment on column kfadm.심판배정현황.심판평가등급코드 is '심판평가등급코드';
comment on column kfadm.심판배정현황.심판평가등급명 is '심판평가등급명';
comment on column kfadm.심판배정현황.수상코드 is '수상코드';
comment on column kfadm.심판배정현황.수상명 is '수상명';
comment on column kfadm.심판배정현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.심판배정현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.심판배정현황.심판성별명 is '심판성별명';
comment on column kfadm.심판배정현황.심판연령대코드 is '심판연령대코드';
comment on column kfadm.심판배정현황.심판연령대명 is '심판연령대명';
comment on column kfadm.심판배정현황.심판연령대분류명 is '심판연령대분류명';
comment on column kfadm.심판배정현황.경고수 is '경고수';
comment on column kfadm.심판배정현황.퇴장수 is '퇴장수';
comment on column kfadm.심판배정현황.심판평점 is '심판평점';
comment on column kfadm.심판배정현황.경기수 is '경기수';
comment on column kfadm.심판배정현황.어학점수 is '어학점수';
comment on column kfadm.심판배정현황.파울수 is '파울수';
comment on column kfadm.심판배정현황.VAR횟수 is 'VAR횟수';
comment on column kfadm.심판배정현황.VAR번복수 is 'VAR번복수';




