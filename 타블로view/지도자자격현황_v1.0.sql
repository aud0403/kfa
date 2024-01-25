drop view  지도자자격현황;


create view  지도자자격현황
as
select b.stdr_year_nm                 as 기준연도
      , a.coach_id                    as 지도자아이디
      , c.coach_nm                    as 지도자명
      , concat(substring(c.brthdy,1,4),'.',substring(c.brthdy,5,2),'.',substring(c.brthdy,7,2))     as 생년월일
      , c.hmnm_se_nm                  as 동명구문명
      , a.coach_sexdstn_cde           as 지도자성별코드
      , e.sexdstn_nm                  as 지도자성별명
      , f.agrde_nm                    as 지도자연령대명
      , a.coach_qualf_issu_instt_cde  as 지도자자격발급기관코드
      , h.coach_qualf_issu_instt_nm   as 지도자자격발급기관명
      , a.coach_qualf_item_cde        as 지도자자격종목코드
      , i.coach_qualf_item_nm         as 지도자자격종목명
      , a.coach_qualf_ty_cde          as 지도자자격타입코드
      , j.coach_qualf_ty_nm           as 지도자자격타입명
      , a.coach_qualf_wsp_cde         as 지도자자격급수코드
      , k.coach_qualf_wsp_nm          as 지도자자격급수명
      , l.de_nm                       as 지도자자격취득일
      , m.de_nm                       as 지도자자격갱신일
      , n.at_nm                       as 자격유지여부
      , a.nation_cde                  as 국가코드
      , o.nation_nm                   as 국가명
      , a.agrde_lclas_cde             as AD발급코드
      , p.agrde_lclas_nm              as AD발급번호
      , a.qualf_co                    as 자격수
   from wf_coach_qualf_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_coach c 
	 ON a.coach_id = c.coach_id 	    left outer join 
	    wd_sexdstn e 
	 ON a.coach_sexdstn_cde = e.sexdstn_cde 	    left outer join 
	    wd_agrde f 
	 ON a.coach_agrde_cde = f.agrde_cde 	    left outer join 
	    wd_coach_qualf_issu_instt h 
	 ON a.coach_qualf_issu_instt_cde = h.coach_qualf_issu_instt_cde 	    left outer join 
	    wd_coach_qualf_item i 
	 ON a.coach_qualf_item_cde = i.coach_qualf_item_cde 	    left outer join 
	    wd_coach_qualf_ty j 
	 ON a.coach_qualf_ty_cde = j.coach_qualf_ty_cde 	    left outer join 
	    wd_coach_qualf_wsp k 
	 ON a.coach_qualf_wsp_cde = k.coach_qualf_wsp_cde 	    left outer join 
	    wd_de l 
	 ON a.coach_qualf_acqs_dat = l.de 	    left outer join 
	    wd_de m 
	 ON a.coach_qualf_updt_dat = m.de 	    left outer join 
	    wd_qualf_mntnc n 
	 ON a.qualf_mntnc_at = n.qualf_mntnc_at 	    left outer join 
	    wd_nation o 
	 ON a.nation_cde = o.nation_cde 	    left outer join 
	    wd_agrde_lclas p 
	 ON a.agrde_lclas_cde = p.agrde_lclas_cde 
;



comment on view kfadm.지도자자격현황 is '지도자자격현황';
comment on column kfadm.지도자자격현황.기준연도 is '기준연도';
comment on column kfadm.지도자자격현황.지도자아이디 is '지도자아이디';
comment on column kfadm.지도자자격현황.지도자명 is '지도자명';
comment on column kfadm.지도자자격현황.생년월일 is '생년월일';
comment on column kfadm.지도자자격현황.동명구문명 is '동명구문명';
comment on column kfadm.지도자자격현황.지도자성별코드 is '지도자성별코드';
comment on column kfadm.지도자자격현황.지도자성별명 is '지도자성별명';
comment on column kfadm.지도자자격현황.지도자연령대명 is '지도자연령대명';
comment on column kfadm.지도자자격현황.지도자자격발급기관코드 is '지도자자격발급기관코드';
comment on column kfadm.지도자자격현황.지도자자격발급기관명 is '지도자자격발급기관명';
comment on column kfadm.지도자자격현황.지도자자격종목코드 is '지도자자격종목코드';
comment on column kfadm.지도자자격현황.지도자자격종목명 is '지도자자격종목명';
comment on column kfadm.지도자자격현황.지도자자격타입코드 is '지도자자격타입코드';
comment on column kfadm.지도자자격현황.지도자자격타입명 is '지도자자격타입명';
comment on column kfadm.지도자자격현황.지도자자격급수코드 is '지도자자격급수코드';
comment on column kfadm.지도자자격현황.지도자자격급수명 is '지도자자격급수명';
comment on column kfadm.지도자자격현황.지도자자격취득일 is '지도자자격취득일';
comment on column kfadm.지도자자격현황.지도자자격갱신일 is '지도자자격갱신일';
comment on column kfadm.지도자자격현황.자격유지여부 is '자격유지여부';
comment on column kfadm.지도자자격현황.국가코드 is '국가코드';
comment on column kfadm.지도자자격현황.국가명 is '국가명';
comment on column kfadm.지도자자격현황.AD발급코드 is 'AD발급코드';
comment on column kfadm.지도자자격현황.AD발급번호 is 'AD발급번호';
comment on column kfadm.지도자자격현황.자격수 is '자격수';

