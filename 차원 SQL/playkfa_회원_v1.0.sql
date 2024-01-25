---------------------playkfa
----------------------회원접속현황

-----wd_ctgry, 


select distinct   main_cate, sub_cate
from tbl_log_info
;
insert into kfadm.wd_ctcry values('1','1',1);
insert into kfadm.wd_ctcry values('^','미입력',999999999);

select seq_no as ctgry_no
     , sub_id as ctgry_id
     , title  as ctgry_upper_no
     , (ROW_NUMBER() over(ORDER BY rank )) AS sort_ordr 
  from tbl_product_main_cate;



-----------------wd_sub_ctgry

 truncate table 
 
insert into kfadm.wd_sub_ctgry values('1','1',1);
insert into kfadm.wd_sub_ctgry values('^','미입력',999999999);




select distinct product_sub_cate from tbl_product_info;


-----------wd_mber
  
select mber_no  
     , mber_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select mber_no
		     , mber_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY mber_no  ) AS row_num
		     , sort_ordr
		  from (  
				select mber_no
				     , mber_nm
				     , brthdy
					-- , a.mber_nm||'_'||a.brthdy as hmnm_se_nm
				     , case when brthdy ='미입력' 
				            then mber_nm|| case when user_sex= 'M' then '(남)'
						                  when user_sex= 'F' then '(여)' else '(미입력)' end
				            else
						       concat(mber_nm,' ',substring(a.brthdy,1,4),'-',substring(a.brthdy,5,2),'-',substring(a.brthdy,7,2))||
						       case when user_sex= 'M' then '(남)'
						            when user_sex= 'F' then '(여)' else '(미입력)' end 
						    end
				     as hmnm_se_nm
					 , (ROW_NUMBER() over(ORDER BY substring(mber_nm,1,1), substring(mber_nm,2,1),substring(mber_nm,3,1),mber_no )) AS sort_ordr 
				  from (
						select seq_no as mber_no 
				   	 		 , nickname as mber_nm
				     		 , case when user_birth is null then '미입력'else replace(user_birth,'-','') end as brthdy 
				     		 , user_sex
						  from tbl_user
						) a
		 ) b)c
		
 ;
   



select * from tbl_user
 where user_birth is null 
;



select user_sex  from tbl_user;
   
 --------------------회원현황

----wd_moblphon_crtfc

insert into  kfadm.wd_moblphon_crtfc values ('Y','인증확인',1);
insert into  kfadm.wd_moblphon_crtfc values ('N','인증미확인',2);
insert into  kfadm.wd_moblphon_crtfc values ('^','미입력',999999999);


--------------wd_self_crtfc
insert into  kfadm.wd_self_crtfc values ('Y','본인인증확인',1);
insert into  kfadm.wd_self_crtfc values ('N','본인인증미확인',2);
insert into  kfadm.wd_self_crtfc values ('^','미입력',999999999);


-----------------wd_interpart
select distinct  interpark_code
  from tbl_user
;
insert into kfamd.wd_interpart values('200','200',1);
insert into kfamd.wd_interpart values('400','400',2);
insert into kfamd.wd_interpart values('401','401',3);
insert into kfamd.wd_interpart values('500','500',4);
insert into kfamd.wd_interpart values('503','503',5);
insert into kfamd.wd_interpart values('^','미입력',999999999);




--------------------wd_mber_grad

select distinct  grade_seq
  from tbl_user
;

select seq_no as mber_grad_no
     , grade_name  as mber_grad_nm
     , (ROW_NUMBER() over(ORDER BY seq_no )) AS sort_ordr 
  from tbl_user_grade;


---------------------wd_delete_at
 select distinct  del_check
  from tbl_user
;

insert into kfadm.wd_delete_at values ('Y','삭제',1);
insert into kfadm.wd_delete_at values ('N','활성화',2);
insert into kfadm.wd_delete_at values ('^','미입력',999999999);


-----------------wd_markt_agre

 select distinct  markecting_check
  from tbl_user
;
insert into kfadm.wd_markt_agre values ('Y','승인',1);
insert into kfadm.wd_markt_agre values ('N','미승인',2);
insert into kfadm.wd_markt_agre values ('^','미입력',999999999);

----------------wd_event_agre

 select distinct  event_agree_check
  from tbl_user
;
insert into kfadm.wd_event_agre values ('Y','승인',1);
insert into kfadm.wd_event_agre values ('N','미승인',2);
insert into kfadm.wd_event_agre values ('^','미입력',999999999);

--------------------wd_14_belo
 select distinct  "14_YN"
  from tbl_user
;
insert into kfadm.wd_14_belo values ('Y','14세 이상',1);
insert into kfadm.wd_14_belo values ('N','14세 미만',2);
insert into kfadm.wd_14_belo values ('^','미입력',999999999);



-------------------wd_markt_ty
 select distinct markecting_check,markecting_check_type
  from tbl_user
;

insert into kfadm.wd_markt_ty values ('1','승인',1);
insert into kfadm.wd_markt_ty values ('0','미승인',2);
insert into kfadm.wd_markt_ty values ('^','미입력',999999999);







