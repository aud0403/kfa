drop view 구분경리FACT;

create view 구분경리FACT
AS
select g.stdr_year_nm     as 회계년도
     , B.bsns_cde 		  as 사업코드
     , b.bsns_nm          as 사업명
     , c.manp_se_cde      as 제원구분코드
     , c.manp_se_nm       as 제원구분명
     , d.acnt_sbject_cde  as 계정과목코드
     , d.acnt_sbject_nm   as 계정과목명
     , e.detail_bsns_cde  as 세부사업코드
     , e.detail_bsns_nm   as 세부사업명
     , f.accnut_unit_cde  as 회계단위코드
     , f.accnut_unit_nm   as 회계단위명
     , h.stdr_mt_nm       as 회계월
     , a.excut_amount     as 집행금액
  from wf_fnnr_se_accnt a
       left outer join
 	   wd_fnnr_bsns b
    on a.bsns_cde = b.bsns_cde
       left outer join 
       wd_fnnr_manp_se c 
    on a.manp_se_cde  = c.manp_se_cde 
       left outer join 
       wd_fnnr_acnt_sbject d 
    on a.acnt_sbject_cde  = d.acnt_sbject_cde 
       left outer join 
       wd_fnnr_detail_bsns e
    on a.detail_bsns_cde  = e.detail_bsns_cde 
       left outer join 
       wd_fnnr_accnut_unit f 
    on a.accnut_unit_cde  = f.accnut_unit_cde 
       left outer join  
       wd_stdr_year g 
    on a.accnut_year = g.stdr_year  
       left outer join
       wd_stdr_mt h
    on a.accnut_mt = h.stdr_mt 
 	   ;


comment on view kfadm.구분경리FACT is '구분경리FACT'; 	  
comment on column kfadm.구분경리FACT.회계년도 is '회계년도';
comment on column kfadm.구분경리FACT.사업코드 is '사업코드';
comment on column kfadm.구분경리FACT.사업명 is '사업명';
comment on column kfadm.구분경리FACT.제원구분코드 is '제원구분코드';
comment on column kfadm.구분경리FACT.제원구분명 is '제원구분명';
comment on column kfadm.구분경리FACT.계정과목코드 is '계정과목코드';
comment on column kfadm.구분경리FACT.계정과목명 is '계정과목명';
comment on column kfadm.구분경리FACT.세부사업코드 is '세부사업코드';
comment on column kfadm.구분경리FACT.세부사업명 is '세부사업명';
comment on column kfadm.구분경리FACT.회계단위코드 is '회계단위코드';
comment on column kfadm.구분경리FACT.회계단위명 is '회계단위명';
comment on column kfadm.구분경리FACT.집행금액 is '집행금액';
comment on column kfadm.구분경리FACT.회계월 is '회계월';

 	  
