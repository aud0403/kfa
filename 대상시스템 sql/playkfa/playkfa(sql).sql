CREATE TABLE "authority" (
       authority_name varchar(50)
     ,default_check                   numeric
     ,rank                            numeric
     ,title                           varchar(50)
     ,authority_name                  varchar(50)
     ,default_check                   numeric
     ,rank                            numeric
     ,title                           varchar(50)

 );
CREATE TABLE "tbl_admin" (
       seq_no numeric
     ,agency_seq                      numeric
     ,agent_file                      numeric
     ,del_check                       numeric
     ,designer_active                 numeric
     ,regdate                         timestamp
     ,super_active                    numeric
     ,uptdate                         timestamp
     ,user_authority                  numeric
     ,user_email                      varchar(255)
     ,user_name                       varchar(255)
     ,user_position                   varchar(255)
     ,user_pw                         varchar(255)
     ,resell_seq                      numeric
     ,site_cate_seq                   numeric

 );
CREATE TABLE "tbl_admin_contact" (
       seq_no numeric
     ,admin_seq                       numeric
     ,contact_department              varchar(255)
     ,contact_email                   varchar(255)
     ,contact_name                    varchar(255)
     ,contact_phone                   varchar(255)
     ,contact_rank                    varchar(255)
     ,del_check                       numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,tax_officer_check               numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_admin_info" (
       seq_no numeric
     ,address                         varchar(255)
     ,admin_seq                       numeric
     ,bank_account_holder             varchar(255)
     ,bank_account_number             varchar(255)
     ,bank_name                       varchar(255)
     ,business_class                  numeric
     ,business_number                 varchar(255)
     ,business_registration_file_seq  numeric
     ,business_sector                 varchar(255)
     ,business_type                   varchar(255)
     ,company_name                    varchar(255)
     ,copy_of_account_file_seq        numeric
     ,del_check                       numeric
     ,detail_address                  varchar(255)
     ,domestic_international_check    numeric
     ,postcode                        varchar(255)
     ,regdate                         timestamp
     ,resident_number                 varchar(255)
     ,sub_business_number             varchar(255)
     ,uptdate                         timestamp
     ,biz_code                        varchar(255)
     ,fee_rate1                       double
     ,fee_rate2                       double
     ,acc_biz_code                    varchar(255)

 );
CREATE TABLE "tbl_agency" (
       seq_no numeric
     ,approval_date                   timestamp
     ,cancel_date                     timestamp
     ,company_account_file            numeric
     ,company_email                   varchar(255)
     ,company_file                    numeric
     ,company_manager                 varchar(255)
     ,company_num                     varchar(255)
     ,company_tel                     varchar(255)
     ,del_check                       numeric
     ,name                            varchar(255)
     ,regdate                         timestamp
     ,super_active                    numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_alert_log" (
       seq_no numeric
     ,board_type                      numeric
     ,comment_seq                     numeric
     ,comment_type                    numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,hide_check                      numeric
     ,main_cate                       numeric
     ,product_seq                     numeric
     ,site_cate_seq                   numeric
     ,sub_cate                        numeric
     ,target_user                     numeric
     ,updated_date                    timestamp
     ,url                             varchar(255)
     ,user_agent                      varchar(255)
     ,userip                          varchar(40)
     ,user_idx                        numeric
     ,user_verification               numeric
     ,user_verification_date          timestamp

 );
CREATE TABLE "tbl_article_html" (
       seq_no numeric
     ,article_html                    text
     ,article_img_url                 numeric
     ,del_check                       numeric
     ,last_user_seq                   numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,upt_date                        timestamp
     ,skin_seq                        numeric

 );
CREATE TABLE "tbl_article_skin" (
       seq_no numeric
     ,skin_img_url                    numeric
     ,del_check                       numeric
     ,reg_date                        timestamp
     ,title                           varchar(255)
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_auction_info" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,bidding_participation_count     numeric
     ,bidding_participation_fee       numeric
     ,bidding_price                   numeric
     ,board_hits                      numeric
     ,content_eng                     text
     ,content_kr                      text
     ,del_check                       numeric
     ,end_date                        timestamp
     ,regdate                         timestamp
     ,runner_up_mode                  numeric
     ,search_content_eng              text
     ,search_content_kr               text
     ,search_title_eng                varchar(512)
     ,search_title_kr                 varchar(512)
     ,start_date                      timestamp
     ,starting_bid                    numeric
     ,title_eng                       varchar(512)
     ,title_kr                        varchar(512)
     ,uptdate                         timestamp
     ,current_price                   numeric
     ,open_date                       timestamp
     ,payment_check                   numeric
     ,delivery_main_base_price        numeric
     ,delivery_main_extra_area2       numeric
     ,delivery_main_extra_area3       numeric

 );
CREATE TABLE "tbl_auction_info_result" (
       seq_no numeric
     ,auction_seq                     numeric
     ,del_check                       numeric
     ,price                           numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_seq                        numeric
     ,user_id                         varchar(512)

 );
CREATE TABLE "tbl_auction_ini_request_history" (
       seq_no numeric
     ,code                            numeric
     ,message                         varchar(255)
     ,order_number                    varchar(255)
     ,order_seq_no                    numeric
     ,pg_number                       varchar(255)
     ,regdate                         timestamp
     ,result                          varchar(255)
     ,result_code                     text
     ,return_code                     text
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_auction_order_info" (
       seq_no numeric
     ,moid                            varchar(255)
     ,address1                        varchar(512)
     ,auth_token                      varchar(255)
     ,card_code                       numeric
     ,cash_receipt                    varchar(255)
     ,cid                             varchar(40)
     ,del_check                       numeric
     ,delivery_fee                    numeric
     ,delivery_state                  numeric
     ,detail_address1                 varchar(512)
     ,email                           varchar(100)
     ,export_flag                     numeric
     ,export_number                   varchar(50)
     ,express_company                 varchar(20)
     ,express_number                  varchar(20)
     ,extra_delivery_fee              numeric
     ,m_key                           varchar(255)
     ,memo                            varchar(512)
     ,mid                             varchar(255)
     ,oid                             varchar(255)
     ,order_admin_memo                mediumtext
     ,order_number                    varchar(255)
     ,pay_info                        varchar(50)
     ,pg_code                         varchar(255)
     ,pg_number                       varchar(255)
     ,pg_token                        varchar(255)
     ,point_order_check               numeric
     ,point_price                     numeric
     ,postcode                        varchar(6)
     ,product_img_url                 varchar(100)
     ,recv_name                       varchar(100)
     ,recv_phone                      varchar(20)
     ,regdate                         timestamp
     ,req_name                        varchar(100)
     ,req_name_eng                    varchar(100)
     ,req_phone                       varchar(20)
     ,state_date_time10               timestamp
     ,state_date_time3                timestamp
     ,state_date_time4                timestamp
     ,state_date_time5                timestamp
     ,state_date_time6                timestamp
     ,state_date_time7                timestamp
     ,state_date_time8                timestamp
     ,state_date_time9                timestamp
     ,tid                             varchar(45)
     ,title                           varchar(255)
     ,total_price                     numeric
     ,uptdate                         timestamp
     ,user_agent                      varchar(255)
     ,userip                          varchar(40)
     ,user_seq                        numeric
     ,auction_seq                     numeric

 );
CREATE TABLE "tbl_bank_info" (
       seq_no numeric
     ,bank_name                       varchar(255)
     ,del_check                       numeric
     ,rank                            numeric
     ,interpark_active                numeric
     ,interpark_code                  varchar(255)

 );
CREATE TABLE "tbl_board_codblock_content" (
       seq_no numeric
     ,board_hits                      numeric
     ,board_seq                       numeric
     ,del_check                       numeric
     ,file_seq                        numeric
     ,footer                          text
     ,header                          text
     ,header_img_url                  varchar(255)
     ,middle_conent                   text
     ,notice_check                    numeric
     ,regdate                         timestamp
     ,search_content                  text
     ,search_title                    varchar(255)
     ,site_cate_seq                   numeric
     ,title                           varchar(255)
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_board_content_tag" (
       seq_no numeric
     ,board_content_seq               numeric
     ,del_check                       numeric
     ,site_cate_seq                   numeric
     ,tag                             varchar(255)

 );
CREATE TABLE "tbl_board_content_tag_search" (
       seq_no numeric
     ,board_content_seq               numeric
     ,del_check                       numeric
     ,site_cate_seq                   numeric
     ,tag                             varchar(255)

 );
CREATE TABLE "tbl_board_info" (
       id numeric
     ,answer_level                    numeric
     ,c_coment_level                  numeric
     ,coment_level 
     ,del_check                       numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,text                            varchar(255)
     ,upt_date                        timestamp
     ,board_type                      numeric
     ,view_level                      numeric
     ,write_level                     numeric

 );
CREATE TABLE "tbl_calender_info" (
       seq_no numeric
     ,content_type                    numeric
     ,date                            date
     ,del_check                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,view_seq                        numeric

 );
CREATE TABLE "tbl_cancel_item" (
       seq_no numeric
     ,cancle_reason                   numeric
     ,memo                            varchar(120)
     ,order_seq_no                    numeric
     ,product_seq                     numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_card_info" (
       seq_no numeric
     ,card_code                       varchar(255)
     ,ini_code                        numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,card_name                       varchar(255)
     ,card_search                     varchar(255)

 );
CREATE TABLE "tbl_cart_item" (
       seq_no numeric
     ,delivery_type                   numeric
     ,option_seq                      numeric
     ,order_detail                    varchar(255)
     ,product_seq                     numeric
     ,quantity                        numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,title                           varchar(100)
     ,uptdate                         timestamp
     ,user_seq                        numeric
     ,del_check                       numeric

 );
CREATE TABLE "tbl_event_info" (
       seq_no numeric
     ,board_hits                      numeric
     ,content_eng                     text
     ,content_kr                      text
     ,del_check                       numeric
     ,end_date                        timestamp
     ,file_seq                        numeric
     ,regdate                         timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,uptdate                         timestamp
     ,vote_option                     numeric
     ,agent_seq                       numeric
     ,board_seq                       numeric
     ,search_content_eng              text
     ,search_content_kr               text
     ,event_attend                    numeric
     ,event_price                     numeric
     ,event_price_check               numeric
     ,event_type                      numeric
     ,open_date                       timestamp

 );
CREATE TABLE "tbl_event_info_attend" (
       seq_no numeric
     ,content_seq                     numeric
     ,del_check                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_event_info_attend_log" (
       seq_no numeric
     ,attend_type                     numeric
     ,del_check                       numeric
     ,reg_date                        timestamp
     ,upt_date                        timestamp
     ,user_seq                        numeric
     ,event_seq                       numeric
     ,content                         text

 );
CREATE TABLE "tbl_event_info_comment" (
       seq_no numeric
     ,content                         text
     ,content_seq                     numeric
     ,del_check                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_express_company_info" (
       seq_no numeric
     ,del_check                       numeric
     ,express_name                    varchar(255)
     ,regdate                         timestamp
     ,sweet_tracker_code              varchar(255)
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_extra_delivery_fee" (
       seq_no numeric
     ,address                         varchar(100)
     ,postcode                        varchar(10)
     ,type                            numeric

 );
CREATE TABLE "tbl_faq_cate" (
       seq_no numeric
     ,del_check                       numeric
     ,regdate                         timestamp
     ,title_eng                       varchar(512)
     ,title_kr                        varchar(512)
     ,uptdate                         timestamp
     ,rank                            numeric

 );
CREATE TABLE "tbl_faq_info" (
       seq_no numeric
     ,agent_seq                       numeric
     ,board_hits                      numeric
     ,content_eng                     text
     ,content_kr                      text
     ,del_check                       numeric
     ,end_date                        timestamp
     ,file_seq                        numeric
     ,regdate                         timestamp
     ,search_content_eng              text
     ,search_content_kr               text
     ,search_title_eng                varchar(512)
     ,search_title_kr                 varchar(512)
     ,start_date                      timestamp
     ,title_eng                       varchar(512)
     ,title_kr                        varchar(512)
     ,uptdate                         timestamp
     ,faq_cate                        numeric

 );
CREATE TABLE "tbl_file" (
       seq_no numeric
     ,del_check                       numeric
     ,file_name_change                varchar(512)
     ,file_name_extension             varchar(255)
     ,file_name_ori                   varchar(512)
     ,file_size                       numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_file_agency" (
       seq_no numeric
     ,del_check                       numeric
     ,file_name_change                varchar(512)
     ,file_name_extension             varchar(255)
     ,file_name_ori                   varchar(512)
     ,file_size                       numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_file_agent" (
       seq_no numeric
     ,agency_seq                      numeric
     ,del_check                       numeric
     ,file_name_change                varchar(512)
     ,file_name_extension             varchar(255)
     ,file_name_ori                   varchar(512)
     ,file_size                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_file_main" (
       seq_no numeric
     ,del_check                       numeric
     ,file_name_change                varchar(512)
     ,file_name_extension             varchar(255)
     ,file_name_ori                   varchar(512)
     ,file_size                       numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_file_review" (
       seq_no numeric
     ,del_check                       numeric
     ,file_name_change                varchar(512)
     ,file_name_extension             varchar(255)
     ,file_name_ori                   varchar(512)
     ,file_size                       numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_gallery_info" (
       id numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,text                            varchar(255)
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_gallery_info_img" (
       seq_no numeric
     ,del_check                       numeric
     ,file_seq                        numeric
     ,gallery_seq                     numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,title                           varchar(255)
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_ini_cancel_history" (
       seq_no numeric
     ,code                            numeric
     ,message                         varchar(255)
     ,order_seq_no                    numeric
     ,pg_number                       varchar(255)
     ,regdate                         timestamp
     ,result                          varchar(255)
     ,site_cate_seq                   numeric
     ,tid                             varchar(40)
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_ini_cancel_part_history" (
       seq_no numeric
     ,code                            numeric
     ,message                         varchar(255)
     ,order_seq_no                    numeric
     ,pg_number                       varchar(255)
     ,regdate                         timestamp
     ,result                          varchar(255)
     ,site_cate_seq                   numeric
     ,tid                             varchar(40)
     ,uptdate                         timestamp
     ,user_seq                        numeric
     ,order_item_seq_no               numeric

 );
CREATE TABLE "tbl_ini_request_history" (
       seq_no numeric
     ,code                            numeric
     ,message                         varchar(255)
     ,order_number                    varchar(255)
     ,order_seq_no                    numeric
     ,pg_number                       varchar(255)
     ,regdate                         timestamp
     ,result                          varchar(255)
     ,result_code                     text
     ,return_code                     text
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_inquiry" (
       seq_no numeric
     ,answer_active                   numeric
     ,content                         text
     ,del_check                       numeric
     ,inquiry_type                    numeric
     ,order_seq                       numeric
     ,pgcode                          varchar(255)
     ,product_seq                     numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,title                           varchar(255)
     ,upt_date                        timestamp
     ,user_seq                        numeric
     ,secret_check                    numeric

 );
CREATE TABLE "tbl_inquiry_reply" (
       seq_no numeric
     ,content                         text
     ,del_check                       numeric
     ,inquiry_seq                     numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,title                           varchar(255)
     ,upt_date                        timestamp
     ,user_grade                      numeric
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_log_info" (
       seq_no numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,function_active                 numeric
     ,main_cate                       numeric
     ,sub_cate                        numeric
     ,updated_date                    timestamp
     ,user_agent                      varchar(255)
     ,user_seq                        numeric
     ,view_seq                        numeric

 );
CREATE TABLE "tbl_main_home_item" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,end_date                        timestamp
     ,link                            varchar(255)
     ,rank                            numeric
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,updated_date                    timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)

 );
CREATE TABLE "tbl_main_middle_item" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,end_date                        timestamp
     ,link                            varchar(255)
     ,rank                            numeric
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,updated_date                    timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)

 );
CREATE TABLE "tbl_main_popup_item" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,end_date                        timestamp
     ,link                            varchar(255)
     ,rank                            numeric
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,updated_date                    timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)

 );
CREATE TABLE "tbl_main_top_item" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,end_date                        timestamp
     ,link                            varchar(255)
     ,rank                            numeric
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,updated_date                    timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)

 );
CREATE TABLE "tbl_main_video_item" (
       seq_no numeric
     ,created_date                    timestamp
     ,del_check                       numeric
     ,end_date                        timestamp
     ,link                            varchar(255)
     ,rank                            numeric
     ,start_date                      timestamp
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,updated_date                    timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric

 );
CREATE TABLE "tbl_notice_info" (
       seq_no numeric
     ,board_hits                      numeric
     ,content_eng                     text
     ,content_kr                      text
     ,del_check                       numeric
     ,end_date                        timestamp
     ,file_seq                        numeric
     ,regdate                         timestamp
     ,search_title_eng                varchar(512)
     ,search_title_kr                 varchar(512)
     ,start_date                      timestamp
     ,title_eng                       varchar(512)
     ,title_kr                        varchar(512)
     ,uptdate                         timestamp
     ,vote_option                     numeric
     ,agent_seq                       numeric
     ,board_seq                       numeric
     ,search_content_eng              text
     ,search_content_kr               text

 );
CREATE TABLE "tbl_order_booking" (
       seq_no numeric
     ,bdate_bdate_seq                 varchar(255)
     ,booking_place                   varchar(255)
     ,point_current                   numeric
     ,product_title                   varchar(255)
     ,ticket_price                    numeric
     ,ticket_seq                      varchar(255)
     ,total_price                     numeric
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_order_booking_log" (
       seq_no numeric
     ,agent_seq                       numeric
     ,del_check                       numeric
     ,file_name                       varchar(255)
     ,regdate                         timestamp
     ,total_point                     double
     ,total_row                       numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_order_info" (
       seq_no numeric
     ,address1                        varchar(512)
     ,cash_receipt                    varchar(255)
     ,cid                             varchar(40)
     ,del_check                       numeric
     ,delivery_fee                    numeric
     ,delivery_state                  numeric
     ,detail_address1                 varchar(512)
     ,email                           varchar(100)
     ,export_flag                     numeric
     ,export_number                   varchar(50)
     ,express_company                 varchar(20)
     ,express_number                  varchar(20)
     ,extra_delivery_fee              numeric
     ,memo                            varchar(512)
     ,order_admin_memo                mediumtext
     ,pay_info                        varchar(50)
     ,pg_code                         varchar(255)
     ,pg_number                       varchar(255)
     ,pg_token                        varchar(255)
     ,postcode                        varchar(6)
     ,product_img_url                 varchar(100)
     ,recv_name                       varchar(100)
     ,recv_phone                      varchar(20)
     ,regdate                         timestamp
     ,req_name                        varchar(100)
     ,req_name_eng                    varchar(100)
     ,req_phone                       varchar(20)
     ,site_cate_seq                   numeric
     ,tid                             varchar(40)
     ,title                           varchar(255)
     ,total_price                     numeric
     ,uptdate                         timestamp
     ,user_agent                      varchar(255)
     ,userip                          varchar(40)
     ,user_seq                        numeric
     ,moid                            varchar(255)
     ,auth_token                      varchar(255)
     ,m_key                           varchar(255)
     ,mid                             varchar(255)
     ,oid                             varchar(255)
     ,order_number                    varchar(255)
     ,card_code                       numeric
     ,state_date_time10               timestamp
     ,state_date_time3                timestamp
     ,state_date_time4                timestamp
     ,state_date_time5                timestamp
     ,state_date_time6                timestamp
     ,state_date_time7                timestamp
     ,state_date_time8                timestamp
     ,state_date_time9                timestamp
     ,point_order_check               numeric
     ,point_price                     numeric
     ,track_active                    numeric
     ,track_active_date_time          timestamp
     ,sweet_tracker_level             numeric
     ,track_fail_date_time            timestamp
     ,track_fail_reason               varchar(255)
     ,point_complete_check            numeric
     ,point_complete_date             timestamp

 );
CREATE TABLE "tbl_order_item" (
       seq_no numeric
     ,del_check                       numeric
     ,delivery_state                  numeric
     ,delivery_type                   numeric
     ,discount_cal_price              numeric
     ,export_delivery_state           numeric
     ,express_company                 varchar(20)
     ,express_number                  varchar(20)
     ,option_seq                      numeric
     ,option_value                    varchar(255)
     ,order_detail                    varchar(255)
     ,order_seq_no                    numeric
     ,price                           numeric
     ,product_img_url                 varchar(255)
     ,product_seq                     numeric
     ,quantity                        numeric
     ,regdate                         timestamp
     ,shipment_processing_date        timestamp
     ,title                           varchar(255)
     ,uptdate                         timestamp
     ,refund_check                    numeric

 );
CREATE TABLE "tbl_payment_total" (
       seq_no numeric
     ,current_day                     timestamp
     ,del_check                       numeric
     ,regdate                         timestamp
     ,total_product_payment           numeric
     ,total_ticket_payment            numeric
     ,uptdate                         timestamp
     ,user_name                       varchar(255)
     ,user_phone                      varchar(255)
     ,user_seq                        numeric
     ,total_payment                   numeric

 );
CREATE TABLE "tbl_point_log" (
       seq_no numeric
     ,agent_seq                       numeric
     ,del_check                       numeric
     ,file_name                       varchar(255)
     ,regdate                         timestamp
     ,total_point                     double
     ,total_row                       numeric
     ,uptdate                         timestamp
     ,addUseeCheck                    numeric

 );
CREATE TABLE "tbl_point_user" (
       seq_no numeric
     ,del_check                       numeric
     ,point_current                   double
     ,point_save                      double
     ,point_used                      double
     ,reg_date                        timestamp
     ,upt_date                        timestamp
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_point_user_log" (
       seq_no numeric
     ,agent_seq                       numeric
     ,del_check                       numeric
     ,point_amount                    double
     ,point_increase_decrease         numeric
     ,point_type                      numeric
     ,product_seq                     numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,upt_date                        timestamp
     ,user_seq                        numeric
     ,end_date                        timestamp
     ,order_seq                       varchar(255)
     ,point_current                   double
     ,point_mode                      numeric
     ,temp_check                      numeric
     ,point_log_seq                   numeric
     ,direct_point_reason             text
     ,order_seq_no                    numeric
     ,tid                             varchar(45)
     ,product_order_seq_no            numeric

 );
CREATE TABLE "tbl_product_category" (
       id numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,sub2active                      numeric
     ,sub2id                          numeric
     ,sub_active                      numeric
     ,sub_id                          numeric
     ,text                            varchar(255)
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_product_info" (
       seq_no numeric
     ,badge1                          numeric
     ,badge2                          numeric
     ,badge3                          numeric
     ,badge_mode                      numeric
     ,board_seq                       numeric
     ,buy_link                        varchar(255)
     ,del_check                       numeric
     ,discount_cal_price              numeric
     ,discount_check                  numeric
     ,discount_price                  numeric
     ,discount_rate                   numeric
     ,discount_type                   numeric
     ,like_count                      numeric
     ,price                           numeric
     ,price_display_check             numeric
     ,product_information_notice_all_check nu
     ,product_information_notice_type numeric
     ,product_num                     varchar(255)
     ,product_stock_type              numeric
     ,product_type                    numeric
     ,regdate                         timestamp
     ,sale_enddate                    timestamp
     ,sale_startdate                  timestamp
     ,sales_period_check              numeric
     ,search_title                    varchar(255)
     ,selec7approval                  numeric
     ,site_cate_seq                   numeric
     ,sort_rank                       numeric
     ,sortdate                        timestamp
     ,sub_title                       varchar(255)
     ,title                           varchar(255)
     ,to_seller_msg                   varchar(255)
     ,uptdate                         timestamp
     ,promoted                        numeric
     ,log_share_count                 numeric
     ,product_main_cate               numeric
     ,purchase_quantity_count         numeric
     ,purchase_restrictions           numeric
     ,product_sub_cate                numeric
     ,kfa_independent_fee             double
     ,kfa_independent_fee_active      numeric

 );
CREATE TABLE "tbl_product_info_codblock_detail" (
       seq_no numeric
     ,del_check                       numeric
     ,middle_conent                   text
     ,product_seq                     numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_info_delivery" (
       seq_no numeric
     ,del_check                       numeric
     ,delivery_bundle_shipping_check  numeric
     ,delivery_install_type           numeric
     ,delivery_main_base_price        numeric
     ,delivery_main_extra_area2       numeric
     ,delivery_main_extra_area3       numeric
     ,delivery_main_method            numeric
     ,delivery_main_payment_type      numeric
     ,delivery_main_product_sales_total numer
     ,delivery_method_payment2        numeric
     ,delivery_method_payment3        numeric
     ,delivery_payment_timing         numeric
     ,delivery_quick_busan            numeric
     ,delivery_quick_daegu            numeric
     ,delivery_quick_daejeon          numeric
     ,delivery_quick_gwangju          numeric
     ,delivery_quick_gyeonggi         numeric
     ,delivery_quick_incheon          numeric
     ,delivery_quick_seoul            numeric
     ,delivery_quick_type             numeric
     ,delivery_quick_ulsan            numeric
     ,delivery_return_addr            varchar(255)
     ,delivery_return_detail_addr     varchar(255)
     ,delivery_return_extra_addr      varchar(255)
     ,delivery_return_postnum         varchar(255)
     ,delivery_return_price           numeric
     ,delivery_return_price_type      numeric
     ,delivery_ship_return_mode       numeric
     ,delivery_shipment_addr          varchar(255)
     ,delivery_shipment_detail_addr   varchar(255)
     ,delivery_shipment_extra_addr    varchar(255)
     ,delivery_shipment_postnum       varchar(255)
     ,delivery_visit_addr             varchar(255)
     ,delivery_visit_detail_addr      varchar(255)
     ,delivery_visit_extra_addr       varchar(255)
     ,delivery_visit_postnum          varchar(255)
     ,delivery_visit_type             numeric
     ,export_flag                     numeric
     ,product_seq                     numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_info_img" (
       seq_no numeric
     ,del_check                       numeric
     ,file_seq                        numeric
     ,product_info_seq                numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_info_temp" (
       seq_no numeric
     ,del_check                       numeric
     ,product_banner_img1             text
     ,product_banner_img2             text
     ,product_banner_img3             text
     ,product_banner_img4             text
     ,product_banner_img5             text
     ,product_detail1                 text
     ,product_detail2                 text
     ,product_discount_check          varchar(255)
     ,product_discount_price          varchar(255)
     ,product_discount_rate           varchar(255)
     ,product_discount_type           varchar(255)
     ,product_main_cate_str           text
     ,product_option_stock            text
     ,product_option_title            text
     ,product_price                   text
     ,product_sub_cate_str            text
     ,product_title                   text
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_main_cate" (
       seq_no numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,title                           varchar(255)
     ,uptdate                         timestamp
     ,move_title                      varchar(255)
     ,sub_active                      numeric
     ,sub_id                          numeric

 );
CREATE TABLE "tbl_product_option_stock" (
       seq_no numeric
     ,add_price_active                numeric
     ,del_check                       numeric
     ,option_extra_charge             numeric
     ,option_name                     varchar(255)
     ,option_stock                    numeric
     ,option_stock_ulimited           numeric
     ,product_info_seq                numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_review" (
       seq_no numeric
     ,content                         text
     ,del_check                       numeric
     ,product_seq                     numeric
     ,reg_date                        timestamp
     ,review_point                    float
     ,title                           varchar(255)
     ,upt_date                        timestamp
     ,user_seq                        numeric
     ,order_seq_no                    numeric
     ,product_option_seq              numeric
     ,site_cate_seq                   numeric

 );
CREATE TABLE "tbl_product_review_img" (
       seq_no numeric
     ,del_check                       numeric
     ,file_seq                        numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,review_seq                      numeric
     ,site_cate_seq                   numeric
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_review_reply" (
       seq_no numeric
     ,content                         text
     ,del_check                       numeric
     ,reg_date                        timestamp
     ,review_seq                      numeric
     ,upt_date                        timestamp
     ,user_level                      numeric
     ,user_seq                        numeric

 );
CREATE TABLE "tbl_product_tag" (
       seq_no numeric
     ,del_check                       numeric
     ,product_info_seq                numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,tag                             varchar(255)
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_product_tag_search" (
       seq_no numeric
     ,del_check                       numeric
     ,product_info_seq                numeric
     ,regdate                         timestamp
     ,site_cate_seq                   numeric
     ,tag                             varchar(255)
     ,uptdate                         timestamp

 );
CREATE TABLE "tbl_select_home_info" (
       seq_no numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_site_group" (
       seq_no numeric
     ,agency_seq                      numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,title                           varchar(255)
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_site_info" (
       site_cate_seq numeric
     ,base_skin                       numeric
     ,bing_meta_code                  varchar(255)
     ,board_lock                      numeric
     ,del_check                       numeric
     ,description                     varchar(255)
     ,designer_seq                    numeric
     ,famicon_file                    numeric
     ,google_meta_code                varchar(255)
     ,group_seq                       numeric
     ,home_active                     numeric
     ,home_active_date                timestamp
     ,instagram_url                   varchar(255)
     ,kakao_meta_file                 numeric
     ,keywords                        varchar(255)
     ,min_delivery_free_count         numeric
     ,naver_meta_code                 varchar(255)
     ,open_market_active              numeric
     ,owner_seq                       numeric
     ,popup_active                    numeric
     ,reg_date                        timestamp
     ,resell_seq                      numeric
     ,sample_active                   numeric
     ,selec7footer_active             numeric
     ,selec7order_info_active         numeric
     ,shop_active                     numeric
     ,shop_type                       numeric
     ,site_cate_title                 varchar(255)
     ,site_company_name               varchar(255)
     ,site_custom_url                 varchar(255)
     ,site_custom_url_check           numeric
     ,site_gallery_root               varchar(255)
     ,site_info_content               varchar(255)
     ,site_lock                       numeric
     ,site_manager_name               varchar(255)
     ,site_tel_num                    varchar(255)
     ,site_type                       numeric
     ,tenth_active                    numeric
     ,test_site                       numeric
     ,upt_date                        timestamp
     ,visitor_count                   numeric
     ,fee_rate1                       double
     ,fee_rate2                       double
     ,biz_code                        varchar(255)
     ,product_xlsx_active             numeric

 );
CREATE TABLE "tbl_site_menu_info" (
       id numeric
     ,board_seq                       numeric
     ,current_skin_type               numeric
     ,current_type                    numeric
     ,del_check                       numeric
     ,gallery_list_seq                numeric
     ,gallery_seq                     numeric
     ,html_seq                        numeric
     ,index_active                    numeric
     ,private_check                   numeric
     ,product_seq                     numeric
     ,rank                            numeric
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,sub2active                      numeric
     ,sub2id                          numeric
     ,sub_active                      numeric
     ,sub_id                          numeric
     ,text                            varchar(255)
     ,upt_date                        timestamp
     ,view_level                      numeric
     ,write_level                     numeric

 );
CREATE TABLE "tbl_site_no_name" (
       seq_no int(20)
     ,site_custom_url                 varchar(1000)
     ,reg_date                        timestamp
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_site_template" (
       seq_no numeric
     ,agency_seq                      numeric
     ,agent_seq                       numeric
     ,content                         text
     ,del_check                       numeric
     ,designer_name                   varchar(255)
     ,folder                          varchar(255)
     ,group_seq                       numeric
     ,reg_date                        timestamp
     ,short_title                     varchar(255)
     ,site_cate_seq                   numeric
     ,site_type                       numeric
     ,title                           varchar(255)
     ,upt_date                        timestamp
     ,default_site                    numeric

 );
CREATE TABLE "tbl_skin_info" (
       seq_no numeric
     ,del_check                       numeric
     ,footer                          text
     ,header                          text
     ,menu_seq                        numeric
     ,middle_conent                   text
     ,nav_img                         text
     ,reg_date                        timestamp
     ,site_cate_seq                   numeric
     ,skin_type                       numeric
     ,upt_date                        timestamp

 );
CREATE TABLE "tbl_ticket_cate" (
       seq_no numeric
     ,del_check                       numeric
     ,rank                            numeric
     ,regdate                         timestamp
     ,team_code                       varchar(255)
     ,uptdate                         timestamp
     ,search_title_eng                varchar(255)
     ,search_title_kr                 varchar(255)
     ,title_eng                       varchar(255)
     ,title_kr                        varchar(255)
     ,guide_info_json                 text

 );
CREATE TABLE "tbl_ticket_info" (
       seq_no numeric
     ,away_team                       varchar(255)
     ,away_team_logo                  varchar(255)
     ,away_team_name                  varchar(255)
     ,biz_code                        varchar(255)
     ,biz_name                        varchar(255)
     ,del_check                       numeric
     ,dely_fee                        varchar(255)
     ,end_date                        varchar(255)
     ,eng_lang_kind_of_goods          varchar(255)
     ,eng_lang_place_name             varchar(255)
     ,eng_lang_rate                   varchar(255)
     ,global_siteyn                   varchar(255)
     ,goods_code                      varchar(255)
     ,goods_name                      varchar(255)
     ,home_team                       varchar(255)
     ,home_team_logo                  varchar(255)
     ,home_team_name                  varchar(255)
     ,kind_of_goods                   varchar(255)
     ,on_off                          varchar(255)
     ,only_deliver                    varchar(255)
     ,place_code                      varchar(255)
     ,place_name                      varchar(255)
     ,print_or_not                    varchar(255)
     ,regdate                         timestamp
     ,register_date_for_web           varchar(255)
     ,reserved_or_not                 varchar(255)
     ,sales_type                      varchar(255)
     ,start_date                      varchar(255)
     ,sub_category                    varchar(255)
     ,ticket_cate_seq                 numeric
     ,uptdate                         timestamp
     ,bookable_date                   varchar(255)
     ,booking_end_date                varchar(255)
     ,cancelable_date                 varchar(255)
     ,no_of_time                      varchar(255)
     ,online_date                     varchar(255)
     ,play_date                       varchar(255)
     ,play_seq                        varchar(255)
     ,play_time                       varchar(255)
     ,ticket_on_off                   varchar(255)
     ,week_day                        varchar(255)
     ,product_day_json                text
     ,product_infos_json              text
     ,product_json                    text
     ,reservation_id                  varchar(255)
	 );
	 
CREATE TABLE playkfa.tbl_user (
	marketing_check_date timestamp NULL,
	nickname varchar(50) NULL,
	node_token varchar(300) NULL,
	phone_certification_date timestamp NULL,
	picture varchar(100) NULL,
	privacy_check_date timestamp NULL,
	regdate timestamp NULL,
	uptdate timestamp NULL,
	use_check_date timestamp NULL,
	user_email varchar(255) NULL,
	user_name varchar(255) NULL,
	user_phone varchar(255) NULL,
	user_pw varchar(255) NULL,
	user_token varchar(255) NULL,
	user_id varchar(255) NULL,
	auth_code varchar(255) NULL,
	auth_date timestamp NULL,
	event_agree_date timestamp NULL,
	user_birth varchar(50) NULL,
	user_sex varchar(255) NULL,
	interpark_code varchar(255) NULL,
	interpark_code_date timestamp NULL,
	interpark_code_msg varchar(255) NULL,
	phone_not_check_date timestamp NULL,
	user_birth_str varchar(255) NULL,
	user_grade_seq numeric NULL,
	"14_yn" varchar(255) NULL,
	parent_name varchar(255) NULL,
	parent_phone varchar(255) NULL,
	seq_no int4 NULL,
	del_check int4 NULL,
	id_type int4 NULL,
	markecting_check int4 NULL,
	markecting_check_type int4 NULL,
	phone_certification_active int4 NULL,
	privacy_check int4 NULL,
	grade_seq int4 NULL,
	event_agree_check int4 NULL,
	profile_file_seq int8 NULL,
	pw_reset_check int4 NULL,
	use_check int4 NULL,
	user_rank int4 NULL,
	phone_not_check int4 NULL,
	conn_date timestamp NULL,
	"14_YN" varchar(1) NULL,
	parent_email varchar(50) NULL
);	 
/*	 
CREATE TABLE "tbl_user" (
       seq_no numeric
     ,del_check                       numeric
     ,id_type                         numeric
     ,markecting_check                numeric
     ,markecting_check_type           numeric
     ,marketing_check_date            timestamp
     ,nickname                        varchar(50)
     ,node_token                      varchar(300)
     ,phone_certification_active      numeric
     ,phone_certification_date        timestamp
     ,picture                         varchar(100)
     ,privacy_check                   numeric
     ,privacy_check_date              timestamp
     ,pw_reset_check                  numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,use_check                       numeric
     ,use_check_date                  timestamp
     ,user_email                      varchar(255)
     ,user_name                       varchar(255)
     ,user_phone                      varchar(255)
     ,user_pw                         varchar(255)
     ,user_rank                       numeric
     ,user_token                      varchar(255)
     ,designer_active                 numeric
     ,pw_check                        numeric
     ,sample_make_active              numeric
     ,site_agency_active              numeric
     ,user_id                         varchar(255)
     ,profile_file_seq                numeric
     ,auth_code                       varchar(255)
     ,auth_date                       timestamp
     ,event_agree_check               numeric
     ,event_agree_date                timestamp
     ,user_birth                      varchar(50)
     ,user_sex                        varchar(255)
     ,interpark_code                  varchar(255)
     ,interpark_code_date             timestamp
     ,interpark_code_msg              varchar(255)
     ,phone_not_check                 numeric
     ,phone_not_check_date            timestamp
     ,user_birth_str                  varchar(255)
     ,user_grade_seq                  numeric
     ,14_yn                           varchar(255)
     ,parent_name                     varchar(255)
     ,parent_phone                    varchar(255)

 );
 */
 
 -- tbl_user 내용 확인 필요 레이아웃이랑 컬럼 다름 
CREATE TABLE "tbl_user_grade" (
       seq_no numeric
     ,benefits                        varchar(512)
     ,del_check                       numeric
     ,grade_name                      varchar(512)
     ,point_condition                 double
     ,point_rate                      double
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,grade_code                      varchar(255)
     ,benefits_eng                    varchar(512)
     ,expiration_period               numeric

 );
CREATE TABLE "tbl_user_interpark" (
       seq_no numeric
     ,customer_code                   varchar(255)
     ,del_check                       numeric
     ,insert_date                     varchar(255)
     ,member_code                     varchar(255)
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_active                     varchar(255)
     ,user_birth                      varchar(255)
     ,user_email                      varchar(255)
     ,user_hp                         varchar(255)
     ,user_id                         varchar(255)
     ,user_name                       varchar(255)
     ,user_phone                      varchar(255)
     ,user_sex                        varchar(255)

 );
CREATE TABLE "tbl_user_product_like" (
       seq_no numeric
     ,del_check                       numeric
     ,product_seq                     numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_seq                        numeric
CREATE TABLE "tbl_user_rank" (
       seq_no numeric
     ,comment_points                  numeric
     ,del_check                       numeric
     ,like_points                     numeric
     ,regdate                         timestamp
     ,sale_points                     numeric
     ,share_points                    numeric
     ,site_cate_seq                   numeric
     ,today_rank                      numeric
     ,total_points                    numeric
     ,uptdate                         timestamp
     ,user_seq                        numeric
     ,yesterday_rank                  numeric

 );
CREATE TABLE "tbl_vote_info" (
       seq_no numeric
     ,banner_seq_eng                  numeric
     ,banner_seq_kr                   numeric
     ,board_hits                      numeric
     ,content_eng                     text
     ,content_kr                      text
     ,del_check                       numeric
     ,end_date                        timestamp
     ,regdate                         timestamp
     ,search_content_eng              text
     ,search_content_kr               text
     ,search_title_eng                varchar(512)
     ,search_title_kr                 varchar(512)
     ,start_date                      timestamp
     ,title_eng                       varchar(512)
     ,title_kr                        varchar(512)
     ,uptdate                         timestamp
     ,vote_option                     numeric
     ,file_seq                        numeric
CREATE TABLE "tbl_vote_info_attend_log" (
       seq_no numeric
     ,attend_type                     numeric
     ,del_check                       numeric
     ,event_seq                       numeric
     ,reg_date                        timestamp
     ,upt_date                        timestamp
     ,user_seq                        numeric
     ,vote_select                     numeric
CREATE TABLE "tbl_vote_info_item" (
       seq_no numeric
     ,del_check                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,vote_option_eng                 varchar(512)
     ,vote_option_kr                  varchar(512)
     ,vote_seq                        numeric
     ,content_eng                     varchar(255)
     ,content_kr                      varchar(255)
     ,file_seq                        numeric
     ,title                           varchar(255)
     ,url                             varchar(255)
CREATE TABLE "tbl_vote_info_result" (
       seq_no numeric
     ,del_check                       numeric
     ,regdate                         timestamp
     ,uptdate                         timestamp
     ,user_seq                        numeric
     ,vote_item_seq                   numeric
     ,vote_seq                        numeric
CREATE TABLE "time_dimension" (
       id numeric
     ,day                             numeric
     ,day_name                        varchar(255)
     ,db_date                         date
     ,event                           varchar(255)
     ,holiday_flag                    varchar(255)
     ,month                           numeric
     ,month_name                      varchar(255)
     ,quarter                         numeric
     ,week                            numeric
     ,weekend_flag                    varchar(255)
     ,year                            numeric
     ,test_column                     varchar(255)
CREATE TABLE "user_authority" (
       seq_no numeric
     ,authority_name                  varchar(50)

 );
 create table tbl_Booking_data_info(
bdate_bdateseq	VARCHAR(20)
, ticket_no	 VARCHAR(20) 
, product_name	VARCHAR(255)
, product_code	 VARCHAR(20)
, order_date	 VARCHAR(20) 
, order_time	 VARCHAR(20)
, client_name	VARCHAR(20)
, concert_name	VARCHAR(100)
, concert_date	VARCHAR(20)
, concert_time	VARCHAR(20)
, concert_day	VARCHAR(20)
, member_name	VARCHAR(50)
, member_birth	VARCHAR(20)
, member_sex	VARCHAR(20)
, member_code	VARCHAR(30)
, mem_no	VARCHAR(30)
, buy_way1	VARCHAR(30)
, buy_way1_name	VARCHAR(100)
, buy_way1_status	VARCHAR(20)
, buy_way2	VARCHAR(30)
, buy_way2_name	VARCHAR(100)
, buy_way2_status	VARCHAR(20)
, ticket_price	BIGINT
, reserve_loc	VARCHAR(100)
, reserve_status	VARCHAR(20)
, product_genre	VARCHAR(20)
, mid	VARCHAR(20) 
, seat_grade_name	VARCHAR(100)
, seat_floor	VARCHAR(100)
, seat_row	VARCHAR(100)
, seat_number	VARCHAR(100)
, card_approval_no	VARCHAR(50)
, fee	BIGINT
, delivery_price	BIGINT
, discount_price	BIGINT
, delivery_info	VARCHAR(255)
, cancle_date	VARCHAR(20) 
, tiki_grade	VARCHAR(10) 
, tiki_start	VARCHAR(10) 
, tiki_first_reserve	VARCHAR(2) 
, price_grade_name	VARCHAR(100)
, price_grade_code	VARCHAR(10) 
, member_id	VARCHAR(50)
, member_email	VARCHAR(255)
, member_tel_number	VARCHAR(255)
, member_phone	VARCHAR(50)
, member_addr	VARCHAR(255)
, card_number	VARCHAR(255)
, member_gender	VARCHAR(2) 
, send_name	VARCHAR(50)
, send_tel_number	VARCHAR(50)
, send_phone_number	VARCHAR(50)
, send_addr	VARCHAR(255)
, delivery_way	VARCHAR(50)
, member_birth2	VARCHAR(50)
, member_name2	VARCHAR(50)
, client_name2	VARCHAR(50)
, member_addr2	VARCHAR(255)
, marketing_agree	VARCHAR(2) 
);
COMMENT ON TABLE  "authority" IS '사용자 권한 관리 테이블';
COMMENT ON TABLE  "authority" IS '인증 테이블';
COMMENT ON COLUMN "authority".authority_name IS '인증명';
COMMENT ON COLUMN "authority".default_check IS '기본값체크';
COMMENT ON COLUMN "authority".rank IS '랭크';
COMMENT ON COLUMN "authority".title IS '제목';
COMMENT ON COLUMN "authority".authority_name IS '인증명';
COMMENT ON COLUMN "authority".default_check IS '기본값체크';
COMMENT ON COLUMN "authority".rank IS '순서';
COMMENT ON COLUMN "authority".title IS '제목';
COMMENT ON TABLE  "tbl_admin" IS '관리자 관리 테이블';
COMMENT ON COLUMN "tbl_admin".seq_no IS '번호';
COMMENT ON COLUMN "tbl_admin".agency_seq IS '회사 관리명';
COMMENT ON COLUMN "tbl_admin".agent_file IS '프로필 파일명';
COMMENT ON COLUMN "tbl_admin".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_admin".designer_active IS '디자니너 활성화';
COMMENT ON COLUMN "tbl_admin".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_admin".super_active IS '최고권한 활성화';
COMMENT ON COLUMN "tbl_admin".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_admin".user_authority IS '사용자 권한';
COMMENT ON COLUMN "tbl_admin".user_email IS '사용자 id';
COMMENT ON COLUMN "tbl_admin".user_name IS '사용자 명';
COMMENT ON COLUMN "tbl_admin".user_position IS '사용자 직책';
COMMENT ON COLUMN "tbl_admin".user_pw IS '사용자 비밀번호';
COMMENT ON COLUMN "tbl_admin".resell_seq IS '리셀러 번호';
COMMENT ON COLUMN "tbl_admin".site_cate_seq IS '사이트 고유번호';
COMMENT ON TABLE  "tbl_admin_contact" IS '관리자 담당자 관리 테이블';
COMMENT ON COLUMN "tbl_admin_contact".seq_no IS '번호';
COMMENT ON COLUMN "tbl_admin_contact".admin_seq IS '관리자 번호';
COMMENT ON COLUMN "tbl_admin_contact".contact_department IS '담당자 부서';
COMMENT ON COLUMN "tbl_admin_contact".contact_email IS '담당자 이메일';
COMMENT ON COLUMN "tbl_admin_contact".contact_name IS '담당자 명';
COMMENT ON COLUMN "tbl_admin_contact".contact_phone IS '담당자 전화번호';
COMMENT ON COLUMN "tbl_admin_contact".contact_rank IS '담당자 직책';
COMMENT ON COLUMN "tbl_admin_contact".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_admin_contact".rank IS '순서';
COMMENT ON COLUMN "tbl_admin_contact".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_admin_contact".tax_officer_check IS '세금관려자 체크';
COMMENT ON COLUMN "tbl_admin_contact".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_admin_info" IS '관리자 샵 관리 테이블';
COMMENT ON COLUMN "tbl_admin_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_admin_info".address IS '주소';
COMMENT ON COLUMN "tbl_admin_info".admin_seq IS '연결된 관리자 고유번호';
COMMENT ON COLUMN "tbl_admin_info".bank_account_holder IS '은행 계좌 명의자';
COMMENT ON COLUMN "tbl_admin_info".bank_account_number IS '은행 계좌 번호';
COMMENT ON COLUMN "tbl_admin_info".bank_name IS '은행명';
COMMENT ON COLUMN "tbl_admin_info".business_class IS '업체분류';
COMMENT ON COLUMN "tbl_admin_info".business_number IS '사업자번호';
COMMENT ON COLUMN "tbl_admin_info".business_registration_file_seq IS '사업자등록증 파일 고유번호';
COMMENT ON COLUMN "tbl_admin_info".business_sector IS '업종';
COMMENT ON COLUMN "tbl_admin_info".business_type IS '업태';
COMMENT ON COLUMN "tbl_admin_info".company_name IS '업체명';
COMMENT ON COLUMN "tbl_admin_info".copy_of_account_file_seq IS '은행계좌 파일고유번호';
COMMENT ON COLUMN "tbl_admin_info".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_admin_info".detail_address IS '상세주소';
COMMENT ON COLUMN "tbl_admin_info".domestic_international_check IS '국내/해외 체크';
COMMENT ON COLUMN "tbl_admin_info".postcode IS '우편번호';
COMMENT ON COLUMN "tbl_admin_info".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_admin_info".resident_number IS '주민번호(개인용)';
COMMENT ON COLUMN "tbl_admin_info".sub_business_number IS '종사업자번호';
COMMENT ON COLUMN "tbl_admin_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_admin_info".biz_code IS '인터파크 bizcode';
COMMENT ON COLUMN "tbl_admin_info".fee_rate1 IS 'kfa fee';
COMMENT ON COLUMN "tbl_admin_info".fee_rate2 IS '인터파크 fee';
COMMENT ON COLUMN "tbl_admin_info".acc_biz_code IS 'acc biz 코드';
COMMENT ON TABLE  "tbl_agency" IS '사이트 업체 관리 테이블';
COMMENT ON COLUMN "tbl_agency".seq_no IS '';
COMMENT ON COLUMN "tbl_agency".approval_date IS '업체확인날';
COMMENT ON COLUMN "tbl_agency".cancel_date IS '업체취소날';
COMMENT ON COLUMN "tbl_agency".company_account_file IS '사업자 은행계좌 파일 고유번호';
COMMENT ON COLUMN "tbl_agency".company_email IS '사업자 이메일';
COMMENT ON COLUMN "tbl_agency".company_file IS '사업자번호 첨부고유 파일';
COMMENT ON COLUMN "tbl_agency".company_manager IS '사업자 대표자';
COMMENT ON COLUMN "tbl_agency".company_num IS '사업자번호';
COMMENT ON COLUMN "tbl_agency".company_tel IS '사이트 전화번호';
COMMENT ON COLUMN "tbl_agency".del_check IS '';
COMMENT ON COLUMN "tbl_agency".name IS '업체명';
COMMENT ON COLUMN "tbl_agency".regdate IS '';
COMMENT ON COLUMN "tbl_agency".super_active IS '슈퍼관리자 체크';
COMMENT ON COLUMN "tbl_agency".uptdate IS '';
COMMENT ON TABLE  "tbl_alert_log" IS '';
COMMENT ON COLUMN "tbl_alert_log".seq_no IS '';
COMMENT ON COLUMN "tbl_alert_log".board_type IS '';
COMMENT ON COLUMN "tbl_alert_log".comment_seq IS '';
COMMENT ON COLUMN "tbl_alert_log".comment_type IS '';
COMMENT ON COLUMN "tbl_alert_log".created_date IS '';
COMMENT ON COLUMN "tbl_alert_log".del_check IS '';
COMMENT ON COLUMN "tbl_alert_log".hide_check IS '';
COMMENT ON COLUMN "tbl_alert_log".main_cate IS '';
COMMENT ON COLUMN "tbl_alert_log".product_seq IS '';
COMMENT ON COLUMN "tbl_alert_log".site_cate_seq IS '';
COMMENT ON COLUMN "tbl_alert_log".sub_cate IS '';
COMMENT ON COLUMN "tbl_alert_log".target_user IS '';
COMMENT ON COLUMN "tbl_alert_log".updated_date IS '';
COMMENT ON COLUMN "tbl_alert_log".url IS '';
COMMENT ON COLUMN "tbl_alert_log".user_agent IS '';
COMMENT ON COLUMN "tbl_alert_log".userip IS '';
COMMENT ON COLUMN "tbl_alert_log".user_idx IS '';
COMMENT ON COLUMN "tbl_alert_log".user_verification IS '';
COMMENT ON COLUMN "tbl_alert_log".user_verification_date IS '';
COMMENT ON TABLE  "tbl_article_html" IS 'codblock article 관리테이블';
COMMENT ON COLUMN "tbl_article_html".seq_no IS '번호';
COMMENT ON COLUMN "tbl_article_html".article_html IS 'article html';
COMMENT ON COLUMN "tbl_article_html".article_img_url IS 'article 이미지 url';
COMMENT ON COLUMN "tbl_article_html".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_article_html".last_user_seq IS '마지막 유저 번호';
COMMENT ON COLUMN "tbl_article_html".rank IS '순서';
COMMENT ON COLUMN "tbl_article_html".reg_date IS '등록일';
COMMENT ON COLUMN "tbl_article_html".upt_date IS '수정일';
COMMENT ON COLUMN "tbl_article_html".skin_seq IS '스킨 관리번호';
COMMENT ON TABLE  "tbl_article_skin" IS 'codblock skin 테이블';
COMMENT ON COLUMN "tbl_article_skin".seq_no IS '번호';
COMMENT ON COLUMN "tbl_article_skin".skin_img_url IS '스킨 이미지';
COMMENT ON COLUMN "tbl_article_skin".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_article_skin".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_article_skin".title IS '스킨명';
COMMENT ON COLUMN "tbl_article_skin".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_auction_info" IS '경매 관리 테이블';
COMMENT ON COLUMN "tbl_auction_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_auction_info".banner_seq_eng IS '배너 영문 이미지';
COMMENT ON COLUMN "tbl_auction_info".banner_seq_kr IS '배너 한글 이미지';
COMMENT ON COLUMN "tbl_auction_info".bidding_participation_count IS '경매 참여 회수';
COMMENT ON COLUMN "tbl_auction_info".bidding_participation_fee IS '경매 참여 가격';
COMMENT ON COLUMN "tbl_auction_info".bidding_price IS '호가';
COMMENT ON COLUMN "tbl_auction_info".board_hits IS '방문자 수';
COMMENT ON COLUMN "tbl_auction_info".content_eng IS '내용 국문';
COMMENT ON COLUMN "tbl_auction_info".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_auction_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_auction_info".end_date IS '경매 종료일';
COMMENT ON COLUMN "tbl_auction_info".regdate IS '등록일';
COMMENT ON COLUMN "tbl_auction_info".runner_up_mode IS '차순위자 설정';
COMMENT ON COLUMN "tbl_auction_info".search_content_eng IS '내용 검색 영문';
COMMENT ON COLUMN "tbl_auction_info".search_content_kr IS '내용 검색 국문';
COMMENT ON COLUMN "tbl_auction_info".search_title_eng IS '타이틀 검색 영문';
COMMENT ON COLUMN "tbl_auction_info".search_title_kr IS '타이틀 검색 국문';
COMMENT ON COLUMN "tbl_auction_info".start_date IS '경매 시작일';
COMMENT ON COLUMN "tbl_auction_info".starting_bid IS '시작 가격';
COMMENT ON COLUMN "tbl_auction_info".title_eng IS '제목 영어';
COMMENT ON COLUMN "tbl_auction_info".title_kr IS '제묵 국문';
COMMENT ON COLUMN "tbl_auction_info".uptdate IS '수정일';
COMMENT ON COLUMN "tbl_auction_info".current_price IS '현재 가격';
COMMENT ON COLUMN "tbl_auction_info".open_date IS '경매 공개일';
COMMENT ON COLUMN "tbl_auction_info".payment_check IS '참가가 해당 상품 구매 여부';
COMMENT ON COLUMN "tbl_auction_info".delivery_main_base_price IS '기본 배송가격';
COMMENT ON COLUMN "tbl_auction_info".delivery_main_extra_area2 IS '제주도 배송가격';
COMMENT ON COLUMN "tbl_auction_info".delivery_main_extra_area3 IS '제주 외 도서산간 추가요금';
COMMENT ON TABLE  "tbl_auction_info_result" IS '경매 참여 결과 관리 테이블';
COMMENT ON COLUMN "tbl_auction_info_result".seq_no IS '번호';
COMMENT ON COLUMN "tbl_auction_info_result".auction_seq IS '경매번호';
COMMENT ON COLUMN "tbl_auction_info_result".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_auction_info_result".price IS '가격';
COMMENT ON COLUMN "tbl_auction_info_result".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_auction_info_result".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_auction_info_result".user_seq IS '사용자번호';
COMMENT ON COLUMN "tbl_auction_info_result".user_id IS '사용자 아이디';
COMMENT ON TABLE  "tbl_auction_ini_request_history" IS '경매 결제 이니니스 정보 관리 테이블';
COMMENT ON COLUMN "tbl_auction_ini_request_history".seq_no IS '번호';
COMMENT ON COLUMN "tbl_auction_ini_request_history".code IS '코드';
COMMENT ON COLUMN "tbl_auction_ini_request_history".message IS '메시지';
COMMENT ON COLUMN "tbl_auction_ini_request_history".order_number IS '경매 결제관리 번호';
COMMENT ON COLUMN "tbl_auction_ini_request_history".order_seq_no IS '경매 결제 고유번호';
COMMENT ON COLUMN "tbl_auction_ini_request_history".pg_number IS 'pg 관리번호';
COMMENT ON COLUMN "tbl_auction_ini_request_history".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_auction_ini_request_history".result IS '결과내용';
COMMENT ON COLUMN "tbl_auction_ini_request_history".result_code IS '결과코드';
COMMENT ON COLUMN "tbl_auction_ini_request_history".return_code IS '리턴코드';
COMMENT ON COLUMN "tbl_auction_ini_request_history".site_cate_seq IS '사이트 번호';
COMMENT ON COLUMN "tbl_auction_ini_request_history".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_auction_ini_request_history".user_seq IS '사용자 번호';
COMMENT ON TABLE  "tbl_auction_order_info" IS '경매 결제 관리 테이블';
COMMENT ON COLUMN "tbl_auction_order_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_auction_order_info".moid IS 'moid';
COMMENT ON COLUMN "tbl_auction_order_info".address1 IS '주소';
COMMENT ON COLUMN "tbl_auction_order_info".auth_token IS '인증토큰';
COMMENT ON COLUMN "tbl_auction_order_info".card_code IS '결제카드타입';
COMMENT ON COLUMN "tbl_auction_order_info".cash_receipt IS '현금영수증';
COMMENT ON COLUMN "tbl_auction_order_info".cid IS 'cid';
COMMENT ON COLUMN "tbl_auction_order_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_auction_order_info".delivery_fee IS '배송비용';
COMMENT ON COLUMN "tbl_auction_order_info".delivery_state IS '배송상태';
COMMENT ON COLUMN "tbl_auction_order_info".detail_address1 IS '상세주소';
COMMENT ON COLUMN "tbl_auction_order_info".email IS '이메일';
COMMENT ON COLUMN "tbl_auction_order_info".export_flag IS '수출 플래그';
COMMENT ON COLUMN "tbl_auction_order_info".export_number IS '수출 번호';
COMMENT ON COLUMN "tbl_auction_order_info".express_company IS '배송업체명';
COMMENT ON COLUMN "tbl_auction_order_info".express_number IS '배송번호';
COMMENT ON COLUMN "tbl_auction_order_info".extra_delivery_fee IS '추가 배송금액';
COMMENT ON COLUMN "tbl_auction_order_info".m_key IS 'm 키';
COMMENT ON COLUMN "tbl_auction_order_info".memo IS '메모';
COMMENT ON COLUMN "tbl_auction_order_info".mid IS 'mid';
COMMENT ON COLUMN "tbl_auction_order_info".oid IS 'oid';
COMMENT ON COLUMN "tbl_auction_order_info".order_admin_memo IS '관리가 메모';
COMMENT ON COLUMN "tbl_auction_order_info".order_number IS '주문 고윺번호';
COMMENT ON COLUMN "tbl_auction_order_info".pay_info IS '결제 정보';
COMMENT ON COLUMN "tbl_auction_order_info".pg_code IS 'pg 코드';
COMMENT ON COLUMN "tbl_auction_order_info".pg_number IS 'pg 번호';
COMMENT ON COLUMN "tbl_auction_order_info".pg_token IS 'pg 토큰';
COMMENT ON COLUMN "tbl_auction_order_info".point_order_check IS '포인트 결제여부 체크';
COMMENT ON COLUMN "tbl_auction_order_info".point_price IS '포인트 결제 금액';
COMMENT ON COLUMN "tbl_auction_order_info".postcode IS '우편번호';
COMMENT ON COLUMN "tbl_auction_order_info".product_img_url IS '상품 이미지 url';
COMMENT ON COLUMN "tbl_auction_order_info".recv_name IS '받는이 이름';
COMMENT ON COLUMN "tbl_auction_order_info".recv_phone IS '받는이 전화번호';
COMMENT ON COLUMN "tbl_auction_order_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_auction_order_info".req_name IS '주문자 이름';
COMMENT ON COLUMN "tbl_auction_order_info".req_name_eng IS '주문자 이름 영문';
COMMENT ON COLUMN "tbl_auction_order_info".req_phone IS '주문자 전화번호';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time10 IS 'state 시간(전체)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time3 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time4 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time5 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time6 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time7 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time8 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".state_date_time9 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_auction_order_info".tid IS 'pg사 관리번호';
COMMENT ON COLUMN "tbl_auction_order_info".title IS '주문명';
COMMENT ON COLUMN "tbl_auction_order_info".total_price IS '총 결제금액';
COMMENT ON COLUMN "tbl_auction_order_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_auction_order_info".user_agent IS '사용자 결제 환경';
COMMENT ON COLUMN "tbl_auction_order_info".userip IS '사용자 결제 ip';
COMMENT ON COLUMN "tbl_auction_order_info".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_auction_order_info".auction_seq IS '결제한 경매 고유번호';
COMMENT ON TABLE  "tbl_bank_info" IS '은행 정보 관리 테이블';
COMMENT ON COLUMN "tbl_bank_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_bank_info".bank_name IS '은행명';
COMMENT ON COLUMN "tbl_bank_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_bank_info".rank IS '순서';
COMMENT ON COLUMN "tbl_bank_info".interpark_active IS '인터파크 관리 활성화';
COMMENT ON COLUMN "tbl_bank_info".interpark_code IS '인터파크 은행코드';
COMMENT ON TABLE  "tbl_board_codblock_content" IS '게시물 컨텐츠 관리 테이블';
COMMENT ON COLUMN "tbl_board_codblock_content".seq_no IS '번호';
COMMENT ON COLUMN "tbl_board_codblock_content".board_hits IS '게시물 조회수';
COMMENT ON COLUMN "tbl_board_codblock_content".board_seq IS '게시판 고유번호';
COMMENT ON COLUMN "tbl_board_codblock_content".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_board_codblock_content".file_seq IS '첨부파일 번호';
COMMENT ON COLUMN "tbl_board_codblock_content".footer IS '푸터 html';
COMMENT ON COLUMN "tbl_board_codblock_content".header IS '헤더 html';
COMMENT ON COLUMN "tbl_board_codblock_content".header_img_url IS '해더 이미지 url';
COMMENT ON COLUMN "tbl_board_codblock_content".middle_conent IS '중간 html';
COMMENT ON COLUMN "tbl_board_codblock_content".notice_check IS '공지 체크';
COMMENT ON COLUMN "tbl_board_codblock_content".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_board_codblock_content".search_content IS '검색 내용';
COMMENT ON COLUMN "tbl_board_codblock_content".search_title IS '검색 제목';
COMMENT ON COLUMN "tbl_board_codblock_content".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_board_codblock_content".title IS '제목';
COMMENT ON COLUMN "tbl_board_codblock_content".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_board_content_tag" IS '사이트 테그 관리 테이블';
COMMENT ON COLUMN "tbl_board_content_tag".seq_no IS '번호';
COMMENT ON COLUMN "tbl_board_content_tag".board_content_seq IS '게시물 컨텐츠 고유번호';
COMMENT ON COLUMN "tbl_board_content_tag".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_board_content_tag".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_board_content_tag".tag IS '테크';
COMMENT ON TABLE  "tbl_board_content_tag_search" IS '사이트 검색용 테그 관리 테이블';
COMMENT ON COLUMN "tbl_board_content_tag_search".seq_no IS '번호';
COMMENT ON COLUMN "tbl_board_content_tag_search".board_content_seq IS '게시물 컨텐츠 고유번호';
COMMENT ON COLUMN "tbl_board_content_tag_search".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_board_content_tag_search".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_board_content_tag_search".tag IS '테그';
COMMENT ON TABLE  "tbl_board_info" IS '게시판 관리 테이블';
COMMENT ON COLUMN "tbl_board_info".id IS '아이디';
COMMENT ON COLUMN "tbl_board_info".answer_level IS '딥변 레벨 관리 테이블';
COMMENT ON COLUMN "tbl_board_info".c_coment_level IS '대댓글 관리 테이블';
COMMENT ON COLUMN "tbl_board_info".coment_level IS '댓글 관리 테이블';
COMMENT ON COLUMN "tbl_board_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_board_info".rank IS '게시판 순서';
COMMENT ON COLUMN "tbl_board_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_board_info".site_cate_seq IS '사이트 관리테이블';
COMMENT ON COLUMN "tbl_board_info".text IS '게시판 명';
COMMENT ON COLUMN "tbl_board_info".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_board_info".board_type IS '게시판 타입';
COMMENT ON COLUMN "tbl_board_info".view_level IS '보기 레벨';
COMMENT ON COLUMN "tbl_board_info".write_level IS '쓰기 레벨';
COMMENT ON TABLE  "tbl_calender_info" IS '달력 관리 테이블';
COMMENT ON COLUMN "tbl_calender_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_calender_info".content_type IS '컨텐츠 타입';
COMMENT ON COLUMN "tbl_calender_info".date IS '날짜';
COMMENT ON COLUMN "tbl_calender_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_calender_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_calender_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_calender_info".view_seq IS '해당 컨텐츠 고유번호';
COMMENT ON TABLE  "tbl_cancel_item" IS '부분취소 관리 테이블';
COMMENT ON COLUMN "tbl_cancel_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_cancel_item".cancle_reason IS '부분취소 이유';
COMMENT ON COLUMN "tbl_cancel_item".memo IS '메모';
COMMENT ON COLUMN "tbl_cancel_item".order_seq_no IS '결제 고유번호';
COMMENT ON COLUMN "tbl_cancel_item".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_cancel_item".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_cancel_item".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_cancel_item".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_cancel_item".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_card_info" IS '카드사 관리 테이블';
COMMENT ON COLUMN "tbl_card_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_card_info".card_code IS '인터파크 카드 관리코드';
COMMENT ON COLUMN "tbl_card_info".ini_code IS '이니시스 카드 관리 코드';
COMMENT ON COLUMN "tbl_card_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_card_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_card_info".card_name IS '카드사 명';
COMMENT ON COLUMN "tbl_card_info".card_search IS '카드사 검색';
COMMENT ON TABLE  "tbl_cart_item" IS '장바구니 관리 테이블';
COMMENT ON COLUMN "tbl_cart_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_cart_item".delivery_type IS '배송타입';
COMMENT ON COLUMN "tbl_cart_item".option_seq IS '상품 옵션 고유번호';
COMMENT ON COLUMN "tbl_cart_item".order_detail IS '옵션 상세정보';
COMMENT ON COLUMN "tbl_cart_item".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_cart_item".quantity IS '갯수';
COMMENT ON COLUMN "tbl_cart_item".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_cart_item".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_cart_item".title IS '상품명';
COMMENT ON COLUMN "tbl_cart_item".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_cart_item".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_cart_item".del_check IS '삭제여부';
COMMENT ON TABLE  "tbl_event_info" IS '이벤트 관리 테이블';
COMMENT ON COLUMN "tbl_event_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_event_info".board_hits IS '이벤트 조회수';
COMMENT ON COLUMN "tbl_event_info".content_eng IS '내용 영문';
COMMENT ON COLUMN "tbl_event_info".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_event_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_event_info".end_date IS '이벤트 종료일';
COMMENT ON COLUMN "tbl_event_info".file_seq IS '배너 파일 번호';
COMMENT ON COLUMN "tbl_event_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_event_info".search_title_eng IS '제목 영문 검색';
COMMENT ON COLUMN "tbl_event_info".search_title_kr IS '제목 국문 검색';
COMMENT ON COLUMN "tbl_event_info".start_date IS '이벤트 시작일';
COMMENT ON COLUMN "tbl_event_info".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_event_info".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_event_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_event_info".vote_option IS '투표 옵션';
COMMENT ON COLUMN "tbl_event_info".agent_seq IS '등록한 관리자 번호';
COMMENT ON COLUMN "tbl_event_info".board_seq IS '게시판 번호';
COMMENT ON COLUMN "tbl_event_info".search_content_eng IS '검색 내용 영문';
COMMENT ON COLUMN "tbl_event_info".search_content_kr IS '검색 내용 국문';
COMMENT ON COLUMN "tbl_event_info".event_attend IS '이벤트 참여수';
COMMENT ON COLUMN "tbl_event_info".event_price IS '이벤트 결제 금액';
COMMENT ON COLUMN "tbl_event_info".event_price_check IS '이벤트 결제여부 체크';
COMMENT ON COLUMN "tbl_event_info".event_type IS '이벤트 타입';
COMMENT ON COLUMN "tbl_event_info".open_date IS '이벤트 공개일';
COMMENT ON TABLE  "tbl_event_info_attend" IS '이벤트 참석 관리 테이블';
COMMENT ON COLUMN "tbl_event_info_attend".seq_no IS '번호';
COMMENT ON COLUMN "tbl_event_info_attend".content_seq IS '이벤트 고유번호';
COMMENT ON COLUMN "tbl_event_info_attend".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_event_info_attend".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_event_info_attend".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_event_info_attend".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_event_info_attend_log" IS '이벤트 참석 로그 관리 테이블';
COMMENT ON COLUMN "tbl_event_info_attend_log".seq_no IS '번호';
COMMENT ON COLUMN "tbl_event_info_attend_log".attend_type IS '참석 타입';
COMMENT ON COLUMN "tbl_event_info_attend_log".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_event_info_attend_log".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_event_info_attend_log".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_event_info_attend_log".user_seq IS '사용자 번호';
COMMENT ON COLUMN "tbl_event_info_attend_log".event_seq IS '이벤트 번호';
COMMENT ON COLUMN "tbl_event_info_attend_log".content IS '댓글 로그 ';
COMMENT ON TABLE  "tbl_event_info_comment" IS '이벤트 댓글 관리 테이블';
COMMENT ON COLUMN "tbl_event_info_comment".seq_no IS '번호';
COMMENT ON COLUMN "tbl_event_info_comment".content IS '댓글';
COMMENT ON COLUMN "tbl_event_info_comment".content_seq IS '이벤트 고유번호';
COMMENT ON COLUMN "tbl_event_info_comment".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_event_info_comment".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_event_info_comment".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_event_info_comment".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_express_company_info" IS '배송업체 관리 테이블';
COMMENT ON COLUMN "tbl_express_company_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_express_company_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_express_company_info".express_name IS '배송업체명';
COMMENT ON COLUMN "tbl_express_company_info".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_express_company_info".sweet_tracker_code IS '스윗트레커 코드명';
COMMENT ON COLUMN "tbl_express_company_info".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_extra_delivery_fee" IS '추가 배송 관리 테이블';
COMMENT ON COLUMN "tbl_extra_delivery_fee".seq_no IS '번호';
COMMENT ON COLUMN "tbl_extra_delivery_fee".address IS '주소';
COMMENT ON COLUMN "tbl_extra_delivery_fee".postcode IS '우편번호';
COMMENT ON COLUMN "tbl_extra_delivery_fee".type IS '추가 배송타입';
COMMENT ON TABLE  "tbl_faq_cate" IS 'FAQ 카테고리 관리테이블';
COMMENT ON COLUMN "tbl_faq_cate".seq_no IS '번호';
COMMENT ON COLUMN "tbl_faq_cate".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_faq_cate".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_faq_cate".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_faq_cate".title_kr IS '제묵 국문';
COMMENT ON COLUMN "tbl_faq_cate".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_faq_cate".rank IS '순서';
COMMENT ON TABLE  "tbl_faq_info" IS 'FAQ 컨텐츠 관리 테이블';
COMMENT ON COLUMN "tbl_faq_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_faq_info".agent_seq IS '등록자';
COMMENT ON COLUMN "tbl_faq_info".board_hits IS '조회수';
COMMENT ON COLUMN "tbl_faq_info".content_eng IS '내용 영문';
COMMENT ON COLUMN "tbl_faq_info".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_faq_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_faq_info".end_date IS '끝 날짜';
COMMENT ON COLUMN "tbl_faq_info".file_seq IS '파일번호';
COMMENT ON COLUMN "tbl_faq_info".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_faq_info".search_content_eng IS '검색 내용 영문';
COMMENT ON COLUMN "tbl_faq_info".search_content_kr IS '검색 내용 국문';
COMMENT ON COLUMN "tbl_faq_info".search_title_eng IS '검색 제목 영문';
COMMENT ON COLUMN "tbl_faq_info".search_title_kr IS '검색 제목 국문';
COMMENT ON COLUMN "tbl_faq_info".start_date IS '시작 날짜';
COMMENT ON COLUMN "tbl_faq_info".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_faq_info".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_faq_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_faq_info".faq_cate IS 'faq 카테고리 고유번호';
COMMENT ON TABLE  "tbl_file" IS '파일 관리 테이블';
COMMENT ON COLUMN "tbl_file".seq_no IS '번호';
COMMENT ON COLUMN "tbl_file".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_file".file_name_change IS '변경된 파일명';
COMMENT ON COLUMN "tbl_file".file_name_extension IS '파일 확장자';
COMMENT ON COLUMN "tbl_file".file_name_ori IS '고유 파일명';
COMMENT ON COLUMN "tbl_file".file_size IS '파일 크기';
COMMENT ON COLUMN "tbl_file".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_file".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_file".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_file_agency" IS '에이전시 파일 관리 테이블';
COMMENT ON COLUMN "tbl_file_agency".seq_no IS '번호';
COMMENT ON COLUMN "tbl_file_agency".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_file_agency".file_name_change IS '변경된 파일명';
COMMENT ON COLUMN "tbl_file_agency".file_name_extension IS '파일 확장자';
COMMENT ON COLUMN "tbl_file_agency".file_name_ori IS '파일명';
COMMENT ON COLUMN "tbl_file_agency".file_size IS '파일 사이즈';
COMMENT ON COLUMN "tbl_file_agency".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_file_agency".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_file_agency".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_file_agent" IS '에이전트 파일 관리 테이블';
COMMENT ON COLUMN "tbl_file_agent".seq_no IS '번호';
COMMENT ON COLUMN "tbl_file_agent".agency_seq IS '에이전시 고유번호';
COMMENT ON COLUMN "tbl_file_agent".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_file_agent".file_name_change IS '변경된 파일명';
COMMENT ON COLUMN "tbl_file_agent".file_name_extension IS '파일 확장자';
COMMENT ON COLUMN "tbl_file_agent".file_name_ori IS '파일 고유명';
COMMENT ON COLUMN "tbl_file_agent".file_size IS '파일 사이즈';
COMMENT ON COLUMN "tbl_file_agent".regdate IS 'emdfher 일자';
COMMENT ON COLUMN "tbl_file_agent".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_file_main" IS 'playkfa index 파일 관리 테이블';
COMMENT ON COLUMN "tbl_file_main".seq_no IS '번호';
COMMENT ON COLUMN "tbl_file_main".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_file_main".file_name_change IS '변경된 파일명';
COMMENT ON COLUMN "tbl_file_main".file_name_extension IS '파일 확장자';
COMMENT ON COLUMN "tbl_file_main".file_name_ori IS '파일명';
COMMENT ON COLUMN "tbl_file_main".file_size IS '파일 크기';
COMMENT ON COLUMN "tbl_file_main".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_file_main".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_file_main".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_file_review" IS '상품 리뷰 파일 관리 테이블';
COMMENT ON COLUMN "tbl_file_review".seq_no IS '번호';
COMMENT ON COLUMN "tbl_file_review".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_file_review".file_name_change IS '변경된 파일명';
COMMENT ON COLUMN "tbl_file_review".file_name_extension IS '파일 확장자';
COMMENT ON COLUMN "tbl_file_review".file_name_ori IS '파일명';
COMMENT ON COLUMN "tbl_file_review".file_size IS '파일 사이즈';
COMMENT ON COLUMN "tbl_file_review".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_file_review".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_file_review".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_gallery_info" IS '갤러리 관리 테이블';
COMMENT ON COLUMN "tbl_gallery_info".id IS '아이디';
COMMENT ON COLUMN "tbl_gallery_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_gallery_info".rank IS '갤러리 순서';
COMMENT ON COLUMN "tbl_gallery_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_gallery_info".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_gallery_info".text IS '갤러리 제목';
COMMENT ON COLUMN "tbl_gallery_info".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_gallery_info_img" IS '갤러리 이미지 관리 테이블';
COMMENT ON COLUMN "tbl_gallery_info_img".seq_no IS '번호';
COMMENT ON COLUMN "tbl_gallery_info_img".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_gallery_info_img".file_seq IS '파일 고유번호';
COMMENT ON COLUMN "tbl_gallery_info_img".gallery_seq IS '갤러리 고유번호';
COMMENT ON COLUMN "tbl_gallery_info_img".rank IS '순서';
COMMENT ON COLUMN "tbl_gallery_info_img".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_gallery_info_img".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_gallery_info_img".title IS '이미지 제목';
COMMENT ON COLUMN "tbl_gallery_info_img".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_ini_cancel_history" IS '이니시스 취소 관리 테이블';
COMMENT ON COLUMN "tbl_ini_cancel_history".seq_no IS '번호';
COMMENT ON COLUMN "tbl_ini_cancel_history".code IS '코드';
COMMENT ON COLUMN "tbl_ini_cancel_history".message IS '메시지';
COMMENT ON COLUMN "tbl_ini_cancel_history".order_seq_no IS '결제 고유번호';
COMMENT ON COLUMN "tbl_ini_cancel_history".pg_number IS 'pg 관리 번호';
COMMENT ON COLUMN "tbl_ini_cancel_history".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_ini_cancel_history".result IS '이니시스 취소 결과';
COMMENT ON COLUMN "tbl_ini_cancel_history".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_ini_cancel_history".tid IS '이니시스 관리 번호';
COMMENT ON COLUMN "tbl_ini_cancel_history".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_ini_cancel_history".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_ini_cancel_part_history" IS '이니시스 부분 취소 관리 테이블';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".seq_no IS '번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".code IS '코드';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".message IS '메시지';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".order_seq_no IS '결제 고유번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".pg_number IS 'pg 관리번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".result IS '이니시스 결과값';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".tid IS '이니니스 고유번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".user_seq IS '사용자 번호';
COMMENT ON COLUMN "tbl_ini_cancel_part_history".order_item_seq_no IS '주문 아이탬 고유번호';
COMMENT ON TABLE  "tbl_ini_request_history" IS '이니시스 요청 관리 테이블';
COMMENT ON COLUMN "tbl_ini_request_history".seq_no IS '번호';
COMMENT ON COLUMN "tbl_ini_request_history".code IS '코드';
COMMENT ON COLUMN "tbl_ini_request_history".message IS '메시지';
COMMENT ON COLUMN "tbl_ini_request_history".order_number IS '결제 번호';
COMMENT ON COLUMN "tbl_ini_request_history".order_seq_no IS '결제 고유번호';
COMMENT ON COLUMN "tbl_ini_request_history".pg_number IS 'pg 관리번호';
COMMENT ON COLUMN "tbl_ini_request_history".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_ini_request_history".result IS '이니시스 결과 ';
COMMENT ON COLUMN "tbl_ini_request_history".result_code IS '이니시스 결과 코드';
COMMENT ON COLUMN "tbl_ini_request_history".return_code IS '이니시스 리턴 코드';
COMMENT ON COLUMN "tbl_ini_request_history".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_ini_request_history".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_ini_request_history".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_inquiry" IS '문의하기 관리 테이블';
COMMENT ON COLUMN "tbl_inquiry".seq_no IS '번호';
COMMENT ON COLUMN "tbl_inquiry".answer_active IS '답변 여부 확인';
COMMENT ON COLUMN "tbl_inquiry".content IS '내용';
COMMENT ON COLUMN "tbl_inquiry".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_inquiry".inquiry_type IS '문의 타입';
COMMENT ON COLUMN "tbl_inquiry".order_seq IS '주문 고유번호';
COMMENT ON COLUMN "tbl_inquiry".pgcode IS 'pg코드';
COMMENT ON COLUMN "tbl_inquiry".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_inquiry".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_inquiry".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_inquiry".title IS '제목';
COMMENT ON COLUMN "tbl_inquiry".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_inquiry".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_inquiry".secret_check IS '비밀글 체크';
COMMENT ON TABLE  "tbl_inquiry_reply" IS '문의하기 답변 관리 테이블';
COMMENT ON COLUMN "tbl_inquiry_reply".seq_no IS '번호';
COMMENT ON COLUMN "tbl_inquiry_reply".content IS '내용';
COMMENT ON COLUMN "tbl_inquiry_reply".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_inquiry_reply".inquiry_seq IS '문의 고유번호';
COMMENT ON COLUMN "tbl_inquiry_reply".rank IS '댓글 순서';
COMMENT ON COLUMN "tbl_inquiry_reply".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_inquiry_reply".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_inquiry_reply".title IS '제목';
COMMENT ON COLUMN "tbl_inquiry_reply".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_inquiry_reply".user_grade IS '사용자 등급';
COMMENT ON COLUMN "tbl_inquiry_reply".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_log_info" IS '접속 로그 관리 테이블';
COMMENT ON COLUMN "tbl_log_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_log_info".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_log_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_log_info".function_active IS '활성화 함수';
COMMENT ON COLUMN "tbl_log_info".main_cate IS '메인 카테고리';
COMMENT ON COLUMN "tbl_log_info".sub_cate IS '서브 카테고리';
COMMENT ON COLUMN "tbl_log_info".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_log_info".user_agent IS '사이트 접속';
COMMENT ON COLUMN "tbl_log_info".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_log_info".view_seq IS 'view 번호';
COMMENT ON TABLE  "tbl_main_home_item" IS 'playkfa index main 배너 관리 테이블';
COMMENT ON COLUMN "tbl_main_home_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_main_home_item".banner_seq_eng IS '배너 파일 영문 고유번호';
COMMENT ON COLUMN "tbl_main_home_item".banner_seq_kr IS '배너 파일 국문 고유번호';
COMMENT ON COLUMN "tbl_main_home_item".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_main_home_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_main_home_item".end_date IS '종료일';
COMMENT ON COLUMN "tbl_main_home_item".link IS '연결된 url 링크';
COMMENT ON COLUMN "tbl_main_home_item".rank IS '순서';
COMMENT ON COLUMN "tbl_main_home_item".start_date IS '시작일';
COMMENT ON COLUMN "tbl_main_home_item".title_eng IS '타이틀 영문';
COMMENT ON COLUMN "tbl_main_home_item".title_kr IS '타이틀 국문';
COMMENT ON COLUMN "tbl_main_home_item".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_main_home_item".search_title_eng IS '검색 타이블 영문';
COMMENT ON COLUMN "tbl_main_home_item".search_title_kr IS '검색 타이블 국문';
COMMENT ON TABLE  "tbl_main_middle_item" IS 'playkfa index 중단 배너 관리 테이블';
COMMENT ON COLUMN "tbl_main_middle_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_main_middle_item".banner_seq_eng IS '배너 파일 영문 고유번호';
COMMENT ON COLUMN "tbl_main_middle_item".banner_seq_kr IS '배너 파일 국문 고유번호';
COMMENT ON COLUMN "tbl_main_middle_item".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_main_middle_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_main_middle_item".end_date IS '종료일';
COMMENT ON COLUMN "tbl_main_middle_item".link IS '배너 url 링크';
COMMENT ON COLUMN "tbl_main_middle_item".rank IS '순서';
COMMENT ON COLUMN "tbl_main_middle_item".start_date IS '종료일';
COMMENT ON COLUMN "tbl_main_middle_item".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_main_middle_item".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_main_middle_item".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_main_middle_item".search_title_eng IS '검색 제목 영문';
COMMENT ON COLUMN "tbl_main_middle_item".search_title_kr IS '검색 제목 국문';
COMMENT ON TABLE  "tbl_main_popup_item" IS 'playkfa index 팝업 관리 테이블';
COMMENT ON COLUMN "tbl_main_popup_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_main_popup_item".banner_seq_eng IS '배너 영문 파일 고유번호';
COMMENT ON COLUMN "tbl_main_popup_item".banner_seq_kr IS '배너 국문 파일 고유번호';
COMMENT ON COLUMN "tbl_main_popup_item".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_main_popup_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_main_popup_item".end_date IS '종료일';
COMMENT ON COLUMN "tbl_main_popup_item".link IS '팝업 url link';
COMMENT ON COLUMN "tbl_main_popup_item".rank IS '순서';
COMMENT ON COLUMN "tbl_main_popup_item".start_date IS '시작일';
COMMENT ON COLUMN "tbl_main_popup_item".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_main_popup_item".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_main_popup_item".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_main_popup_item".search_title_eng IS '제목 영문 검색';
COMMENT ON COLUMN "tbl_main_popup_item".search_title_kr IS '제목 국문 검색';
COMMENT ON TABLE  "tbl_main_top_item" IS 'playkfa index 상단 배너 관리 테이블';
COMMENT ON COLUMN "tbl_main_top_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_main_top_item".banner_seq_eng IS '영문 배너 이미지 파일';
COMMENT ON COLUMN "tbl_main_top_item".banner_seq_kr IS '국문 배너 이미지 파일';
COMMENT ON COLUMN "tbl_main_top_item".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_main_top_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_main_top_item".end_date IS '종료일';
COMMENT ON COLUMN "tbl_main_top_item".link IS '링크';
COMMENT ON COLUMN "tbl_main_top_item".rank IS '순서';
COMMENT ON COLUMN "tbl_main_top_item".start_date IS '시작일';
COMMENT ON COLUMN "tbl_main_top_item".title_eng IS '타이틀 영문';
COMMENT ON COLUMN "tbl_main_top_item".title_kr IS '타이블 국문';
COMMENT ON COLUMN "tbl_main_top_item".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_main_top_item".search_title_eng IS '타이틀 영문 검색';
COMMENT ON COLUMN "tbl_main_top_item".search_title_kr IS '타이틀 국문 검색';
COMMENT ON TABLE  "tbl_main_video_item" IS 'playkfa index 영상 배너 관리 테이블';
COMMENT ON COLUMN "tbl_main_video_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_main_video_item".created_date IS '생성날짜';
COMMENT ON COLUMN "tbl_main_video_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_main_video_item".end_date IS '종료일';
COMMENT ON COLUMN "tbl_main_video_item".link IS '유튜브 링크';
COMMENT ON COLUMN "tbl_main_video_item".rank IS '순서';
COMMENT ON COLUMN "tbl_main_video_item".start_date IS '시작일';
COMMENT ON COLUMN "tbl_main_video_item".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_main_video_item".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_main_video_item".updated_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_main_video_item".search_title_eng IS '검색 제목 영문';
COMMENT ON COLUMN "tbl_main_video_item".search_title_kr IS '검색 제목 국문';
COMMENT ON COLUMN "tbl_main_video_item".banner_seq_eng IS '배너 영문 파일 고유번호';
COMMENT ON COLUMN "tbl_main_video_item".banner_seq_kr IS '배너 국문 파일 고유번호';
COMMENT ON TABLE  "tbl_notice_info" IS '공지사항 관리 테이블';
COMMENT ON COLUMN "tbl_notice_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_notice_info".board_hits IS '조회수';
COMMENT ON COLUMN "tbl_notice_info".content_eng IS '내용 영문';
COMMENT ON COLUMN "tbl_notice_info".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_notice_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_notice_info".end_date IS '종료일';
COMMENT ON COLUMN "tbl_notice_info".file_seq IS '첨부파일 고유번호';
COMMENT ON COLUMN "tbl_notice_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_notice_info".search_title_eng IS '검색 제목 영문';
COMMENT ON COLUMN "tbl_notice_info".search_title_kr IS '검색 제목 국문';
COMMENT ON COLUMN "tbl_notice_info".start_date IS '시작일';
COMMENT ON COLUMN "tbl_notice_info".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_notice_info".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_notice_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_notice_info".vote_option IS '투표옵션';
COMMENT ON COLUMN "tbl_notice_info".agent_seq IS '등록된 사용자';
COMMENT ON COLUMN "tbl_notice_info".board_seq IS '게시판 번호';
COMMENT ON COLUMN "tbl_notice_info".search_content_eng IS '검색 내용 영문';
COMMENT ON COLUMN "tbl_notice_info".search_content_kr IS '검색 내용 국문';
COMMENT ON TABLE  "tbl_order_booking" IS '주문 티켓 관리 테이블';
COMMENT ON COLUMN "tbl_order_booking".seq_no IS '번호';
COMMENT ON COLUMN "tbl_order_booking".bdate_bdate_seq IS '티켓 고유번호';
COMMENT ON COLUMN "tbl_order_booking".booking_place IS '티멧 예약장소';
COMMENT ON COLUMN "tbl_order_booking".point_current IS '포인트';
COMMENT ON COLUMN "tbl_order_booking".product_title IS '상품명';
COMMENT ON COLUMN "tbl_order_booking".ticket_price IS '티켓 가격';
COMMENT ON COLUMN "tbl_order_booking".ticket_seq IS '티켓 고유번호';
COMMENT ON COLUMN "tbl_order_booking".total_price IS '총 결제 금액';
COMMENT ON COLUMN "tbl_order_booking".user_seq IS '사용자 번호';
COMMENT ON TABLE  "tbl_order_booking_log" IS '주문 티켓 업로드 로그 관리 테이블';
COMMENT ON COLUMN "tbl_order_booking_log".seq_no IS '번호';
COMMENT ON COLUMN "tbl_order_booking_log".agent_seq IS 'agent 번호';
COMMENT ON COLUMN "tbl_order_booking_log".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_order_booking_log".file_name IS '파일 명';
COMMENT ON COLUMN "tbl_order_booking_log".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_order_booking_log".total_point IS '해당 파일 전체 포인트';
COMMENT ON COLUMN "tbl_order_booking_log".total_row IS '해당 파일 전체 로우수';
COMMENT ON COLUMN "tbl_order_booking_log".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_order_info" IS '결제 관리 테이블 032 096 00';
COMMENT ON COLUMN "tbl_order_info".seq_no IS '주문고유번호';
COMMENT ON COLUMN "tbl_order_info".address1 IS '주소';
COMMENT ON COLUMN "tbl_order_info".cash_receipt IS '현금영수증';
COMMENT ON COLUMN "tbl_order_info".cid IS 'cid';
COMMENT ON COLUMN "tbl_order_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_order_info".delivery_fee IS '배송료';
COMMENT ON COLUMN "tbl_order_info".delivery_state IS '배송상태';
COMMENT ON COLUMN "tbl_order_info".detail_address1 IS '상세주소';
COMMENT ON COLUMN "tbl_order_info".email IS '이메일';
COMMENT ON COLUMN "tbl_order_info".export_flag IS '수출  flag';
COMMENT ON COLUMN "tbl_order_info".export_number IS '수출 번호';
COMMENT ON COLUMN "tbl_order_info".express_company IS '배송업체';
COMMENT ON COLUMN "tbl_order_info".express_number IS '배송번호';
COMMENT ON COLUMN "tbl_order_info".extra_delivery_fee IS '추가 배송료';
COMMENT ON COLUMN "tbl_order_info".memo IS '메모';
COMMENT ON COLUMN "tbl_order_info".order_admin_memo IS '관리자 메모';
COMMENT ON COLUMN "tbl_order_info".pay_info IS '가격 정보';
COMMENT ON COLUMN "tbl_order_info".pg_code IS 'pg 코드';
COMMENT ON COLUMN "tbl_order_info".pg_number IS 'pg번호';
COMMENT ON COLUMN "tbl_order_info".pg_token IS 'pg 토큰';
COMMENT ON COLUMN "tbl_order_info".postcode IS '우편번호';
COMMENT ON COLUMN "tbl_order_info".product_img_url IS '주문상품 이미지 url';
COMMENT ON COLUMN "tbl_order_info".recv_name IS '배송자명';
COMMENT ON COLUMN "tbl_order_info".recv_phone IS '배송자 전화번호';
COMMENT ON COLUMN "tbl_order_info".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_order_info".req_name IS '주문자 명';
COMMENT ON COLUMN "tbl_order_info".req_name_eng IS '주문자 영문명';
COMMENT ON COLUMN "tbl_order_info".req_phone IS '주문자 전화번호';
COMMENT ON COLUMN "tbl_order_info".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_order_info".tid IS '이니시스 관리 번호';
COMMENT ON COLUMN "tbl_order_info".title IS '주문명';
COMMENT ON COLUMN "tbl_order_info".total_price IS '주문 총가격';
COMMENT ON COLUMN "tbl_order_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_order_info".user_agent IS '주문한 브라우저 환경';
COMMENT ON COLUMN "tbl_order_info".userip IS '주문한 사용자 ip';
COMMENT ON COLUMN "tbl_order_info".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_order_info".moid IS 'moid';
COMMENT ON COLUMN "tbl_order_info".auth_token IS '인증 토큰';
COMMENT ON COLUMN "tbl_order_info".m_key IS 'm 키';
COMMENT ON COLUMN "tbl_order_info".mid IS 'mid';
COMMENT ON COLUMN "tbl_order_info".oid IS 'oid';
COMMENT ON COLUMN "tbl_order_info".order_number IS '주문번호';
COMMENT ON COLUMN "tbl_order_info".card_code IS '결제 카드사 고유번호';
COMMENT ON COLUMN "tbl_order_info".state_date_time10 IS 'state 시간(전체)';
COMMENT ON COLUMN "tbl_order_info".state_date_time3 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time4 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time5 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time6 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time7 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time8 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".state_date_time9 IS 'state 시간(구분)';
COMMENT ON COLUMN "tbl_order_info".point_order_check IS '포인트 결제 여부 체크';
COMMENT ON COLUMN "tbl_order_info".point_price IS '포인트 결제';
COMMENT ON COLUMN "tbl_order_info".track_active IS '배송 추적 확인';
COMMENT ON COLUMN "tbl_order_info".track_active_date_time IS '배송 추적 활성화 날짜';
COMMENT ON COLUMN "tbl_order_info".sweet_tracker_level IS '스윗트레커 배송상태';
COMMENT ON COLUMN "tbl_order_info".track_fail_date_time IS '추적 스케줄링 실패 시간';
COMMENT ON COLUMN "tbl_order_info".track_fail_reason IS '추적 스케줄링 이유';
COMMENT ON COLUMN "tbl_order_info".point_complete_check IS '포인트 생성 여부 체크';
COMMENT ON COLUMN "tbl_order_info".point_complete_date IS '포인트 생성 날짜';
COMMENT ON TABLE  "tbl_order_item" IS '주문 아이탬 관리 테이블';
COMMENT ON COLUMN "tbl_order_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_order_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_order_item".delivery_state IS '주문 아이탬 배송상황';
COMMENT ON COLUMN "tbl_order_item".delivery_type IS '배송 타입';
COMMENT ON COLUMN "tbl_order_item".discount_cal_price IS '할인 가격';
COMMENT ON COLUMN "tbl_order_item".export_delivery_state IS '해외 배송상품 여부';
COMMENT ON COLUMN "tbl_order_item".express_company IS '배송업체';
COMMENT ON COLUMN "tbl_order_item".express_number IS '송장번호';
COMMENT ON COLUMN "tbl_order_item".option_seq IS '상품 옵션 고유번호';
COMMENT ON COLUMN "tbl_order_item".option_value IS '상품 옵션 추가 가격';
COMMENT ON COLUMN "tbl_order_item".order_detail IS '상품 옵션 상세요청';
COMMENT ON COLUMN "tbl_order_item".order_seq_no IS '주문번호 고유번호';
COMMENT ON COLUMN "tbl_order_item".price IS '가격';
COMMENT ON COLUMN "tbl_order_item".product_img_url IS '상품 이미지 url';
COMMENT ON COLUMN "tbl_order_item".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_order_item".quantity IS '주문갯수';
COMMENT ON COLUMN "tbl_order_item".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_order_item".shipment_processing_date IS '배송 처리 날짜';
COMMENT ON COLUMN "tbl_order_item".title IS '상품명';
COMMENT ON COLUMN "tbl_order_item".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_order_item".refund_check IS '부분취소 여부';
COMMENT ON TABLE  "tbl_payment_total" IS '회원 주문 총 금액 관리 테이블';
COMMENT ON COLUMN "tbl_payment_total".seq_no IS '번호';
COMMENT ON COLUMN "tbl_payment_total".current_day IS '확인 날짜';
COMMENT ON COLUMN "tbl_payment_total".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_payment_total".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_payment_total".total_product_payment IS '총 상품 가격';
COMMENT ON COLUMN "tbl_payment_total".total_ticket_payment IS '총 티켓 가격';
COMMENT ON COLUMN "tbl_payment_total".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_payment_total".user_name IS '사용자명';
COMMENT ON COLUMN "tbl_payment_total".user_phone IS '사용자 휴대폰 번호';
COMMENT ON COLUMN "tbl_payment_total".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_payment_total".total_payment IS '총 결제 금액';
COMMENT ON TABLE  "tbl_point_log" IS '포인트 로그 관리 테이블';
COMMENT ON COLUMN "tbl_point_log".seq_no IS '번호';
COMMENT ON COLUMN "tbl_point_log".agent_seq IS '관리자 고유번호';
COMMENT ON COLUMN "tbl_point_log".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_point_log".file_name IS '포인트 파일명';
COMMENT ON COLUMN "tbl_point_log".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_point_log".total_point IS '전체 포인트';
COMMENT ON COLUMN "tbl_point_log".total_row IS '전체 로우';
COMMENT ON COLUMN "tbl_point_log".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_point_log".addUseeCheck IS '0:추가 1:사용';
COMMENT ON TABLE  "tbl_point_user" IS '포인트 사용자 관리 테이블';
COMMENT ON COLUMN "tbl_point_user".seq_no IS '번호';
COMMENT ON COLUMN "tbl_point_user".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_point_user".point_current IS '현재포인트';
COMMENT ON COLUMN "tbl_point_user".point_save IS '총 저장 포인트';
COMMENT ON COLUMN "tbl_point_user".point_used IS '총 사용 포인트';
COMMENT ON COLUMN "tbl_point_user".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_point_user".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_point_user".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_point_user_log" IS '포인트 사용자 로그 관리 테이블';
COMMENT ON COLUMN "tbl_point_user_log".seq_no IS '번호';
COMMENT ON COLUMN "tbl_point_user_log".agent_seq IS '관리자 고유번호';
COMMENT ON COLUMN "tbl_point_user_log".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_point_user_log".point_amount IS '등록된 포인트';
COMMENT ON COLUMN "tbl_point_user_log".point_increase_decrease IS '포인트 증가 감소 체크 0:증가 1:사용';
COMMENT ON COLUMN "tbl_point_user_log".point_type IS '포인트 저장';
COMMENT ON COLUMN "tbl_point_user_log".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_point_user_log".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_point_user_log".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_point_user_log".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_point_user_log".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_point_user_log".end_date IS '포인트 유효기간';
COMMENT ON COLUMN "tbl_point_user_log".order_seq IS '주문 번호';
COMMENT ON COLUMN "tbl_point_user_log".point_current IS '현재 포인트';
COMMENT ON COLUMN "tbl_point_user_log".point_mode IS '포인트 mode';
COMMENT ON COLUMN "tbl_point_user_log".temp_check IS '임시 포인트';
COMMENT ON COLUMN "tbl_point_user_log".point_log_seq IS '저장된 포인트 사용자 고유번호';
COMMENT ON COLUMN "tbl_point_user_log".direct_point_reason IS '감소 이유 기록용';
COMMENT ON COLUMN "tbl_point_user_log".order_seq_no IS '사용자 ';
COMMENT ON COLUMN "tbl_point_user_log".tid IS 'tid';
COMMENT ON COLUMN "tbl_point_user_log".product_order_seq_no IS '제품 주문 번호';
COMMENT ON TABLE  "tbl_product_category" IS '상품 카테고리 관리 테이블';
COMMENT ON COLUMN "tbl_product_category".id IS '아이디';
COMMENT ON COLUMN "tbl_product_category".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_category".rank IS '순서';
COMMENT ON COLUMN "tbl_product_category".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_product_category".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_category".sub2active IS '2단 하위메뉴 활성화 여부';
COMMENT ON COLUMN "tbl_product_category".sub2id IS '연결된 2단 상위메뉴 번호';
COMMENT ON COLUMN "tbl_product_category".sub_active IS '1단 하위메뉴 활성화 여부';
COMMENT ON COLUMN "tbl_product_category".sub_id IS '연결되 1단 상위메뉴 명';
COMMENT ON COLUMN "tbl_product_category".text IS '카테고리 명';
COMMENT ON COLUMN "tbl_product_category".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_info" IS '상품 관리 테이블';
COMMENT ON COLUMN "tbl_product_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_info".badge1 IS '뱃지1';
COMMENT ON COLUMN "tbl_product_info".badge2 IS '뱃지2';
COMMENT ON COLUMN "tbl_product_info".badge3 IS '뱃지3';
COMMENT ON COLUMN "tbl_product_info".badge_mode IS '뱃지mode';
COMMENT ON COLUMN "tbl_product_info".board_seq IS '게시판 고유번호';
COMMENT ON COLUMN "tbl_product_info".buy_link IS '구매 링크';
COMMENT ON COLUMN "tbl_product_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_info".discount_cal_price IS '할인 가격';
COMMENT ON COLUMN "tbl_product_info".discount_check IS '할인 여부 체크';
COMMENT ON COLUMN "tbl_product_info".discount_price IS '할인 된 가격';
COMMENT ON COLUMN "tbl_product_info".discount_rate IS '할인률';
COMMENT ON COLUMN "tbl_product_info".discount_type IS '할인 타입';
COMMENT ON COLUMN "tbl_product_info".like_count IS '상품 좋아요';
COMMENT ON COLUMN "tbl_product_info".price IS '가격';
COMMENT ON COLUMN "tbl_product_info".price_display_check IS '상품 가격 보이기 체크';
COMMENT ON COLUMN "tbl_product_info".product_information_notice_all_check IS '제품 정보 공지 모두 체크';
COMMENT ON COLUMN "tbl_product_info".product_information_notice_type IS '제품 정보 공지 타입';
COMMENT ON COLUMN "tbl_product_info".product_num IS '상품고유번호';
COMMENT ON COLUMN "tbl_product_info".product_stock_type IS '제품 스톡 타입';
COMMENT ON COLUMN "tbl_product_info".product_type IS '상품 타입';
COMMENT ON COLUMN "tbl_product_info".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_product_info".sale_enddate IS '판매 종료일';
COMMENT ON COLUMN "tbl_product_info".sale_startdate IS '판매 시작일';
COMMENT ON COLUMN "tbl_product_info".sales_period_check IS '판매일 설정';
COMMENT ON COLUMN "tbl_product_info".search_title IS '상품 제목 검색';
COMMENT ON COLUMN "tbl_product_info".selec7approval IS '승인 선택';
COMMENT ON COLUMN "tbl_product_info".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_info".sort_rank IS '상품 순서';
COMMENT ON COLUMN "tbl_product_info".sortdate IS '상품 순서 변경일';
COMMENT ON COLUMN "tbl_product_info".sub_title IS '서브 타이블';
COMMENT ON COLUMN "tbl_product_info".title IS '타이틀';
COMMENT ON COLUMN "tbl_product_info".to_seller_msg IS '판매자 메시지';
COMMENT ON COLUMN "tbl_product_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_product_info".promoted IS '프로모트 체크';
COMMENT ON COLUMN "tbl_product_info".log_share_count IS '상품 공유 횟수';
COMMENT ON COLUMN "tbl_product_info".product_main_cate IS '상품 메인 카테고리';
COMMENT ON COLUMN "tbl_product_info".purchase_quantity_count IS '상품 구매 횟수';
COMMENT ON COLUMN "tbl_product_info".purchase_restrictions IS '구매 제한';
COMMENT ON COLUMN "tbl_product_info".product_sub_cate IS '상품 서브 카테고리';
COMMENT ON COLUMN "tbl_product_info".kfa_independent_fee IS 'kfa 독립 수수료';
COMMENT ON COLUMN "tbl_product_info".kfa_independent_fee_active IS 'kfa 독립 수수료 활성화';
COMMENT ON TABLE  "tbl_product_info_codblock_detail" IS '상품 상세보기 codblock 관리 테이블';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".middle_conent IS '상세보기 html';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".site_cate_seq IS '사이트 번호';
COMMENT ON COLUMN "tbl_product_info_codblock_detail".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_info_delivery" IS '상품 배송 관리 테이블';
COMMENT ON COLUMN "tbl_product_info_delivery".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_info_delivery".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_bundle_shipping_check IS '배송 번들 확인';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_install_type IS '설치여부 체크';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_base_price IS '기본 배송료';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_extra_area2 IS '제주도 배송료';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_extra_area3 IS '제주도 외 배송료';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_method IS '배송 방식';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_payment_type IS '배송 결제 방식';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_main_product_sales_total IS '무료 배송 가격 설정';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_method_payment2 IS '배송 방법 결제2';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_method_payment3 IS '배송 방법 결제3';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_payment_timing IS '배송료 결제 타이밍';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_busan IS '퀵배송 부산';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_daegu IS '퀵배송 대구';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_daejeon IS '퀵배송 대전';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_gwangju IS '퀵배송 광주';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_gyeonggi IS '퀵배송 경기';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_incheon IS '퀵배송 인천';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_seoul IS '퀵배송 서울';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_type IS '퀵배송 타입';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_quick_ulsan IS '퀵매송 울산';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_addr IS '환불지 주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_detail_addr IS '환불지 상세주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_extra_addr IS '환불지 도로명주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_postnum IS '환불지 우편번호';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_price IS '환불 택배 가격';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_return_price_type IS '환불 택배 방법';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_ship_return_mode IS '배송 반품 모드';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_shipment_addr IS '배송지 주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_shipment_detail_addr IS '배송지 상세주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_shipment_extra_addr IS '배송지 도로명주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_shipment_postnum IS '배송지 우편번호';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_visit_addr IS '배송 주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_visit_detail_addr IS '배송 상세 주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_visit_extra_addr IS '배송 기타 주소';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_visit_postnum IS '운송장번호';
COMMENT ON COLUMN "tbl_product_info_delivery".delivery_visit_type IS '배송 방문 타입';
COMMENT ON COLUMN "tbl_product_info_delivery".export_flag IS '수출 flag';
COMMENT ON COLUMN "tbl_product_info_delivery".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_info_delivery".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_product_info_delivery".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_info_delivery".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_info_img" IS '상품 이미지 관리 테이블';
COMMENT ON COLUMN "tbl_product_info_img".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_info_img".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_info_img".file_seq IS '파일 고유번호';
COMMENT ON COLUMN "tbl_product_info_img".product_info_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_info_img".rank IS '순서';
COMMENT ON COLUMN "tbl_product_info_img".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_info_img".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_info_img".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_info_temp" IS '상품 Xlsx 저장 임시 테이블';
COMMENT ON COLUMN "tbl_product_info_temp".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_info_temp".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_info_temp".product_banner_img1 IS '배너 이미지1';
COMMENT ON COLUMN "tbl_product_info_temp".product_banner_img2 IS '배너 이미지2';
COMMENT ON COLUMN "tbl_product_info_temp".product_banner_img3 IS '배너 이미지3';
COMMENT ON COLUMN "tbl_product_info_temp".product_banner_img4 IS '배너 이미지4';
COMMENT ON COLUMN "tbl_product_info_temp".product_banner_img5 IS '배너 이미지5';
COMMENT ON COLUMN "tbl_product_info_temp".product_detail1 IS '상품 상세 1';
COMMENT ON COLUMN "tbl_product_info_temp".product_detail2 IS '상품 상세 2';
COMMENT ON COLUMN "tbl_product_info_temp".product_discount_check IS '상품 할인여부';
COMMENT ON COLUMN "tbl_product_info_temp".product_discount_price IS '상품 할인가격';
COMMENT ON COLUMN "tbl_product_info_temp".product_discount_rate IS '상품 할인률';
COMMENT ON COLUMN "tbl_product_info_temp".product_discount_type IS '상품 할인타입';
COMMENT ON COLUMN "tbl_product_info_temp".product_main_cate_str IS '상품 메인 카테고리';
COMMENT ON COLUMN "tbl_product_info_temp".product_option_stock IS '상품 옵션 재고수';
COMMENT ON COLUMN "tbl_product_info_temp".product_option_title IS '상품 옵션 타이틀';
COMMENT ON COLUMN "tbl_product_info_temp".product_price IS '상품 가격';
COMMENT ON COLUMN "tbl_product_info_temp".product_sub_cate_str IS '상품 서브 카테고리';
COMMENT ON COLUMN "tbl_product_info_temp".product_title IS '상품명';
COMMENT ON COLUMN "tbl_product_info_temp".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_info_temp".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_info_temp".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_main_cate" IS '상품 메인 카데고리 관리 테이블';
COMMENT ON COLUMN "tbl_product_main_cate".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_main_cate".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_main_cate".rank IS '순서';
COMMENT ON COLUMN "tbl_product_main_cate".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_main_cate".title IS '카테고리명';
COMMENT ON COLUMN "tbl_product_main_cate".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_product_main_cate".move_title IS '카테고리영문명 이동url';
COMMENT ON COLUMN "tbl_product_main_cate".sub_active IS '하위메뉴 활성화';
COMMENT ON COLUMN "tbl_product_main_cate".sub_id IS '연결된 상위메뉴 고유번호';
COMMENT ON TABLE  "tbl_product_option_stock" IS '상품 옵션 관리 테이블';
COMMENT ON COLUMN "tbl_product_option_stock".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_option_stock".add_price_active IS '추가 가격 활성화 여부';
COMMENT ON COLUMN "tbl_product_option_stock".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_option_stock".option_extra_charge IS '추가 가격';
COMMENT ON COLUMN "tbl_product_option_stock".option_name IS '옵션 명';
COMMENT ON COLUMN "tbl_product_option_stock".option_stock IS '재고수';
COMMENT ON COLUMN "tbl_product_option_stock".option_stock_ulimited IS '재고수 활서오하 여부';
COMMENT ON COLUMN "tbl_product_option_stock".product_info_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_option_stock".rank IS '순서';
COMMENT ON COLUMN "tbl_product_option_stock".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_option_stock".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_option_stock".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_review" IS '상품 리뷰 관리';
COMMENT ON COLUMN "tbl_product_review".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_review".content IS '내용';
COMMENT ON COLUMN "tbl_product_review".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_review".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_review".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_product_review".review_point IS '리뷰포인트';
COMMENT ON COLUMN "tbl_product_review".title IS '제목';
COMMENT ON COLUMN "tbl_product_review".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_product_review".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_product_review".order_seq_no IS '구매 고유번호';
COMMENT ON COLUMN "tbl_product_review".product_option_seq IS '상품 옵션 고유번호';
COMMENT ON COLUMN "tbl_product_review".site_cate_seq IS '사이트고유번호';
COMMENT ON TABLE  "tbl_product_review_img" IS '상품 리뷰 이미지 관리 테이블';
COMMENT ON COLUMN "tbl_product_review_img".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_review_img".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_review_img".file_seq IS '파일 고유번호';
COMMENT ON COLUMN "tbl_product_review_img".rank IS '순서';
COMMENT ON COLUMN "tbl_product_review_img".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_review_img".review_seq IS '리뷰 고유번호';
COMMENT ON COLUMN "tbl_product_review_img".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_product_review_img".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_review_reply" IS '상품 리뷰 댓글 관리 테이블';
COMMENT ON COLUMN "tbl_product_review_reply".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_review_reply".content IS '댓글';
COMMENT ON COLUMN "tbl_product_review_reply".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_review_reply".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_product_review_reply".review_seq IS '리뷰 고유번호';
COMMENT ON COLUMN "tbl_product_review_reply".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_product_review_reply".user_level IS '사용자레벨';
COMMENT ON COLUMN "tbl_product_review_reply".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_product_tag" IS '상품 테그 관리 테이블';
COMMENT ON COLUMN "tbl_product_tag".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_tag".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_tag".product_info_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_tag".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_tag".site_cate_seq IS '사이트 케이트 번호';
COMMENT ON COLUMN "tbl_product_tag".tag IS '태그';
COMMENT ON COLUMN "tbl_product_tag".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_product_tag_search" IS '상품 태그 검색 테이블';
COMMENT ON COLUMN "tbl_product_tag_search".seq_no IS '번호';
COMMENT ON COLUMN "tbl_product_tag_search".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_product_tag_search".product_info_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_product_tag_search".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_product_tag_search".site_cate_seq IS '사이트 케이트 번호';
COMMENT ON COLUMN "tbl_product_tag_search".tag IS '태그';
COMMENT ON COLUMN "tbl_product_tag_search".uptdate IS '업데이트날짜';
COMMENT ON TABLE  "tbl_select_home_info" IS '사이트 관리 테이블';
COMMENT ON COLUMN "tbl_select_home_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_select_home_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_select_home_info".rank IS '순서';
COMMENT ON COLUMN "tbl_select_home_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_select_home_info".site_cate_seq IS '사이트고유번호';
COMMENT ON COLUMN "tbl_select_home_info".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_site_group" IS '사이트 그룹관리 테이블';
COMMENT ON COLUMN "tbl_site_group".seq_no IS '번호';
COMMENT ON COLUMN "tbl_site_group".agency_seq IS '에이전시 고유번호';
COMMENT ON COLUMN "tbl_site_group".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_site_group".rank IS '순서';
COMMENT ON COLUMN "tbl_site_group".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_site_group".title IS '그룹명';
COMMENT ON COLUMN "tbl_site_group".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_site_info" IS '사이트 관리 테이블';
COMMENT ON COLUMN "tbl_site_info".site_cate_seq IS '사이트 케이트 번호';
COMMENT ON COLUMN "tbl_site_info".base_skin IS '원본 스킨 고유번호';
COMMENT ON COLUMN "tbl_site_info".bing_meta_code IS 'bing 메타 코드';
COMMENT ON COLUMN "tbl_site_info".board_lock IS '게시판 잠금';
COMMENT ON COLUMN "tbl_site_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_site_info".description IS 'seo 디스크립션';
COMMENT ON COLUMN "tbl_site_info".designer_seq IS '디자이너 번호';
COMMENT ON COLUMN "tbl_site_info".famicon_file IS '파비콘 파일 고유번호';
COMMENT ON COLUMN "tbl_site_info".google_meta_code IS '구글 메타 코드';
COMMENT ON COLUMN "tbl_site_info".group_seq IS '그룹  번호';
COMMENT ON COLUMN "tbl_site_info".home_active IS '홈 활성화 여부';
COMMENT ON COLUMN "tbl_site_info".home_active_date IS '홈 활성화 날';
COMMENT ON COLUMN "tbl_site_info".instagram_url IS '인스타그램 url';
COMMENT ON COLUMN "tbl_site_info".kakao_meta_file IS '카카오 메타 파일 고유번호';
COMMENT ON COLUMN "tbl_site_info".keywords IS '키워드';
COMMENT ON COLUMN "tbl_site_info".min_delivery_free_count IS '최소 배송 상품 가격';
COMMENT ON COLUMN "tbl_site_info".naver_meta_code IS '네이버 메타 코드';
COMMENT ON COLUMN "tbl_site_info".open_market_active IS '오픈 마켓 활성화';
COMMENT ON COLUMN "tbl_site_info".owner_seq IS '소유자 고유번호';
COMMENT ON COLUMN "tbl_site_info".popup_active IS '팝업 활성화';
COMMENT ON COLUMN "tbl_site_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_site_info".resell_seq IS '리셀 번호';
COMMENT ON COLUMN "tbl_site_info".sample_active IS '샘플 활성화';
COMMENT ON COLUMN "tbl_site_info".selec7footer_active IS '샐랙트 푸터 활성화';
COMMENT ON COLUMN "tbl_site_info".selec7order_info_active IS '주문 정보 활성화';
COMMENT ON COLUMN "tbl_site_info".shop_active IS '숍 활성화';
COMMENT ON COLUMN "tbl_site_info".shop_type IS '숍 타입';
COMMENT ON COLUMN "tbl_site_info".site_cate_title IS '사이트명';
COMMENT ON COLUMN "tbl_site_info".site_company_name IS '사이트 회사명';
COMMENT ON COLUMN "tbl_site_info".site_custom_url IS '사이트 고유url';
COMMENT ON COLUMN "tbl_site_info".site_custom_url_check IS '사이트 고유url 활성화';
COMMENT ON COLUMN "tbl_site_info".site_gallery_root IS 's3 폴더명';
COMMENT ON COLUMN "tbl_site_info".site_info_content IS '사이트 정보 내용';
COMMENT ON COLUMN "tbl_site_info".site_lock IS '사이트 잠금';
COMMENT ON COLUMN "tbl_site_info".site_manager_name IS '사이트 관리자 이름';
COMMENT ON COLUMN "tbl_site_info".site_tel_num IS '사이트 전화 번호';
COMMENT ON COLUMN "tbl_site_info".site_type IS '사이트 타입';
COMMENT ON COLUMN "tbl_site_info".tenth_active IS 'tenth 활성';
COMMENT ON COLUMN "tbl_site_info".test_site IS '테스트 사이트';
COMMENT ON COLUMN "tbl_site_info".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_site_info".visitor_count IS '조회수';
COMMENT ON COLUMN "tbl_site_info".fee_rate1 IS 'kfa fee';
COMMENT ON COLUMN "tbl_site_info".fee_rate2 IS '인터파크 fee';
COMMENT ON COLUMN "tbl_site_info".biz_code IS '인터파크 bizcode';
COMMENT ON COLUMN "tbl_site_info".product_xlsx_active IS '상품 밀어넣기 활성화 여부';
COMMENT ON TABLE  "tbl_site_menu_info" IS '사이트 메뉴 관리 테이블';
COMMENT ON COLUMN "tbl_site_menu_info".id IS '아이디';
COMMENT ON COLUMN "tbl_site_menu_info".board_seq IS '연결된 게시판 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".current_skin_type IS '현재 연결된 고유 스킨 번호';
COMMENT ON COLUMN "tbl_site_menu_info".current_type IS '메뉴 타입';
COMMENT ON COLUMN "tbl_site_menu_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_site_menu_info".gallery_list_seq IS '연결된 갤러리 목록 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".gallery_seq IS '갤러리 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".html_seq IS '연결된 html 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".index_active IS 'index 활성화 여부';
COMMENT ON COLUMN "tbl_site_menu_info".private_check IS 'private 체크';
COMMENT ON COLUMN "tbl_site_menu_info".product_seq IS '제품 번호';
COMMENT ON COLUMN "tbl_site_menu_info".rank IS '순서';
COMMENT ON COLUMN "tbl_site_menu_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_site_menu_info".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".sub2active IS '2단 하위 메뉴 활성화';
COMMENT ON COLUMN "tbl_site_menu_info".sub2id IS '연결된 2단 하위 메뉴 상단 메뉴 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".sub_active IS '1단 하위 메뉴 활성화';
COMMENT ON COLUMN "tbl_site_menu_info".sub_id IS '연결된 1단 하위 메뉴 상단 메뉴 고유번호';
COMMENT ON COLUMN "tbl_site_menu_info".text IS '텍스트';
COMMENT ON COLUMN "tbl_site_menu_info".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_site_menu_info".view_level IS '보기 레벨';
COMMENT ON COLUMN "tbl_site_menu_info".write_level IS '쓰기 레벨';
COMMENT ON TABLE  "tbl_site_no_name" IS '사이트 이름 불가';
COMMENT ON COLUMN "tbl_site_no_name".seq_no IS '번호';
COMMENT ON COLUMN "tbl_site_no_name".site_custom_url IS '사이트 커스텀 url';
COMMENT ON COLUMN "tbl_site_no_name".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_site_no_name".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_site_template" IS '사이트 템플릿 관리 테이블';
COMMENT ON COLUMN "tbl_site_template".seq_no IS '번호';
COMMENT ON COLUMN "tbl_site_template".agency_seq IS '에이전시 고유번호';
COMMENT ON COLUMN "tbl_site_template".agent_seq IS '에이전트 고유번호';
COMMENT ON COLUMN "tbl_site_template".content IS '탬플렛 설명';
COMMENT ON COLUMN "tbl_site_template".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_site_template".designer_name IS '디자이너명';
COMMENT ON COLUMN "tbl_site_template".folder IS '해당폴더';
COMMENT ON COLUMN "tbl_site_template".group_seq IS '연결된 그룹';
COMMENT ON COLUMN "tbl_site_template".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_site_template".short_title IS '서브 타이틀';
COMMENT ON COLUMN "tbl_site_template".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_site_template".site_type IS '사이트 타입';
COMMENT ON COLUMN "tbl_site_template".title IS '탬플릿명';
COMMENT ON COLUMN "tbl_site_template".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_site_template".default_site IS '기본 사이트 체크';
COMMENT ON TABLE  "tbl_skin_info" IS '사이트 메뉴 스킨 관리 테이블 ';
COMMENT ON COLUMN "tbl_skin_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_skin_info".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_skin_info".footer IS '푸터';
COMMENT ON COLUMN "tbl_skin_info".header IS '헤더';
COMMENT ON COLUMN "tbl_skin_info".menu_seq IS '연결된 메뉴 고유번호';
COMMENT ON COLUMN "tbl_skin_info".middle_conent IS '중단';
COMMENT ON COLUMN "tbl_skin_info".nav_img IS '네비게이션 이미지';
COMMENT ON COLUMN "tbl_skin_info".reg_date IS '등록일자';
COMMENT ON COLUMN "tbl_skin_info".site_cate_seq IS '사이트 고유번호';
COMMENT ON COLUMN "tbl_skin_info".skin_type IS '스킨 타입';
COMMENT ON COLUMN "tbl_skin_info".upt_date IS '업데이트날짜';
COMMENT ON TABLE  "tbl_ticket_cate" IS '티켓 카테고리 관리 테이블';
COMMENT ON COLUMN "tbl_ticket_cate".seq_no IS '번호';
COMMENT ON COLUMN "tbl_ticket_cate".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_ticket_cate".rank IS '순서';
COMMENT ON COLUMN "tbl_ticket_cate".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_ticket_cate".team_code IS '팀코드';
COMMENT ON COLUMN "tbl_ticket_cate".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_ticket_cate".search_title_eng IS '검색 제목 영문';
COMMENT ON COLUMN "tbl_ticket_cate".search_title_kr IS '검색 제목 국문';
COMMENT ON COLUMN "tbl_ticket_cate".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_ticket_cate".title_kr IS '제목 국문';
COMMENT ON COLUMN "tbl_ticket_cate".guide_info_json IS '결과값 json 저장';
COMMENT ON TABLE  "tbl_ticket_info" IS '티켓 정보 관리 테이블';
COMMENT ON COLUMN "tbl_ticket_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_ticket_info".away_team IS '원정팀 코드';
COMMENT ON COLUMN "tbl_ticket_info".away_team_logo IS '원정팀 로고';
COMMENT ON COLUMN "tbl_ticket_info".away_team_name IS '원정팀 명';
COMMENT ON COLUMN "tbl_ticket_info".biz_code IS 'biz 코드';
COMMENT ON COLUMN "tbl_ticket_info".biz_name IS 'biz 이름';
COMMENT ON COLUMN "tbl_ticket_info".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_ticket_info".dely_fee IS '배송 요금';
COMMENT ON COLUMN "tbl_ticket_info".end_date IS '티켓 예매 종료일';
COMMENT ON COLUMN "tbl_ticket_info".eng_lang_kind_of_goods IS '굿즈 영문명';
COMMENT ON COLUMN "tbl_ticket_info".eng_lang_place_name IS '위치 영문명';
COMMENT ON COLUMN "tbl_ticket_info".eng_lang_rate IS '비율 영문명';
COMMENT ON COLUMN "tbl_ticket_info".global_siteyn IS '';
COMMENT ON COLUMN "tbl_ticket_info".goods_code IS '상품코드';
COMMENT ON COLUMN "tbl_ticket_info".goods_name IS '상품명';
COMMENT ON COLUMN "tbl_ticket_info".home_team IS '홈팀 코드';
COMMENT ON COLUMN "tbl_ticket_info".home_team_logo IS '홈팀 로고';
COMMENT ON COLUMN "tbl_ticket_info".home_team_name IS '홈팀명';
COMMENT ON COLUMN "tbl_ticket_info".kind_of_goods IS '굿즈 종류';
COMMENT ON COLUMN "tbl_ticket_info".on_off IS '온 오프';
COMMENT ON COLUMN "tbl_ticket_info".only_deliver IS '';
COMMENT ON COLUMN "tbl_ticket_info".place_code IS '장소코드';
COMMENT ON COLUMN "tbl_ticket_info".place_name IS '장소명';
COMMENT ON COLUMN "tbl_ticket_info".print_or_not IS '출력 유무';
COMMENT ON COLUMN "tbl_ticket_info".regdate IS '등록일';
COMMENT ON COLUMN "tbl_ticket_info".register_date_for_web IS '웹 등록날짜';
COMMENT ON COLUMN "tbl_ticket_info".reserved_or_not IS '예약 유무';
COMMENT ON COLUMN "tbl_ticket_info".sales_type IS '판매 타입';
COMMENT ON COLUMN "tbl_ticket_info".start_date IS '티켓 예매 시작일';
COMMENT ON COLUMN "tbl_ticket_info".sub_category IS '서브 카테고리';
COMMENT ON COLUMN "tbl_ticket_info".ticket_cate_seq IS '티켓 케이트 번호';
COMMENT ON COLUMN "tbl_ticket_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_ticket_info".bookable_date IS '티켓 예매 가능일';
COMMENT ON COLUMN "tbl_ticket_info".booking_end_date IS '티켓 예매 종료일';
COMMENT ON COLUMN "tbl_ticket_info".cancelable_date IS '티켓 취소 가능일';
COMMENT ON COLUMN "tbl_ticket_info".no_of_time IS '시간 없음';
COMMENT ON COLUMN "tbl_ticket_info".online_date IS '온라인 날짜';
COMMENT ON COLUMN "tbl_ticket_info".play_date IS '경기 날짜';
COMMENT ON COLUMN "tbl_ticket_info".play_seq IS '경기 번호';
COMMENT ON COLUMN "tbl_ticket_info".play_time IS '경기 시간';
COMMENT ON COLUMN "tbl_ticket_info".ticket_on_off IS '티켓 온오프';
COMMENT ON COLUMN "tbl_ticket_info".week_day IS '평일';
COMMENT ON COLUMN "tbl_ticket_info".product_day_json IS '제품 날짜 json';
COMMENT ON COLUMN "tbl_ticket_info".product_infos_json IS '제품 정보 json';
COMMENT ON COLUMN "tbl_ticket_info".product_json IS '제품 json';
COMMENT ON COLUMN "tbl_ticket_info".reservation_id IS '예약 아이디 ';
COMMENT ON TABLE  "tbl_user" IS '사용자 관리 테이블';
COMMENT ON COLUMN "tbl_user".seq_no IS '번호';
COMMENT ON COLUMN "tbl_user".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_user".id_type IS '아이디 타입';
COMMENT ON COLUMN "tbl_user".markecting_check IS '마케팅 동의 체크';
COMMENT ON COLUMN "tbl_user".markecting_check_type IS '마케팅 동의 타입';
COMMENT ON COLUMN "tbl_user".marketing_check_date IS '마케팅 동의 체크날';
COMMENT ON COLUMN "tbl_user".nickname IS '닉네임';
COMMENT ON COLUMN "tbl_user".node_token IS '노드 토큰';
COMMENT ON COLUMN "tbl_user".phone_certification_active IS '휴대폰 인증 활성화';
COMMENT ON COLUMN "tbl_user".phone_certification_date IS '휴대폰 인증 날짜';
COMMENT ON COLUMN "tbl_user".picture IS '사진';
COMMENT ON COLUMN "tbl_user".privacy_check IS '개인정보 보호 체크';
COMMENT ON COLUMN "tbl_user".privacy_check_date IS '개인정보 보호 체크날';
COMMENT ON COLUMN "tbl_user".pw_reset_check IS '비밀번호 리셋 체크';
COMMENT ON COLUMN "tbl_user".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_user".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_user".use_check IS '유저 체크';
COMMENT ON COLUMN "tbl_user".use_check_date IS '유저 체크 날짜';
COMMENT ON COLUMN "tbl_user".user_email IS '이메일';
COMMENT ON COLUMN "tbl_user".user_name IS '이름';
COMMENT ON COLUMN "tbl_user".user_phone IS '전화번호';
COMMENT ON COLUMN "tbl_user".user_pw IS '비밀번호';
COMMENT ON COLUMN "tbl_user".user_rank IS '사용자 회원랭크';
COMMENT ON COLUMN "tbl_user".user_token IS '유저 토큰';
COMMENT ON COLUMN "tbl_user".designer_active IS '디자이너 활성화';
COMMENT ON COLUMN "tbl_user".pw_check IS '비밀번호 체크';
COMMENT ON COLUMN "tbl_user".sample_make_active IS '샘플 만들기 활성화';
COMMENT ON COLUMN "tbl_user".site_agency_active IS '에이전시 사이트 활성화';
COMMENT ON COLUMN "tbl_user".user_id IS '로그인아이디';
COMMENT ON COLUMN "tbl_user".profile_file_seq IS '프로필 파일 번호';
COMMENT ON COLUMN "tbl_user".auth_code IS '인증코드';
COMMENT ON COLUMN "tbl_user".auth_date IS '인증날짜';
COMMENT ON COLUMN "tbl_user".event_agree_check IS '이벤트 동의 여부';
COMMENT ON COLUMN "tbl_user".event_agree_date IS '이벤트 동의 날짜';
COMMENT ON COLUMN "tbl_user".user_birth IS '생년월일';
COMMENT ON COLUMN "tbl_user".user_sex IS '성별';
COMMENT ON COLUMN "tbl_user".interpark_code IS '인터파크 연동번호';
COMMENT ON COLUMN "tbl_user".interpark_code_date IS '인터파크 연동날';
COMMENT ON COLUMN "tbl_user".interpark_code_msg IS '인터파크 연동 메시지';
COMMENT ON COLUMN "tbl_user".phone_not_check IS '휴대폰 비동의 여부';
COMMENT ON COLUMN "tbl_user".phone_not_check_date IS '휴대폰 비동의 날짜';
COMMENT ON COLUMN "tbl_user".user_birth_str IS '유저 생일';
COMMENT ON COLUMN "tbl_user".user_grade_seq IS '유저 등급 번호';
COMMENT ON COLUMN "tbl_user".14_yn IS '14세 이상여부';
COMMENT ON COLUMN "tbl_user".parent_name IS '부모 이름';
COMMENT ON COLUMN "tbl_user".parent_phone IS '부모 번호';
COMMENT ON TABLE  "tbl_user_grade" IS '사용자 등급 관리 테이블';
COMMENT ON COLUMN "tbl_user_grade".seq_no IS '번호';
COMMENT ON COLUMN "tbl_user_grade".benefits IS '회원 이득 내용 국문';
COMMENT ON COLUMN "tbl_user_grade".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_user_grade".grade_name IS '등급명';
COMMENT ON COLUMN "tbl_user_grade".point_condition IS '포인트 조건';
COMMENT ON COLUMN "tbl_user_grade".point_rate IS '포인트 적립률';
COMMENT ON COLUMN "tbl_user_grade".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_user_grade".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_user_grade".grade_code IS '인터파크 연동된 등급코드';
COMMENT ON COLUMN "tbl_user_grade".benefits_eng IS '회원 이득 내용 영문';
COMMENT ON COLUMN "tbl_user_grade".expiration_period IS '만료기간';
COMMENT ON TABLE  "tbl_user_interpark" IS '인터파크 연동 테스트 임시 테이블';
COMMENT ON COLUMN "tbl_user_interpark".seq_no IS '';
COMMENT ON COLUMN "tbl_user_interpark".customer_code IS '';
COMMENT ON COLUMN "tbl_user_interpark".del_check IS '';
COMMENT ON COLUMN "tbl_user_interpark".insert_date IS '';
COMMENT ON COLUMN "tbl_user_interpark".member_code IS '';
COMMENT ON COLUMN "tbl_user_interpark".regdate IS '';
COMMENT ON COLUMN "tbl_user_interpark".uptdate IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_active IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_birth IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_email IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_hp IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_id IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_name IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_phone IS '';
COMMENT ON COLUMN "tbl_user_interpark".user_sex IS '';
COMMENT ON TABLE  "tbl_user_product_like" IS '사용자 상품 찜하기 테이블';
COMMENT ON COLUMN "tbl_user_product_like".seq_no IS '번호';
COMMENT ON COLUMN "tbl_user_product_like".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_user_product_like".product_seq IS '상품 고유번호';
COMMENT ON COLUMN "tbl_user_product_like".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_user_product_like".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_user_product_like".user_seq IS '사용자 고유번호';
COMMENT ON TABLE  "tbl_user_rank" IS '사용자 등급 테이블';
COMMENT ON COLUMN "tbl_user_rank".seq_no IS '번호';
COMMENT ON COLUMN "tbl_user_rank".comment_points IS '코맨트 포인트';
COMMENT ON COLUMN "tbl_user_rank".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_user_rank".like_points IS '좋아요 포인트';
COMMENT ON COLUMN "tbl_user_rank".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_user_rank".sale_points IS '판매 포인트';
COMMENT ON COLUMN "tbl_user_rank".share_points IS '공유 포인트';
COMMENT ON COLUMN "tbl_user_rank".site_cate_seq IS '사이트 케이트 번호';
COMMENT ON COLUMN "tbl_user_rank".today_rank IS '오늘 랭크';
COMMENT ON COLUMN "tbl_user_rank".total_points IS '전체 포인트';
COMMENT ON COLUMN "tbl_user_rank".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_user_rank".user_seq IS '유저 번호';
COMMENT ON COLUMN "tbl_user_rank".yesterday_rank IS '어제 랭크';
COMMENT ON TABLE  "tbl_vote_info" IS '투표 관리 테이블';
COMMENT ON COLUMN "tbl_vote_info".seq_no IS '번호';
COMMENT ON COLUMN "tbl_vote_info".banner_seq_eng IS '배너 영문 파일 고유번호';
COMMENT ON COLUMN "tbl_vote_info".banner_seq_kr IS '배너 국문 파일 고유번호';
COMMENT ON COLUMN "tbl_vote_info".board_hits IS '조회수';
COMMENT ON COLUMN "tbl_vote_info".content_eng IS '내용 영문';
COMMENT ON COLUMN "tbl_vote_info".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_vote_info".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_vote_info".end_date IS '종료일';
COMMENT ON COLUMN "tbl_vote_info".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_vote_info".search_content_eng IS '영문 내용 검색';
COMMENT ON COLUMN "tbl_vote_info".search_content_kr IS '한글 내용 검색';
COMMENT ON COLUMN "tbl_vote_info".search_title_eng IS '영문 제목 검색';
COMMENT ON COLUMN "tbl_vote_info".search_title_kr IS '한글 내용 검색';
COMMENT ON COLUMN "tbl_vote_info".start_date IS '시작일';
COMMENT ON COLUMN "tbl_vote_info".title_eng IS '제목 영문';
COMMENT ON COLUMN "tbl_vote_info".title_kr IS '제묵 국문';
COMMENT ON COLUMN "tbl_vote_info".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_vote_info".vote_option IS '투표 옵션';
COMMENT ON COLUMN "tbl_vote_info".file_seq IS '파일 번호';
COMMENT ON TABLE  "tbl_vote_info_attend_log" IS '투표 참여 로그 관리 테이블';
COMMENT ON COLUMN "tbl_vote_info_attend_log".seq_no IS '번호';
COMMENT ON COLUMN "tbl_vote_info_attend_log".attend_type IS '참석 타입';
COMMENT ON COLUMN "tbl_vote_info_attend_log".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_vote_info_attend_log".event_seq IS '이벤트 고유번호';
COMMENT ON COLUMN "tbl_vote_info_attend_log".reg_date IS '등록 일자';
COMMENT ON COLUMN "tbl_vote_info_attend_log".upt_date IS '업데이트날짜';
COMMENT ON COLUMN "tbl_vote_info_attend_log".user_seq IS '사용자 고유번호';
COMMENT ON COLUMN "tbl_vote_info_attend_log".vote_select IS '선택한 투표고유번호';
COMMENT ON TABLE  "tbl_vote_info_item" IS '투표 아이탬 관리 테이블';
COMMENT ON COLUMN "tbl_vote_info_item".seq_no IS '번호';
COMMENT ON COLUMN "tbl_vote_info_item".del_check IS '삭제여부';
COMMENT ON COLUMN "tbl_vote_info_item".regdate IS '등록일자';
COMMENT ON COLUMN "tbl_vote_info_item".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_vote_info_item".vote_option_eng IS '투표 옵션명 영문';
COMMENT ON COLUMN "tbl_vote_info_item".vote_option_kr IS '투표 옵션명 국문';
COMMENT ON COLUMN "tbl_vote_info_item".vote_seq IS '투표 고유번호';
COMMENT ON COLUMN "tbl_vote_info_item".content_eng IS '내용 영문';
COMMENT ON COLUMN "tbl_vote_info_item".content_kr IS '내용 국문';
COMMENT ON COLUMN "tbl_vote_info_item".file_seq IS '파일 번호';
COMMENT ON COLUMN "tbl_vote_info_item".title IS '제목';
COMMENT ON COLUMN "tbl_vote_info_item".url IS 'url';
COMMENT ON TABLE  "tbl_vote_info_result" IS '투표 결과 테이블';
COMMENT ON COLUMN "tbl_vote_info_result".seq_no IS '번호';
COMMENT ON COLUMN "tbl_vote_info_result".del_check IS '삭제 여부';
COMMENT ON COLUMN "tbl_vote_info_result".regdate IS '등록 일자';
COMMENT ON COLUMN "tbl_vote_info_result".uptdate IS '업데이트날짜';
COMMENT ON COLUMN "tbl_vote_info_result".user_seq IS '유저 번호';
COMMENT ON COLUMN "tbl_vote_info_result".vote_item_seq IS '투표 아이템 번호';
COMMENT ON COLUMN "tbl_vote_info_result".vote_seq IS '투표 번호';
COMMENT ON TABLE  "time_dimension" IS '날짜관리테이블';
COMMENT ON COLUMN "time_dimension".id IS '아이디';
COMMENT ON COLUMN "time_dimension".day IS '날짜';
COMMENT ON COLUMN "time_dimension".day_name IS '날짜이름';
COMMENT ON COLUMN "time_dimension".db_date IS 'db 날짜';
COMMENT ON COLUMN "time_dimension".event IS '이벤트';
COMMENT ON COLUMN "time_dimension".holiday_flag IS '휴일 flag';
COMMENT ON COLUMN "time_dimension".month IS '달';
COMMENT ON COLUMN "time_dimension".month_name IS '달 이름';
COMMENT ON COLUMN "time_dimension".quarter IS '쿼터';
COMMENT ON COLUMN "time_dimension".week IS '주';
COMMENT ON COLUMN "time_dimension".weekend_flag IS '주말 flag';
COMMENT ON COLUMN "time_dimension".year IS '년';
COMMENT ON COLUMN "time_dimension".test_column IS '테스트 컬럼';
COMMENT ON TABLE  "user_authority" IS '회원 등급 관리';
COMMENT ON COLUMN "user_authority".seq_no IS '번호';
COMMENT ON COLUMN "user_authority".authority_name IS '인증명';

comment on column tbl_user.seq_no is '이용자고유번호';
comment on column tbl_user.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_user.id_type is '0:아이디 1이후는 SNS용';
comment on column tbl_user.markecting_check is '마케팅 여부 체크';
comment on column tbl_user.markecting_check_type is '마케팅 타입';
comment on column tbl_user.marketing_check_date is '마케팅 체크 날짜';
comment on column tbl_user.nickname is '닉네임';
comment on column tbl_user.node_token is 'SNS 토큰 정보저장';
comment on column tbl_user.phone_certification_active is '전화번호 인증';
comment on column tbl_user.phone_certification_date is '휴대폰 인증 날짜';
comment on column tbl_user.user_id is '이용자아이디';
comment on column tbl_user.user_pw is '이용자비밀번호(단방향암호화:sha256)';
comment on column tbl_user.user_name is '이용자이름';
comment on column tbl_user.user_phone is '이용자휴대폰번호';
comment on column tbl_user.auth_code is '본인인증코드';
comment on column tbl_user.auth_date is '본인인증일';
comment on column tbl_user.user_email is '이용자이메일';
comment on column tbl_user.user_birth is '이용자생년월일';
comment on column tbl_user.user_sex is '이용자성별(M:남성,F:여성)';
comment on column tbl_user.privacy_check is '개인정보유효기간(1~:년간,99:탈퇴시)';
comment on column tbl_user.privacy_check_date is '개인정보유효기간설정일';
comment on column tbl_user.regdate is '등록일자';
comment on column tbl_user.uptdate is '수정일자';
comment on column tbl_user.CONN_DATE is 'conn날짜';
comment on column tbl_user.GRADE_SEQ is '유저 등급 번호';
comment on column tbl_user."14_YN" is '14세여부';
comment on column tbl_user.PARENT_NAME is '부모 이름';
comment on column tbl_user.PARENT_PHONE is '부모 번호';
comment on column tbl_user.PARENT_EMAIL is '부모 이메일 주소';
comment on column tbl_user.event_agree_check is '이벤트정보받기여부(Y:동의,N:미동의)';
comment on column tbl_user.event_agree_date is '이벤트정보받기동의일';
comment on column tbl_user.interpark_code is '인터파크 연동번호';
comment on column tbl_user.interpark_code_date is '인터파크 연동날';
comment on column tbl_user.interpark_code_msg is '인터파크 연동 메시지';
comment on column tbl_user.picture is '사진 url';
comment on column tbl_user.profile_file_seq is '프로필 고유번호';
comment on column tbl_user.pw_reset_check is '비밀번호 강제 리셋 1:강제 리셋 사용자 0:일반사용자';
comment on column tbl_user.use_check is '사용자 동의';
comment on column tbl_user.use_check_date is '사용자 동의 날';
comment on column tbl_user.user_rank is '사용자 등급';
comment on column tbl_user.user_token is '사용자토큰';
comment on column tbl_user.phone_not_check is '휴대폰 비동의 여부';
comment on column tbl_user.phone_not_check_date is '휴대폰 비동의 날짜';
comment on column tbl_user.user_birth_str is '사용자 생일 String';
comment on column tbl_user.user_grade_seq is '유저 등급 번호';
comment on table playkfa.tbl_Booking_data_info is '티켓테이터';
comment on column playkfa.tbl_booking_data_info.bdate_bdateseq is 'bdate_bdateseq  (인터파크 티켓의 주문번호)';
comment on column playkfa.tbl_booking_data_info.ticket_no is '티켓 번호';
comment on column playkfa.tbl_booking_data_info.product_name is '상품 명 (경기 명) ';
comment on column playkfa.tbl_booking_data_info.product_code is '상품 코드';
comment on column playkfa.tbl_booking_data_info.order_date is '주문 일자';
comment on column playkfa.tbl_booking_data_info.order_time is '주문 시간';
comment on column playkfa.tbl_booking_data_info.client_name is '거래처 명 : 여기선 항상 대한축구협회 임';
comment on column playkfa.tbl_booking_data_info.concert_name is '경기장명';
comment on column playkfa.tbl_booking_data_info.concert_date is '경기날짜';
comment on column playkfa.tbl_booking_data_info.concert_time is '경기시간';
comment on column playkfa.tbl_booking_data_info.concert_day is '경기 요일';
comment on column playkfa.tbl_booking_data_info.member_name is '주문자 명';
comment on column playkfa.tbl_booking_data_info.member_birth is '주문자 생년월일';
comment on column playkfa.tbl_booking_data_info.member_sex is '주문자 성별';
comment on column playkfa.tbl_booking_data_info.member_code is '회원코드 :  인터파크 시스템의소 고유 코드 ';
comment on column playkfa.tbl_booking_data_info.mem_no is '회원등급 표기';
comment on column playkfa.tbl_booking_data_info.buy_way1 is '결제수단 1 : 신용카드';
comment on column playkfa.tbl_booking_data_info.buy_way1_name is '결제수단명 1 : 카드사명';
comment on column playkfa.tbl_booking_data_info.buy_way1_status is '경제 상태 1 : 항상 매입';
comment on column playkfa.tbl_booking_data_info.buy_way2 is '결제수단 2  : 발생 안함';
comment on column playkfa.tbl_booking_data_info.buy_way2_name is '결제수단명 2 : 발생 안함';
comment on column playkfa.tbl_booking_data_info.buy_way2_status is '경제 상태 2  : 발생 안함';
comment on column playkfa.tbl_booking_data_info.ticket_price is '티켓금액';
comment on column playkfa.tbl_booking_data_info.reserve_loc is '예매처 :  대한축구협회(KFAPLAY_P)  ==> WEB 예매
            대한축구협회(KFAPLAY_M) ==> 모바일 예매';
comment on column playkfa.tbl_booking_data_info.reserve_status is '예매 상태 :  여기선  정상 만 존재 함 ';
comment on column playkfa.tbl_booking_data_info.product_genre is '상품장르 : 여기선  스포츠만 존재 함 ';
comment on column playkfa.tbl_booking_data_info.mid is 'MID :  인터파크에서사용하는 카드사 사용자 구분 값';
comment on column playkfa.tbl_booking_data_info.seat_grade_name is '좌석등급명 :  경기장 및 경기마다 다양한 명칭 사용 가능';
comment on column playkfa.tbl_booking_data_info.seat_floor is '좌석 층 정보 : 경기장 및 경기마다 여러 명칭으로 사용 가능';
comment on column playkfa.tbl_booking_data_info.seat_row is '좌석 열 정보 : 경기장 및 경기마다 여러 명칭으로 사용 가능';
comment on column playkfa.tbl_booking_data_info.seat_number is '좌석 번호 정보 : 경기장 및 경기마다 여러 명칭으로 사용 가능';
comment on column playkfa.tbl_booking_data_info.card_approval_no is '카드승인번호';
comment on column playkfa.tbl_booking_data_info.fee is '이용수수료';
comment on column playkfa.tbl_booking_data_info.delivery_price is '배송료';
comment on column playkfa.tbl_booking_data_info.discount_price is '할인금액';
comment on column playkfa.tbl_booking_data_info.delivery_info is '배송 정보 :  여기서는 티켓 종류 및 입장 정보';
comment on column playkfa.tbl_booking_data_info.cancle_date is '취소일자 : 여기서는 발생하지 않음 정상 데이터만 입력됨';
comment on column playkfa.tbl_booking_data_info.tiki_grade is 'tiki 등급 : 인터파크 회원 등급 구분으로 여기서는 발생하지 않음';
comment on column playkfa.tbl_booking_data_info.tiki_start is 'tiki 시작일 : 여기서는 발생하지 않음';
comment on column playkfa.tbl_booking_data_info.tiki_first_reserve is 'tiki 선예매 : 여기서는 발생하지 않음 ';
comment on column playkfa.tbl_booking_data_info.price_grade_name is '가격등급 명 : 경기에 따라 변함 ';
comment on column playkfa.tbl_booking_data_info.price_grade_code is '가격등급 코드';
comment on column playkfa.tbl_booking_data_info.member_id is '회원 아이디 :  여기서는 playkfa 회원 정보의 회원 Seq 저장';
comment on column playkfa.tbl_booking_data_info.member_email is '주문자 이메일';
comment on column playkfa.tbl_booking_data_info.member_tel_number is '주문자 전화번호';
comment on column playkfa.tbl_booking_data_info.member_phone is '주문자 핸드폰 번호';
comment on column playkfa.tbl_booking_data_info.member_addr is '주문자 주소';
comment on column playkfa.tbl_booking_data_info.card_number is '고객결제카드번호';
comment on column playkfa.tbl_booking_data_info.member_gender is '회원 성별 정보 ';
comment on column playkfa.tbl_booking_data_info.send_name is '배송자이름';
comment on column playkfa.tbl_booking_data_info.send_tel_number is '배송자 전화번호';
comment on column playkfa.tbl_booking_data_info.send_phone_number is '배송자 핸드폰번호';
comment on column playkfa.tbl_booking_data_info.send_addr is '배송자 주소';
comment on column playkfa.tbl_booking_data_info.delivery_way is '배송 방법';
comment on column playkfa.tbl_booking_data_info.member_birth2 is '회원생년월일';
comment on column playkfa.tbl_booking_data_info.member_name2 is '회원이름';
comment on column playkfa.tbl_booking_data_info.client_name2 is '회원거래처명 : 여기서는 대한축구협회(KFAPLAY_P) 고정됨 ';
comment on column playkfa.tbl_booking_data_info.member_addr2 is '회원 주소 : 여기서는 사용 안함';
comment on column playkfa.tbl_booking_data_info.marketing_agree is '마케팅 동의 : N 으로 고정됨 / 사용안함';






ALTER TABLE "authority" ADD CONSTRAINT "pk_authority" PRIMARY KEY (authority_name,authority_name);
ALTER TABLE "tbl_admin" ADD CONSTRAINT "pk_tbl_admin" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_admin_contact" ADD CONSTRAINT "pk_tbl_admin_contact" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_admin_info" ADD CONSTRAINT "pk_tbl_admin_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_agency" ADD CONSTRAINT "pk_tbl_agency" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_alert_log" ADD CONSTRAINT "pk_tbl_alert_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_article_html" ADD CONSTRAINT "pk_tbl_article_html" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_article_skin" ADD CONSTRAINT "pk_tbl_article_skin" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_auction_info" ADD CONSTRAINT "pk_tbl_auction_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_auction_info_result" ADD CONSTRAINT "pk_tbl_auction_info_result" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_auction_ini_request_history" ADD CONSTRAINT "pk_tbl_auction_ini_request_history" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_auction_order_info" ADD CONSTRAINT "pk_tbl_auction_order_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_bank_info" ADD CONSTRAINT "pk_tbl_bank_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_board_codblock_content" ADD CONSTRAINT "pk_tbl_board_codblock_content" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_board_content_tag" ADD CONSTRAINT "pk_tbl_board_content_tag" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_board_content_tag_search" ADD CONSTRAINT "pk_tbl_board_content_tag_search" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_board_info" ADD CONSTRAINT "pk_tbl_board_info" PRIMARY KEY (id);
ALTER TABLE "tbl_calender_info" ADD CONSTRAINT "pk_tbl_calender_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_cancel_item" ADD CONSTRAINT "pk_tbl_cancel_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_card_info" ADD CONSTRAINT "pk_tbl_card_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_cart_item" ADD CONSTRAINT "pk_tbl_cart_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_event_info" ADD CONSTRAINT "pk_tbl_event_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_event_info_attend" ADD CONSTRAINT "pk_tbl_event_info_attend" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_event_info_attend_log" ADD CONSTRAINT "pk_tbl_event_info_attend_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_event_info_comment" ADD CONSTRAINT "pk_tbl_event_info_comment" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_express_company_info" ADD CONSTRAINT "pk_tbl_express_company_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_extra_delivery_fee" ADD CONSTRAINT "pk_tbl_extra_delivery_fee" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_faq_cate" ADD CONSTRAINT "pk_tbl_faq_cate" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_faq_info" ADD CONSTRAINT "pk_tbl_faq_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_file" ADD CONSTRAINT "pk_tbl_file" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_file_agency" ADD CONSTRAINT "pk_tbl_file_agency" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_file_agent" ADD CONSTRAINT "pk_tbl_file_agent" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_file_main" ADD CONSTRAINT "pk_tbl_file_main" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_file_review" ADD CONSTRAINT "pk_tbl_file_review" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_gallery_info" ADD CONSTRAINT "pk_tbl_gallery_info" PRIMARY KEY (id);
ALTER TABLE "tbl_gallery_info_img" ADD CONSTRAINT "pk_tbl_gallery_info_img" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_ini_cancel_history" ADD CONSTRAINT "pk_tbl_ini_cancel_history" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_ini_cancel_part_history" ADD CONSTRAINT "pk_tbl_ini_cancel_part_history" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_ini_request_history" ADD CONSTRAINT "pk_tbl_ini_request_history" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_inquiry" ADD CONSTRAINT "pk_tbl_inquiry" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_inquiry_reply" ADD CONSTRAINT "pk_tbl_inquiry_reply" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_log_info" ADD CONSTRAINT "pk_tbl_log_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_main_home_item" ADD CONSTRAINT "pk_tbl_main_home_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_main_middle_item" ADD CONSTRAINT "pk_tbl_main_middle_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_main_popup_item" ADD CONSTRAINT "pk_tbl_main_popup_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_main_top_item" ADD CONSTRAINT "pk_tbl_main_top_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_main_video_item" ADD CONSTRAINT "pk_tbl_main_video_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_notice_info" ADD CONSTRAINT "pk_tbl_notice_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_order_booking" ADD CONSTRAINT "pk_tbl_order_booking" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_order_booking_log" ADD CONSTRAINT "pk_tbl_order_booking_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_order_info" ADD CONSTRAINT "pk_tbl_order_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_order_item" ADD CONSTRAINT "pk_tbl_order_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_payment_total" ADD CONSTRAINT "pk_tbl_payment_total" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_point_log" ADD CONSTRAINT "pk_tbl_point_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_point_user" ADD CONSTRAINT "pk_tbl_point_user" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_point_user_log" ADD CONSTRAINT "pk_tbl_point_user_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_category" ADD CONSTRAINT "pk_tbl_product_category" PRIMARY KEY (id);
ALTER TABLE "tbl_product_info" ADD CONSTRAINT "pk_tbl_product_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_info_codblock_detail" ADD CONSTRAINT "pk_tbl_product_info_codblock_detail" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_info_delivery" ADD CONSTRAINT "pk_tbl_product_info_delivery" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_info_img" ADD CONSTRAINT "pk_tbl_product_info_img" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_info_temp" ADD CONSTRAINT "pk_tbl_product_info_temp" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_main_cate" ADD CONSTRAINT "pk_tbl_product_main_cate" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_option_stock" ADD CONSTRAINT "pk_tbl_product_option_stock" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_review" ADD CONSTRAINT "pk_tbl_product_review" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_review_img" ADD CONSTRAINT "pk_tbl_product_review_img" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_review_reply" ADD CONSTRAINT "pk_tbl_product_review_reply" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_tag" ADD CONSTRAINT "pk_tbl_product_tag" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_product_tag_search" ADD CONSTRAINT "pk_tbl_product_tag_search" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_select_home_info" ADD CONSTRAINT "pk_tbl_select_home_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_site_group" ADD CONSTRAINT "pk_tbl_site_group" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_site_info" ADD CONSTRAINT "pk_tbl_site_info" PRIMARY KEY (site_cate_seq);
ALTER TABLE "tbl_site_menu_info" ADD CONSTRAINT "pk_tbl_site_menu_info" PRIMARY KEY (id);
ALTER TABLE "tbl_site_no_name" ADD CONSTRAINT "pk_tbl_site_no_name" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_site_template" ADD CONSTRAINT "pk_tbl_site_template" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_skin_info" ADD CONSTRAINT "pk_tbl_skin_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_ticket_cate" ADD CONSTRAINT "pk_tbl_ticket_cate" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_ticket_info" ADD CONSTRAINT "pk_tbl_ticket_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_user" ADD CONSTRAINT "pk_tbl_user" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_user_grade" ADD CONSTRAINT "pk_tbl_user_grade" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_user_interpark" ADD CONSTRAINT "pk_tbl_user_interpark" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_user_product_like" ADD CONSTRAINT "pk_tbl_user_product_like" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_user_rank" ADD CONSTRAINT "pk_tbl_user_rank" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_vote_info" ADD CONSTRAINT "pk_tbl_vote_info" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_vote_info_attend_log" ADD CONSTRAINT "pk_tbl_vote_info_attend_log" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_vote_info_item" ADD CONSTRAINT "pk_tbl_vote_info_item" PRIMARY KEY (seq_no);
ALTER TABLE "tbl_vote_info_result" ADD CONSTRAINT "pk_tbl_vote_info_result" PRIMARY KEY (seq_no);
ALTER TABLE "time_dimension" ADD CONSTRAINT "pk_time_dimension" PRIMARY KEY (id);
ALTER TABLE "user_authority" ADD CONSTRAINT "pk_user_authority" PRIMARY KEY (seq_no,authority_name);
