----------------wf_play_kfa_goods_sttus
---------------wd_goods

select seq_no as goods_no
     , title as goods_nm
     , (ROW_NUMBER() over(ORDER BY seq_no )) AS sort_ordr 
  from tbl_product_info;

 
 ---------------wd_goods_optn

 select seq_no as goods_optn_no
      , option_name  as  goods_optn_nm
      , (ROW_NUMBER() over(ORDER BY seq_no )) AS sort_ordr 
   from tbl_product_option_stock;
   
  
  -----------------wd_site
  
  
 select distinct  site_cate_seq 
   from tbl_product_info
  order by site_cate_seq
   ;
 
select site_cate_seq as site_no
     , site_cate_title as site_nㅡ
     , (ROW_NUMBER() over(ORDER BY site_cate_seq )) AS sort_ordr 
  from tbl_site_info;
 
 ------------------wd_goods_esnti
  
 select product_num as goods_esntl_no
      , title as goods_esntl_nm
      , (ROW_NUMBER() over(ORDER BY product_num )) AS sort_ordr 
   from tbl_product_info
 ;
 
 -------------------wd_goods_ty


  insert into kfadm.wd_goods_ty values ('1','1',1);
  insert into kfadm.wd_goods_ty values ('^','미입력',999999999);
  
 
 --------------------wd_goods_stock_ty

 select distinct  product_stock_type
   from tbl_product_info;
  insert into kfadm.wd_goods_stock_ty values('0','0',1);
  insert into kfadm.wd_goods_stock_ty values('^','미입력',999999999);
  
  
----------------------wd_promot
  
select distinct  promoted 
from tbl_product_info
;
  insert into kfadm.wd_promot values('0','프로모트 미사용',1);
  insert into kfadm.wd_promot values('^','미입력',999999999);

---------------------wd_sle_dat_estbs

insert into kfadm.wd_sle_dat_estbs values ('1','설정',1);
insert into kfadm.wd_sle_dat_estbs values ('0','미설정',2);
insert into kfadm.wd_sle_dat_estbs values ('^','미입력',999999999);

-----------------wd_delete

select distinct  del_check 
from tbl_product_info
;

insert into kfadm.wd_delete values ('0','공개',1);
insert into kfadm.wd_delete values ('1','판매준비중',2);
insert into kfadm.wd_delete values ('2','비공개',3);
insert into kfadm.wd_delete values ('^','미입력',999999999);

----------------wd_dscnt_ty

select distinct discount_cal_price
,discount_check
,discount_price
,discount_rate
,discount_type
from tbl_product_info
;

insert into kfadm.wd_dscnt_ty values('0','0',1);
insert into kfadm.wd_dscnt_ty values('1','1',2);
insert into kfadm.wd_dscnt_ty values('2','2',3);
insert into kfadm.wd_dscnt_ty values('^','미입력',999999999);


-----------------wd_kfa_indpndnc_fee

select distinct kfa_independent_fee_active
from tbl_product_info
;

insert into kfadm.wd_kfa_indpndnc_fee values('','',1);
insert into kfadm.wd_kfa_indpndnc_fee values('^','미입력',999999999);



-------------------wd_addnl_pc
select add_price_active, option_extra_charge
from tbl_product_option_stock
--where option_extra_charge is null
;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ㅠ

insert into kfadm.wd_addnl_pc values('0','0',1);
insert into kfadm.wd_addnl_pc values('1','1',2);
insert into kfadm.wd_addnl_pc values('^','미입력',999999999);

--------------------wd_dscnt

select *
from tbl_product_info
;

insert into kfadm.wd_dscnt values('0','비할인',1);
insert into kfadm.wd_dscnt values('1','할인',2);
insert into kfadm.wd_dscnt values('^','미입력',999999999);

-----------------------wf_play_kfa_goods_sle_sttus

------------wd_order

select seq_no as order_no
     , ''||regdate||'_'||req_name||'_'||title||'' as order_nm
     , (ROW_NUMBER() over(ORDER BY seq_no )) AS sort_ordr 
  from tbl_order_info 
 ;

--------------wd_xport

select distinct  export_flag, export_number  from tbl_order_info; 

insert into kfadw.wd_xport values ('0','국내',1);
insert into kfadw.wd_xport values ('1','수출',2);
insert into kfadw.wd_xport values ('^','미입력',999999999);

---------------wd_pg

select distinct  pg_code, pg_number, pg_token  from TBL_ORDER_INFO;

insert into kfadm.wd_pg values ('creditcard','creditcard',1);
insert into kfadm.wd_pg values ('^','미입력',999999999);


----------------------wd_dlvy_area

select postcode as dlvy_area_zip
     , address1 as dlvy_area_nm
     , (ROW_NUMBER() over(ORDER BY postcode )) AS sort_ordr 
 from TBL_ORD ER_INFO
group by postcode
 ; 


select * from TBL_ORDER_INFO
 where POSTCODE = '01230'
;
select postcode as dlvy_area_zip
     , address1 as dlvy_area_nm
     , (ROW_NUMBER() over(ORDER BY postcode )) AS sort_ordr 
  from (
		  select * from (select postcode
						      , address1
						      , ROW_NUM 
						      , ROW_NUMBER() OVER(PARTITION BY postcode ORDER BY ROW_NUM DESC ) as index
						  from (SELECT postcode
									 , address1
									 , ROW_NUMBER() OVER( PARTITION BY postcode ORDER BY regdate ) AS ROW_NUM
								 from (select postcode 
							   			    , address1 
							  			    , regdate
							  			 from playkfa.TBL_ORDER_INFO) A 
								group by postcode, address1, regdate) B ) C
				where index = 1 )A;

---------------wd_point_use


truncate table kfadm.wd_point_use;
			
select distinct  point_order_check, point_price  from TBL_ORDER_INFO;

insert into kfadm.wd_point_use values ('0','포인트 미사용',1);
insert into kfadm.wd_point_use values ('1','포인트 사용',2);
insert into kfadm.wd_point_use values ('^','미입력',9999999999);

----------------wd_dlvy_ty

select distinct  delivery_type from tbl_order_item;

insert into kfadm.wd_dlvy_ty values('1','1',1);
insert into kfadm.wd_dlvy_ty values('^','미입력',999999999);


--------------------wd_ovsea_dlvy_goods

select * from  tbl_order_item;
select distinct  export_delivery_state from  tbl_order_item;

insert into kfadm.wd_ovsea_dlvy_goods values('1','1',1);
insert into kfadm.wd_ovsea_dlvy_goods values('^','미입력',999999999);

-------------------wd_part_cancl

select   * from tbl_order_item ;
select distinct  refund_check from tbl_order_item ;

insert into kfadm.wd_part_cancl values ('0','취소내역 없음',1);
insert into kfadm.wd_part_cancl values ('^','미입력',999999999);


------------------------wd_refnd

insert into kfadm.wd_refnd values ('Y','환불',1);
insert into kfadm.wd_refnd values ('^','미입력',999999999);

----------------------------wd_purchs_dcsn

insert into kfadm.wd_purchs_dcsn values ('Y','구매 확정',1);
insert into kfadm.wd_purchs_dcsn values ('^','미입력',999999999);

------------------------wd_card_cmpny


select distinct  card_code  from tbl_order_info ;
select * from tbl_card_info;

select ini_code as card_cmpny_cde
     , card_name   as card_cmpny_nm
     , (ROW_NUMBER() over(ORDER BY ini_code )) AS sort_ordr 
 from tbl_card_info;



select  promoted from  tbl_product_info ;


----------------------------------------wd_advantk_conect

select distinct  
       booking_place as advantk_conect_cde
     , booking_place as advantk_conect_nm
     , (ROW_NUMBER() over(ORDER BY booking_place )) AS sort_ordr 
  from tbl_order_booking
 group by booking_place
;

---------------------------------wd_ticket_sj

select distinct 
       product_title as ticket_sj_cde
     , product_title as ticket_sj_nm
     , (ROW_NUMBER() over(ORDER BY product_title )) AS sort_ordr 
  from tbl_order_booking 
 group by product_title
;
---------------------------------wd_ticket_pc

select cast(trunc(ticket_price/10000)||'만원' as text) 
    , ticket_price/10000
	, ticket_price
	, case when round(ticket_price/10000, 10) - FLOOR(round(ticket_price/10000, 10)) <> 0 then 0 else 1 end
	, cast(trunc(ticket_price/10000)||'만'as text) 
	, replace ( reverse(SUBSTRING( reverse(cast(ticket_price as text)),1,6)), '.0','') || '원'
  from tbl_order_booking 
 order by 1
;


select
      ticket_price as ticket_pc_cde
     , case when round(ticket_price/10000, 10) - FLOOR(round(ticket_price/10000, 10)) <> 0 
            then cast(trunc(ticket_price/10000)||'만'as text) ||replace ( reverse(SUBSTRING( reverse(cast(ticket_price as text)),1,6)), '.0','') || '원'
            else cast(trunc(ticket_price/10000)||'만원' as text)  end as ticket_pc_nm
	 , (ROW_NUMBER() over(ORDER BY ticket_price )) AS sort_ordr 
  from tbl_order_booking
 group by ticket_price
 order by ticket_price
  ;


---------------------wd_ticket_goods
 


select product_code as goods_cde
     , product_name as goods_nm
     , concert_name as game_place_nm
     , concert_date || ' ' || concert_time || '(' || concert_day || ')' as game_info_nm
     , (ROW_NUMBER() over(ORDER BY product_code )) AS sort_ordr 
  from PLAYKFA.tbl_booking_data_info
 --where product_name != '&#65533;&#65533;&#65533;쒕&#65533;援&#65533; vs &#65533;꾩씠&#65533;щ&#65533;&#65533;&#65533; (11.1'
 group by product_code, product_name, concert_name, concert_date || ' ' || concert_time || '(' || concert_day || ')'
;
 
-----------------------wd_pay_mn

select buy_way1 as pay_mn_cde
     , buy_way1 as pay_mn_nm
     , (ROW_NUMBER() over(ORDER BY buy_way1 )) AS sort_ordr 
from tbl_booking_data_info
where buy_way1 is not null
 group by buy_way1
;

-----------------------wd_seat_grad

select SPLIT_PART(seat_grade_name::VARCHAR, '(', 1) as seat_grad_cde
     , SPLIT_PART(seat_grade_name::VARCHAR, '(', 1) as seat_grad_nm
     , (ROW_NUMBER() over(ORDER BY SPLIT_PART(seat_grade_name::VARCHAR, '(', 1) )) AS sort_ordr 
  from tbl_booking_data_info
 group by  SPLIT_PART(seat_grade_name::VARCHAR, '(', 1)
  ;

---------------------- wd_ticket_knd
 
select delivery_info as ticket_knd_cde
     , delivery_info as ticket_knd_nm
     , (ROW_NUMBER() over(ORDER BY delivery_info )) as sort_ordr
  from tbl_booking_data_info
 group by delivery_info
  ;

-----------------------wd_pay_cmpny


 select buy_way1_name as pay_cmpny_cde
      , buy_way1_name as pay_cmpny_nm
      , (ROW_NUMBER() over(ORDER BY buy_way1_name )) as sort_ordr
   from tbl_booking_data_info
  group by buy_way1_name
   ;




