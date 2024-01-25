------------------wd_stdm_faci_stat

select  faci_stat_nm
     , (ROW_NUMBER() over(ORDER BY faci_stat_nm )) AS sort_ordr
 from kfadm.wf_wnty_alsfc_detail
 group by faci_stat_nm
 ;
 
-----------------wd_stdm_faci_tel

select faci_tel_no
     , (ROW_NUMBER() over(ORDER BY faci_tel_no )) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by faci_tel_no
  ;
  
 -------------------wd_stdm_ssm_dsn
select ssm_dsn_yn
     , (ROW_NUMBER() over(ORDER BY ssm_dsn_yn)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by ssm_dsn_yn
  ;
  
 
 ----------------------wd_stdm_addr
select addr_emd_nm
	 , addr_cpb_nm 
	 , addr_ctpv_nm 
     , (ROW_NUMBER() over(ORDER BY addr_amd_nm)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  --group by addr_amd_nm
  ;
 
 select * from kfadm.wf_wnty_alsfc_detail;
 
 
 --------------------wd_stdm_fmng_type

 select fmng_type_gb_nm
     , (ROW_NUMBER() over(ORDER BY fmng_type_gb_nm)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by fmng_type_gb_nm
  ;
 
 
 -----------------------wd_stdm_fmng_dept
 select fmng_dept_nm
     , (ROW_NUMBER() over(ORDER BY fmng_dept_nm)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by fmng_dept_nm
  ;
 
 -------------------------wd_stdm_nmg_user_tel

 select faci_mng_user_telno
     , (ROW_NUMBER() over(ORDER BY faci_mng_user_telno)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by faci_mng_user_telno
  ;
 
 
 
 ----------------------wd_stdm_inout_gbn

 select inout_gbn_nm
     , (ROW_NUMBER() over(ORDER BY inout_gbn_nm)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by inout_gbn_nm
  ;
 
 
 -----------------------wd_stdm_nation
 select nation_yn
     , (ROW_NUMBER() over(ORDER BY nation_yn)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by nation_yn
  ;
 
 -----------------------wd_stdm_faci

 select faci_nm
     , (ROW_NUMBER() over(ORDER BY faci_nm)) AS sort_ordr
  from kfadm.wf_wnty_alsfc_detail
  group by faci_nm
  ;
 
 
 
 
 
 
 
 
 
 
 