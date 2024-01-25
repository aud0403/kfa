-- kfadm.재무손익계산서 source

CREATE OR REPLACE VIEW kfadm.재무손익계산서
AS WITH RECURSIVE acnt_sbject(acnt_sbject_cde, acnt_sbject_nm, acnt_sbject_inqire_nm, upper_acnt_sbject_cde, sort_ordr, level, path, cycle) AS (
         SELECT g.acnt_sbject_cde,
            g.acnt_sbject_nm,
            g.acnt_sbject_inqire_nm,
            g.upper_acnt_sbject_cde,
            g.sort_ordr,
            0 AS "?column?",
            ARRAY[g.acnt_sbject_cde] AS "array",
            false AS bool
           FROM kfadm.wd_fnnr_acnt_sbject g
          WHERE g.upper_acnt_sbject_cde::text = 'KFA00'::text
        UNION ALL
         SELECT g.acnt_sbject_cde,
            g.acnt_sbject_nm,
            g.acnt_sbject_inqire_nm,
            g.upper_acnt_sbject_cde,
            g.sort_ordr,
            fa.level + 1,
            fa.path || g.acnt_sbject_cde,
            g.acnt_sbject_cde::text = ANY (fa.path::text[])
           FROM kfadm.wd_fnnr_acnt_sbject g,
            acnt_sbject fa
          WHERE g.upper_acnt_sbject_cde::text = fa.acnt_sbject_cde::text AND NOT fa.cycle
        )
 SELECT a.accnut_unit_cde AS "회계단위코드",
    a.accnut_ym AS "회계년월",
    substr(a.accnut_ym::text, 1, 4) AS "회계년도",
    substr(a.accnut_ym::text, 5, 2) AS "회계월",
    a.acnt_sbject_cde AS "계정과목코드",
    a.acnt_blce AS "계정잔액",
    b.acnt_sbject_nm AS "계정과목명",
    b.acnt_sbject_inqire_nm AS "계정과목조회명",
    b.upper_acnt_sbject_cde AS "상위계정과목코드",
    b.sort_ordr AS "정렬순서",
    b.level AS "레벨",
    b.path AS "경로"
   FROM kfadm.wf_fnnr_prflos_bill a,
    acnt_sbject b
  WHERE a.acnt_sbject_cde::text = b.acnt_sbject_cde::text
  ORDER BY a.accnut_unit_cde, a.accnut_ym, b.path;
  
comment on view kfadm.재무손익계산서 is '재무손익계산서';
comment on column kfadm.재무손익계산서.회계단위코드 is '회계단위코드';
comment on column kfadm.재무손익계산서.회계년월 is '회계년월';
comment on column kfadm.재무손익계산서.회계년도 is '회계년도';
comment on column kfadm.재무손익계산서.회계월 is '회계월';
comment on column kfadm.재무손익계산서.계정과목코드 is '계정과목코드';
comment on column kfadm.재무손익계산서.계정잔액 is '계정잔액';
comment on column kfadm.재무손익계산서.계정과목명 is '계정과목명';
comment on column kfadm.재무손익계산서.계정과목조회명 is '계정과목조회명';
comment on column kfadm.재무손익계산서.상위계정과목코드 is '상위계정과목코드';
comment on column kfadm.재무손익계산서.정렬순서 is '정렬순서';
comment on column kfadm.재무손익계산서.레벨 is '레벨';
comment on column kfadm.재무손익계산서.경로 is '경로';

 
 