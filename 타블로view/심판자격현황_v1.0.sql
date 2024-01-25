drop view 심판자격현황; 
 
create view 심판자격현황 
 as
 select b.stdr_year_nm               as 기준연도명
      , a.referee_no 				 as 심판번호
      , c.referee_nm                 as 심판명
      , concat(substring(C.brthdy,1,4),'.',substring(C.brthdy,5,2),'.',substring(C.brthdy,7,2))   as 생년월일
      , c.hmnm_se_nm                 as 동명구분명
      , d.sexdstn_nm                 as 성별명
      , e.agrde_nm                   as 연령대명
      , a.regist_asoc_cde    as 심판등록협회코드
      , f.referee_regist_asoc_nm     as 심판등록협회명
      , a.referee_wsp_cde            as 심판급수코드
      , g.referee_wsp_nm             as 심판급수명
      , h.de_nm                      as 취득일자
      , a.act_cde                    as 활동코드
      , i.act_nm                     as 활동명
      , a.snd_clss_referee_wsp_cde   as "2종심판급수코드"
      , j.snd_clss_referee_wsp_nm    as "2종심판급수명"
      , k.de_nm                      as "2종취득일자"
      , a.snd_clss_act_cde           as "2종활동코드"
      , l.act_nm                     as "2종활동명"
      , m.de_nm                      as 풋살취득일자
      , a.fut_act_cde                    as 풋살활동코드
      , n.act_nm                     as 풋살활동명
      , o.at_nm                      as 국제심판여부
      , p.at_nm                      as 심판평가관여부
      , q.de_nm                      as 심판평가관등록일
      , a.referee_assr_rspofc_cde    as 심판평가관직책코드
      , r.referee_assr_rspofc_nm     as 심판평가관직책명
      , s.at_nm                      as 은퇴여부
      , t.at_nm                      as "2종은퇴여부"
      , u.at_nm                      as 풋살은퇴여부
      , v.at_nm                      as 인권교육이수여부
      , a.referee_co                 as 심판수
   from mf_referee_qualf_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year  	    left outer join 
	    wd_referee_no c 
	 ON a.referee_no = c.referee_no  	    left outer join 
	    wd_sexdstn d 
	 ON a.referee_sexdstn_cde = d.sexdstn_cde  	    left outer join 
	    wd_agrde e 
	 ON a.referee_agrde_cde = e.agrde_cde  	    left outer join 
	    wd_referee_regist_asoc f 
	 ON a.regist_asoc_cde = f.referee_regist_asoc_cde  	    left outer join 
	    wd_referee_wsp g 
	 ON a.referee_wsp_cde = g.referee_wsp_cde  	    left outer join 
	    wd_de h 
	 ON a.acqs_de = h.de  	    left outer join 
	    wd_act i 
	 ON a.act_cde = i.act_cde  	    left outer join 
	    wd_snd_clss_referee_wsp j 
	 ON a.snd_clss_referee_wsp_cde = j.snd_clss_referee_wsp_cde  	    left outer join 
	    wd_de k 
	 ON a.snd_clss_acqs_de = k.de  	    left outer join 
	    wd_act l 
	 ON a.snd_clss_act_cde = l.act_cde  	    left outer join 
	    wd_de m 
	 ON a.fut_acqs_de = m.de  	    left outer join 
	    wd_act n 
	 ON a.fut_act_cde = n.act_cde  	    left outer join 
	    wd_intrl_referee o 
	 ON a.intrl_referee_at = o.intrl_referee_at  	    left outer join 
	    wd_referee_assr p 
	 ON a.referee_assr_at = p.referee_assr_at  	    left outer join 
	    wd_de q 
	 ON a.referee_assr_regist_dat = q.de  	    left outer join 
	    wd_referee_assr_rspofc r 
	 ON a.referee_assr_rspofc_cde = r.referee_assr_rspofc_cde  	    left outer join 
	    wd_retire_referee s 
	 ON a.retire_at = s.retire_referee_at  	    left outer join 
	    wd_retire_referee t 
	 ON a.snd_clss_retire_at = t.retire_referee_at  	    left outer join 
	    wd_retire_referee u 
	 ON a.fut_retire_at = u.retire_referee_at  	    left outer join 
	    wd_hnrt_edc_compl v 
	 ON a.hnrt_edc_compl_at = v.hnrt_edc_compl_at  
  ;
  
 
comment on view kfadm.심판자격현황 is '심판자격현황';
comment on column kfadm.심판자격현황.기준연도명 is '기준연도명';
comment on column kfadm.심판자격현황.심판번호 is '심판번호';
comment on column kfadm.심판자격현황.심판명 is '심판명';
comment on column kfadm.심판자격현황.생년월일 is '생년월일';
comment on column kfadm.심판자격현황.동명구분명 is '동명구분명';
comment on column kfadm.심판자격현황.성별명 is '성별명';
comment on column kfadm.심판자격현황.연령대명 is '연령대명';
comment on column kfadm.심판자격현황.심판등록협회코드 is '심판등록협회코드';
comment on column kfadm.심판자격현황.심판등록협회명 is '심판등록협회명';
comment on column kfadm.심판자격현황.심판급수코드 is '심판급수코드';
comment on column kfadm.심판자격현황.심판급수명 is '심판급수명';
comment on column kfadm.심판자격현황.취득일자 is '취득일자';
comment on column kfadm.심판자격현황.활동코드 is '활동코드';
comment on column kfadm.심판자격현황.활동명 is '활동명';
comment on column kfadm.심판자격현황."2종심판급수코드" is '2종심판급수코드';
comment on column kfadm.심판자격현황."2종심판급수명" is '2종심판급수명';
comment on column kfadm.심판자격현황."2종취득일자" is '2종취득일자';
comment on column kfadm.심판자격현황."2종활동코드" is '2종활동코드';
comment on column kfadm.심판자격현황."2종활동명" is '2종활동명';
comment on column kfadm.심판자격현황.풋살취득일자 is '풋살취득일자';
comment on column kfadm.심판자격현황.풋살활동코드 is '풋살활동코드';
comment on column kfadm.심판자격현황.풋살활동명 is '풋살활동명';
comment on column kfadm.심판자격현황.국제심판여부 is '국제심판여부';
comment on column kfadm.심판자격현황.심판평가관여부 is '심판평가관여부';
comment on column kfadm.심판자격현황.심판평가관등록일 is '심판평가관등록일';
comment on column kfadm.심판자격현황.심판평가관직책코드 is '심판평가관직책코드';
comment on column kfadm.심판자격현황.심판평가관직책명 is '심판평가관직책명';
comment on column kfadm.심판자격현황.은퇴여부 is '은퇴여부';
comment on column kfadm.심판자격현황."2종은퇴여부" is '2종은퇴여부';
comment on column kfadm.심판자격현황.풋살은퇴여부 is '풋살은퇴여부';
comment on column kfadm.심판자격현황.인권교육이수여부 is '인권교육이수여부';
comment on column kfadm.심판자격현황.심판수 is '심판수';

