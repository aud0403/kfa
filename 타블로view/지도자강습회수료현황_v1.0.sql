drop view 지도자강습회수료현황;

create view 지도자강습회수료현황
 as
  select 
         b.stdr_year_nm      as  기준연도명
       , a.stdnt_id          as	 교육생아이디
	   , c.stdnt_nm          as  교육생명
	   , a.kfa_coach_id      as  지도자아이디
	   , d.coach_nm          as  지도자명
	   , concat(substring(d.brthdy,1,4),'.',substring(d.brthdy,5,2),'.',substring(d.brthdy,7,2))   as  지도자생년웡일
	   , d.hmnm_se_nm        as  지도자대분류명
	   , a.psitn_team_id     as  팀아이디
	   , e.team_nm           as  팀명
	   , a.psitn_team_grad_cde as  팀등급코드
	   , f.team_grad_nm      as  팀등급명
	   , a.mnnst_cde         as  주관기관코드
	   , g.mnnst_nm          as  주관기관명
	   , a.crse_cl_cde       as  과정분류코드
	   , h.crse_cl_nm        as  과정분류명
	   , a.crse_cde          as  과정코드
	   , i.crse_nm           as  과정명
	   , a.crse_odr          as  과정차수코드
	   , j.crse_odr_nm       as  과정차수명 
	   , k.at_nm             as  수료여부명
	   , l.un_compl_resn_nm  as  미수료사유명
	   , a.psexam_info_cde   as  합격정보코드
	   , m.psexam_info_nm    as  합격정보명
	   , o.sexdstn_nm        as  지도자성별
	   , p.agrde_lclas_nm    as  연령대대분류코드
	   , q.de_nm             as  교육시작일자
	   , r.de_nm             as  교육종류일자
	   , s.de_nm             as  수료일자
	   , t.de_nm             as  팀등록일자
	   , u.de_nm             as  팀탈퇴일자
	   , a.acqs_score        AS  취득점수
    from MF_COACH_TNCRS_COMPL_STTUS a
	     left outer join 
	     wd_stdr_year b 
	  on a.compl_year = b.stdr_year 	     left outer join 
	     wd_stdnt c 
	  on a.stdnt_id = c.stdnt_id 	     left outer join 
	     wd_coach d 
	  on a.kfa_coach_id = d.coach_id 	     left outer join 
	     wd_team e 
	  on a.psitn_team_id = e.team_id 	     left outer join 
	     wd_team_grad f 
	  on a.psitn_team_grad_cde = f.team_grad_cde 	     left outer join 
	     wd_mnnst g 
	  on a.mnnst_cde = g.mnnst_cde 	     left outer join 
	     wd_crse_cl h 
	  on a.crse_cl_cde = h.crse_cl_cde 	     left outer join 
	     wd_crse i 
	  on a.crse_cde = i.crse_cde 	     left outer join 
	     wd_crse_odr j 
	  on a.crse_odr = j.crse_odr 	     left outer join 
	     wd_compl k 
	  on a.compl_at = k.compl_at 	     left outer join 
	     wd_un_compl_resn l 
	  on a.un_compl_resn_cde = l.un_compl_resn_cde 	     left outer join 
	     wd_psexam_info m 
	  on a.psexam_info_cde = m.psexam_info_cde 	     left outer join 
	     wd_sexdstn o 
	  on a.coach_sexdstn_cde = o.sexdstn_cde 	     left outer join 
	     wd_agrde_lclas p 
	  on a.agrde_lclas_cde  = p.agrde_lclas_cde 	     left outer join 
	     wd_de q 
	  on a.edc_begin_de = q.de 	     left outer join 
	     wd_de r 
	  on a.edc_end_de = r.de 	     left outer join 
	     wd_de s 
	  on a.compl_de = s.de 	     left outer join 
	     wd_de t 
	  on a.team_regist_de = t.de 	     left outer join 
	     wd_de u 
	  on a.team_secsn_de = u.de 
  ;

comment on view  kfadm.지도자강습회수료현황 is '지도자강습회수료현황';
comment on column kfadm.지도자강습회수료현황.기준연도명 is '기준연도명';
comment on column kfadm.지도자강습회수료현황.교육생아이디 is '교육생아이디';
comment on column kfadm.지도자강습회수료현황.교육생명 is '교육생명';
comment on column kfadm.지도자강습회수료현황.지도자아이디 is '지도자아이디';
comment on column kfadm.지도자강습회수료현황.지도자명 is '지도자명';
comment on column kfadm.지도자강습회수료현황.지도자생년웡일 is '지도자생년웡일';
comment on column kfadm.지도자강습회수료현황.지도자대분류명 is '지도자대분류명';
comment on column kfadm.지도자강습회수료현황.팀아이디 is '팀아이디';
comment on column kfadm.지도자강습회수료현황.팀명 is '팀명';
comment on column kfadm.지도자강습회수료현황.팀등급코드 is '팀등급코드';
comment on column kfadm.지도자강습회수료현황.팀등급명 is '팀등급명';
comment on column kfadm.지도자강습회수료현황.주관기관코드 is '주관기관코드';
comment on column kfadm.지도자강습회수료현황.주관기관명 is '주관기관명';
comment on column kfadm.지도자강습회수료현황.과정분류코드 is '과정분류코드';
comment on column kfadm.지도자강습회수료현황.과정분류명 is '과정분류명';
comment on column kfadm.지도자강습회수료현황.과정코드 is '과정코드';
comment on column kfadm.지도자강습회수료현황.과정명 is '과정명';
comment on column kfadm.지도자강습회수료현황.과정차수코드 is '과정차수코드';
comment on column kfadm.지도자강습회수료현황.과정차수명 is '과정차수명';
comment on column kfadm.지도자강습회수료현황.수료여부명 is '수료여부명';
comment on column kfadm.지도자강습회수료현황.미수료사유명 is '미수료사유명';
comment on column kfadm.지도자강습회수료현황.합격정보코드 is '합격정보코드';
comment on column kfadm.지도자강습회수료현황.합격정보명 is '합격정보명';
comment on column kfadm.지도자강습회수료현황.지도자성별 is '지도자성별';
comment on column kfadm.지도자강습회수료현황.연령대대분류코드 is '연령대대분류코드';
comment on column kfadm.지도자강습회수료현황.교육시작일자 is '교육시작일자';
comment on column kfadm.지도자강습회수료현황.교육종류일자 is '교육종류일자';
comment on column kfadm.지도자강습회수료현황.수료일자 is '수료일자';
comment on column kfadm.지도자강습회수료현황.팀등록일자 is '팀등록일자';
comment on column kfadm.지도자강습회수료현황.팀탈퇴일자 is '팀탈퇴일자';
comment on column kfadm.지도자강습회수료현황.취득점수 is '취득점수';


 
 