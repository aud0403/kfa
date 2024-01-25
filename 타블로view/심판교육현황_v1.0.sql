drop view 심판교육현황;

create view 심판교육현황 
as
select b.stdr_year_nm                  as 기준연도
       , a.edc_crse_no                 as 교육과정코드
       , c.edc_nm                      as 교육과정명
       , a.edc_cl_cde                  as 교육분류코드
       , d.edc_cl_nm                   as 교육분류명
       , a.progrs_sittn_cde            as 진행상황코드
       , e.progrs_sittn_nm             as 진행상황명
       , a.edc_area_cde                as 교육지역코드
       , f.edc_area_nm                 as 교육지역명
       , a.retire_referee_at           as 은퇴시판여부코드
       , g.at_nm                       as 은퇴심판여부
       , a.promt_wsp_cde               as 승급급수코드
       , h.promt_wsp_nm                as 승급급수명
       , a.wnty_cmpet_asign_at         as 전국대회배정여부코드
       , i.at_nm                       as 전국대회배정여부
       , a.fyer_cnd_cde                as 연간조건코드
       , j.fyer_cnd_nm                 as 연간조건명
       , a.term_cnd_cde                as 횟수조건코드
       , a.act_cnd_cde                 as 활동조건코드
       , k.term_cnd_nm                 as 횟수조건명
       , l.act_cnd_nm                  as 활동조건명
       , a.qualf_cnvrs_edc_at          as 자격전환교육여부코드
       , m.at_nm                       as 자격전환교육여부
       , a.cnfdn_referee_cnvrs_wsp_cde as 신임심판전환급수코드
       , n.referee_wsp_nm              as 신임심판전환급수명
       , a.referee_id                  as 심판아이디
       , o.referee_nm                  as 심판명
       , concat(substring(o.brthdy,1,4),'.',substring(o.brthdy,5,2),'.',substring(o.brthdy,7,2))   as 심판생년월일
       , o.hmnm_se_nm                  as 심판동명구분명
       , a.regist_asoc_cde     as 등록협회코드
       , p.referee_regist_asoc_nm      as 등록협회명 
       , a.referee_wsp_cde             as 심판급수코드
       , q.referee_wsp_nm              as 심판급수명
       , a.ftness_pasage_cde           as 체력통과코드
       , r.pasage_nm                   as 체력통과명
       , a.theory_pasage_cde           as 이론통과코드
       , s.pasage_nm                   as 이론통과명
       , a.prcttq_pasage_cde           as 실기통과코드
       , t.pasage_nm                   as 실기통과명
       , u.psexam_cde                  as 합격코드
       , u.psexam_nm                   as 합격명
       , v.at_nm                       as 심판전환여부
       , w.de_nm                       as 교육시작일자
       , x.de_nm                       as 교육완료일자
       , y.edc_place_nm                as 교육장소명
       , z.de_nm                       as 체력이수일자
       , aa.de_nm                      as 이론이수일자
       , ab.de_nm                      as 실기이수일자
       , ac.de_nm                      as 합격일자
       , a.edc_term                    as 교육횟수
	   , a.referee_asign_essntl_term   as 심판배정필수횟수
       , a.apply_garden                as 신청정원
       , a.edc_daycnt                  as 교육일수
       , a.edc_co                      as 교육수
    from wf_referee_edc_sttus  a
         left outer join 
	     wd_stdr_year b 
	  ON a.stdr_year = b.stdr_year 	     left outer join 
	     wd_referee_edc_crse c 
	  ON a.edc_crse_no = c.edc_crse_no 	     left outer join 
	     wd_edc_cl d 
	  ON a.edc_cl_cde = d.edc_cl_cde 	     left outer join 
	     wd_progrs_sittn e 
	  ON a.progrs_sittn_cde = e.progrs_sittn_cde 	     left outer join 
	     wd_referee_edc_area f 
	  ON a.edc_area_cde = f.edc_area_cde 	     left outer join 
	     wd_retire_referee g 
	  ON a.retire_referee_at = g.retire_referee_at 	     left outer join 
	     wd_promt_wsp h 
	  ON a.promt_wsp_cde = h.promt_wsp_cde 	     left outer join 
	     wd_wnty_cmpet_asigh i 
	  ON a.wnty_cmpet_asign_at = i.wnty_cmpet_asign_at 	     left outer join 
	     wd_fyer_cnd_cde j 
	  ON a.fyer_cnd_cde = j.fyer_cnd_cde 	     left outer join 
	     wd_term_cnd k 
	  ON a.term_cnd_cde = k.term_cnd_cde 	     left outer join 
	     wd_act_cnd l 
	  ON a.act_cnd_cde = l.act_cnd_cde 	     left outer join 
	     wd_qualf_cnvrs_edc m 
	  ON a.qualf_cnvrs_edc_at = m.qualf_cnvrs_edc_at 	     left outer join 
	     wd_referee_wsp n 
	  ON a.cnfdn_referee_cnvrs_wsp_cde = n.referee_wsp_cde 	     left outer join 
	     wd_referee o 
	  ON a.referee_id = o.referee_id 	     left outer join 
	     wd_referee_regist_asoc p 
	  ON a.regist_asoc_cde = p.referee_regist_asoc_cde 	     left outer join 
	     wd_referee_wsp q 
	  ON a.referee_wsp_cde = q.referee_wsp_cde 	     left outer join 
	     wd_pasage r 
	  ON a.ftness_pasage_cde = r.pasage_cde 	     left outer join 
	     wd_pasage s 
	  ON a.theory_pasage_cde = s.pasage_cde 	     left outer join 
	     wd_pasage t 
	  ON a.prcttq_pasage_cde = t.pasage_cde 	     left outer join 
	     wd_psexam u 
	  ON a.psexam_cde = u.psexam_cde 	     left outer join 
	     wd_referee_cnvrs v 
	  ON a.referee_cnvrs_at = v.referee_cnvrs_at 	     left outer join 
	     wd_de w 
	  ON a.edc_begin_de = w.de 	     left outer join 
	     wd_de x 
	  ON a.edc_compt_de = x.de 	     left outer join 
	     wd_referee_edc_place y 
	  ON a.edc_place_nm = y.edc_place_nm	     left outer join 
	     wd_de z 
	  ON a.ftness_compl_de = z.de 	     left outer join 
	     wd_de aa 
	  ON a.theory_compl_de = aa.de 	     left outer join 
	     wd_de ab 
	  ON a.prcttq_compl_de = ab.de 	     left outer join 
	     wd_de ac 
	  ON a.psexam_de = ac.de  
--where a.edc_place_nm is not null
  ;
 
 
 
comment on view kfadm.심판교육현황 is '심판교육현황'; 
comment on column kfadm.심판교육현황.기준연도 is '기준연도';
comment on column kfadm.심판교육현황.교육과정코드 is '교육과정코드';
comment on column kfadm.심판교육현황.교육과정명 is '교육과정명';
comment on column kfadm.심판교육현황.교육분류코드 is '교육분류코드';
comment on column kfadm.심판교육현황.교육분류명 is '교육분류명';
comment on column kfadm.심판교육현황.진행상황코드 is '진행상황코드';
comment on column kfadm.심판교육현황.진행상황명 is '진행상황명';
comment on column kfadm.심판교육현황.교육지역코드 is '교육지역코드';
comment on column kfadm.심판교육현황.교육지역명 is '교육지역명';
comment on column kfadm.심판교육현황.은퇴시판여부코드 is '은퇴시판여부코드';
comment on column kfadm.심판교육현황.은퇴심판여부 is '은퇴심판여부';
comment on column kfadm.심판교육현황.승급급수코드 is '승급급수코드';
comment on column kfadm.심판교육현황.승급급수명 is '승급급수명';
comment on column kfadm.심판교육현황.전국대회배정여부코드 is '전국대회배정여부코드';
comment on column kfadm.심판교육현황.전국대회배정여부 is '전국대회배정여부';
comment on column kfadm.심판교육현황.연간조건코드 is '연간조건코드';
comment on column kfadm.심판교육현황.연간조건명 is '연간조건명';
comment on column kfadm.심판교육현황.횟수조건코드 is '횟수조건코드';
comment on column kfadm.심판교육현황.횟수조건명 is '횟수조건명';
comment on column kfadm.심판교육현황.활동조건코드 is '활동조건코드';
comment on column kfadm.심판교육현황.활동조건명 is '활동조건명';
comment on column kfadm.심판교육현황.자격전환교육여부코드 is '자격전환교육여부코드';
comment on column kfadm.심판교육현황.자격전환교육여부 is '자격전환교육여부';
comment on column kfadm.심판교육현황.신임심판전환급수코드 is '신임심판전환급수코드';
comment on column kfadm.심판교육현황.신임심판전환급수명 is '신임심판전환급수명';
comment on column kfadm.심판교육현황.심판아이디 is '심판아이디';
comment on column kfadm.심판교육현황.심판명 is '심판명';
comment on column kfadm.심판교육현황.심판생년월일 is '심판생년월일';
comment on column kfadm.심판교육현황.심판동명구분명 is '심판동명구분명';
comment on column kfadm.심판교육현황.등록협회코드 is '등록협회코드';
comment on column kfadm.심판교육현황.등록협회명 is '등록협회명';
comment on column kfadm.심판교육현황.심판급수코드 is '심판급수코드';
comment on column kfadm.심판교육현황.심판급수명 is '심판급수명';
comment on column kfadm.심판교육현황.체력통과코드 is '체력통과코드';
comment on column kfadm.심판교육현황.체력통과명 is '체력통과명';
comment on column kfadm.심판교육현황.이론통과코드 is '이론통과코드';
comment on column kfadm.심판교육현황.이론통과명 is '이론통과명';
comment on column kfadm.심판교육현황.실기통과코드 is '실기통과코드';
comment on column kfadm.심판교육현황.실기통과명 is '실기통과명';
comment on column kfadm.심판교육현황.합격코드 is '합격코드';
comment on column kfadm.심판교육현황.합격명 is '합격명';
comment on column kfadm.심판교육현황.심판전환여부 is '심판전환여부';
comment on column kfadm.심판교육현황.교육시작일자 is '교육시작일자';
comment on column kfadm.심판교육현황.교육완료일자 is '교육완료일자';
comment on column kfadm.심판교육현황.교육장소명 is '교육장소명';
comment on column kfadm.심판교육현황.체력이수일자 is '체력이수일자';
comment on column kfadm.심판교육현황.이론이수일자 is '이론이수일자';
comment on column kfadm.심판교육현황.실기이수일자 is '실기이수일자';
comment on column kfadm.심판교육현황.합격일자 is '합격일자';
comment on column kfadm.심판교육현황.교육횟수 is '교육횟수';
comment on column kfadm.심판교육현황.심판배정필수횟수 is '심판배정필수횟수';
comment on column kfadm.심판교육현황.신청정원 is '신청정원';
comment on column kfadm.심판교육현황.교육일수 is '교육일수';
comment on column kfadm.심판교육현황.교육수 is '교육수';


