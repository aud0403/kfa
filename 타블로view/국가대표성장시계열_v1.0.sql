drop view 국가대표성장시계열 ;

create view 국가대표성장시계열
as 
select b.stdr_year_nm         as 기준연도
      , a.nl_team_grad_cde    as 대표팀등급코드
      , c.nl_team_grad_nm     as 대표팀등급명
      , d.sexdstn_nm          as 선수성별코드
      , a.player_indx         as 선수인덱스
      , a.cnvc_team_grad_cde  as 소집팀등급코드
      , f.team_grad_nm        as 소집팀등급명
      , a.nt_co               as A대표팀
      , a.u23_co              as "U-23"
      , a.u20_co              as "U-20"
      , a.u17_co              as "U-17"
      , a.u14_co              as "U-14"
      , a.uv_co               as "UV_CO"
      , a.area_co             as 지역
      , a.wdr_co              as 광역
      , a.joint_wdr_co        as 합동
      , a.kfa_cnter_co        as KFA센터
      , a.future_co           as 퓨처
   from mf_nl_growth_tmsres a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 
	    left outer join 
	    wd_nl_team_grad c 
	 ON a.nl_team_grad_cde = c.nl_team_grad_cde 
	    left outer join 
	    wd_sexdstn d 
	 ON a.player_sexdstn_cde = d.sexdstn_cde 
	    left outer join 
	    wd_golden_age_grad f 
	 ON a.cnvc_team_grad_cde = f.cnvc_team_grad_cde 
  ;
  
comment on view  kfadm.국가대표성장시계열 is '국가대표성장시계열';
comment on column kfadm.국가대표성장시계열.기준연도 is '기준연도';
comment on column kfadm.국가대표성장시계열.대표팀등급코드 is '대표팀등급코드';
comment on column kfadm.국가대표성장시계열.대표팀등급명 is '대표팀등급명';
comment on column kfadm.국가대표성장시계열.선수성별코드 is '선수성별코드';
comment on column kfadm.국가대표성장시계열.선수인덱스 is '선수인덱스';
comment on column kfadm.국가대표성장시계열.소집팀등급코드 is '소집팀등급코드';
comment on column kfadm.국가대표성장시계열.소집팀등급명 is '소집팀등급명';
comment on column kfadm.국가대표성장시계열.A대표팀 is 'A대표팀';
comment on column kfadm.국가대표성장시계열."U-23" is 'U-23';
comment on column kfadm.국가대표성장시계열."U-20" is 'U-20';
comment on column kfadm.국가대표성장시계열."U-17" is 'U-17';
comment on column kfadm.국가대표성장시계열."U-14" is 'U-14';
comment on column kfadm.국가대표성장시계열."UV_CO" is 'UV_CO';
comment on column kfadm.국가대표성장시계열.지역 is '지역';
comment on column kfadm.국가대표성장시계열.광역 is '광역';
comment on column kfadm.국가대표성장시계열.합동 is '합동';
comment on column kfadm.국가대표성장시계열.KFA센터 is 'KFA센터';
comment on column kfadm.국가대표성장시계열.퓨처 is '퓨처';



