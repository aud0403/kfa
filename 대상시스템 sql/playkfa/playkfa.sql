CREATE TABLE playkfa.tbl_bank_info (
	seq_no numeric(20) NOT NULL,
	bank_name varchar(255) NULL,
	del_check numeric(11) NULL,
	"rank" numeric(11) NULL,
	interpark_active int4 NULL,
	interpark_code varchar(255) NULL,
	CONSTRAINT tbl_bank_info_pk PRIMARY KEY (seq_no)
);

comment on column tbl_bank_info.seq_no is ' ';
comment on column tbl_bank_info.bank_name is '은행명';
comment on column tbl_bank_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_bank_info.rank is '순서';

comment on table tbl_bank_info is '은행정보';


create table tbl_board_codblock_content(
seq_no   numeric(20)
,board_hits   numeric(11)
,board_seq   numeric(20)
,del_check   numeric(11)
,file_seq   numeric(20)
,footer   text
,header   text
,header_img_url   varchar(255)
,middle_conent   text
,notice_check   numeric(11)
,regdate   timestamp
,search_content   text
,search_title   varchar(255)
,site_cate_seq   numeric(20)
,title   varchar(255)
,uptdate   timestamp
);
alter table tbl_board_codblock_content add constraint tbl_board_codblock_content_pk primary key (seq_no);
comment on table tbl_board_codblock_content is '게시판 컨텐츠 관리';
comment on column tbl_board_codblock_content.seq_no is '고유번호';
comment on column tbl_board_codblock_content.board_hits is '게시물 방문수';
comment on column tbl_board_codblock_content.board_seq is '게시판 고유번호';
comment on column tbl_board_codblock_content.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_board_codblock_content.file_seq is '파일 고유번호';
comment on column tbl_board_codblock_content.footer is '푸터 String';
comment on column tbl_board_codblock_content.header is '헤더 String';
comment on column tbl_board_codblock_content.header_img_url is '헤더 이미지 url';
comment on column tbl_board_codblock_content.middle_conent is '메인 콘텐츠 String';
comment on column tbl_board_codblock_content.notice_check is '공유 여부 체크 0:비활성화 1:활성화';
comment on column tbl_board_codblock_content.regdate is '등록일';
comment on column tbl_board_codblock_content.search_content is '콘텐츠 검색용';
comment on column tbl_board_codblock_content.search_title is '제목 검색용';
comment on column tbl_board_codblock_content.site_cate_seq is '사이트 고유번호';
comment on column tbl_board_codblock_content.title is '제목 검색용';
comment on column tbl_board_codblock_content.uptdate is '수정일';





create table tbl_board_info(
id   numeric(20)
,answer_level   numeric(11)
,c_coment_level   numeric(11)
,coment_level   numeric(11)
,del_check   numeric(11)
,rank   numeric(11)
,reg_date   timestamp
,site_cate_seq   numeric(20)
,text   varchar(255)
,upt_date   timestamp
,board_type   numeric(11)
,view_level   numeric(11)
,write_level   numeric(11)
);
alter table tbl_board_info add constraint tbl_board_info_pk primary key (id);
comment on table tbl_board_info is '게시판 정보 관리';

comment on column tbl_board_info.id is '게시판 고유번호';
comment on column tbl_board_info.answer_level is '답변 레벨';
comment on column tbl_board_info.c_coment_level is '대댓글 레벨';
comment on column tbl_board_info.coment_level is '댓글 레벨';
comment on column tbl_board_info.del_check is '삭제 여부 0:활성화 1:삭제';
comment on column tbl_board_info.rank is '순서';
comment on column tbl_board_info.reg_date is '등록일';
comment on column tbl_board_info.site_cate_seq is '사이트 고유번호';
comment on column tbl_board_info.text is '게시판명';
comment on column tbl_board_info.upt_date is '수정일';
comment on column tbl_board_info.board_type is '게시판 타입 1:일반 2:상점';
comment on column tbl_board_info.view_level is '보기 레벨';
comment on column tbl_board_info.write_level is '쓰기 레벨';


create table tbl_cancel_item(
seq_no   numeric(20)
,cancle_reason   numeric(11)
,memo   varchar(120)
,order_seq_no   numeric(20)
,product_seq   numeric(20)
,regdate   timestamp
,site_cate_seq   numeric(20)
,uptdate   timestamp
,user_seq   numeric(20)
);
alter table tbl_cancel_item add constraint tbl_cancel_item_pk primary key (seq_no);
comment on table tbl_cancel_item is '취소 아이템 관리 테이블';
comment on column tbl_cancel_item.seq_no is '고유번호';
comment on column tbl_cancel_item.cancle_reason is '삭제 이유';
comment on column tbl_cancel_item.memo is '메모';
comment on column tbl_cancel_item.order_seq_no is '주문 고유번호';
comment on column tbl_cancel_item.product_seq is '상품 고유번호';
comment on column tbl_cancel_item.regdate is '등록일';
comment on column tbl_cancel_item.site_cate_seq is '사이트 고유번호';
comment on column tbl_cancel_item.uptdate is '수정일';
comment on column tbl_cancel_item.user_seq is '사용자 고유번호';

create table tbl_cart_item(
seq_no   numeric(20)
,delivery_type   numeric(11)
,option_seq   numeric(20)
,order_detail   varchar(255)
,product_seq   numeric(20)
,quantity   numeric(20)
,regdate   timestamp
,site_cate_seq   numeric(20)
,title   varchar(100)
,uptdate   timestamp
,user_seq   numeric(20)
,del_check   numeric(11)
);
alter table tbl_cart_item add constraint tbl_cart_item_pk primary key (seq_no);
comment on table tbl_cart_item is '카트 아이템 테이블';
comment on column tbl_cart_item.seq_no is '고유번호';
comment on column tbl_cart_item.delivery_type is '배송타입 1:택배';
comment on column tbl_cart_item.option_seq is '옵션 고유번호';
comment on column tbl_cart_item.order_detail is '옵션 상세정보';
comment on column tbl_cart_item.product_seq is '상품 고유번호';
comment on column tbl_cart_item.quantity is '주문량';
comment on column tbl_cart_item.regdate is '등록일';
comment on column tbl_cart_item.site_cate_seq is '사이트 고유번호';
comment on column tbl_cart_item.title is '상품명';
comment on column tbl_cart_item.uptdate is '수정일';
comment on column tbl_cart_item.user_seq is '사용자 고유번호';
comment on column tbl_cart_item.del_check is '삭제여부 0:활성화 1:삭제';

CREATE TABLE playkfa.tbl_event_info (
	seq_no numeric(20) NOT NULL,
	board_hits numeric(11) NULL,
	content_eng text NULL,
	content_kr text NULL,
	del_check numeric(11) NULL,
	end_date timestamp NULL,
	file_seq numeric(20) NULL,
	regdate timestamp NULL,
	search_title_eng varchar(255) NULL,
	search_title_kr varchar(255) NULL,
	start_date timestamp NULL,
	title_eng varchar(255) NULL,
	title_kr varchar(255) NULL,
	uptdate timestamp NULL,
	agent_seq numeric(20) NULL,
	search_content_eng text NULL,
	search_content_kr text NULL,
	vote_option int4 NULL,
	board_seq int8 NULL,
	event_attend int4 NULL,
	event_price int8 NULL,
	event_price_check int4 NULL,
	event_type int4 NULL,
	open_date timestamp NULL,
	CONSTRAINT tbl_event_info_pk PRIMARY KEY (seq_no)
);
comment on table tbl_event_info is '이벤트 관리 테이블';
comment on column tbl_event_info.seq_no is '고유번호';
comment on column tbl_event_info.board_hits is '게시물 방문수';
comment on column tbl_event_info.content_eng is '내용 영문';
comment on column tbl_event_info.content_kr is '내용 한국어';
comment on column tbl_event_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_event_info.end_date is '이벤트 종료일';
comment on column tbl_event_info.file_seq is '파일 고유번호';
comment on column tbl_event_info.regdate is '등록일';
comment on column tbl_event_info.search_title_eng is '타이틀 영문 검색';
comment on column tbl_event_info.search_title_kr is '타이틀 국문 검색';
comment on column tbl_event_info.start_date is '이벤트 시작일';
comment on column tbl_event_info.title_eng is '타이틀 영문 ';
comment on column tbl_event_info.title_kr is '타이틀 국문 ';
comment on column tbl_event_info.uptdate is '수정일';
comment on column tbl_event_info.agent_seq is '관리자 고유번호';
comment on column tbl_event_info.search_content_eng is '내용 검색 영문';
comment on column tbl_event_info.search_content_kr is '내용 검색 국문';


create table tbl_event_info_attend(
seq_no   numeric(20)
,content_seq   numeric(20)
,del_check   numeric(11)
,regdate   timestamp
,uptdate   timestamp
,user_seq   numeric(20)
);
alter table tbl_event_info_attend add constraint tbl_event_info_attend_pk primary key (seq_no);
comment on table tbl_event_info_attend is '이벤트 참석자 테이블';
comment on column tbl_event_info_attend.seq_no is '고유번호';
comment on column tbl_event_info_attend.content_seq is '이벤트 고유번호';
comment on column tbl_event_info_attend.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_event_info_attend.regdate is '등록일';
comment on column tbl_event_info_attend.uptdate is '수정일';
comment on column tbl_event_info_attend.user_seq is '사용자고유번호';

create table tbl_faq_cate(
seq_no   numeric(20)
,del_check   numeric(11)
,regdate   timestamp
,title_eng   varchar(512)
,title_kr   varchar(512)
,uptdate   timestamp
,rank   numeric(11)
);
alter table tbl_faq_cate add constraint tbl_faq_cate_pk primary key (seq_no);
comment on table tbl_faq_cate is 'faq 카테고리 관리 테이블';
comment on column tbl_faq_cate.seq_no is '고유번호';
comment on column tbl_faq_cate.del_check is '삭제여부 0:활성화 1:비활성화';
comment on column tbl_faq_cate.regdate is '등록일';
comment on column tbl_faq_cate.title_eng is '카테고리 영문명';
comment on column tbl_faq_cate.title_kr is '카테고리 한국어명';
comment on column tbl_faq_cate.uptdate is '수정일';
comment on column tbl_faq_cate.rank is '순서';


CREATE TABLE playkfa.tbl_faq_info (
	seq_no numeric(20) NOT NULL,
	agent_seq numeric(20) NULL,
	board_hits numeric(11) NULL,
	content_eng text NULL,
	content_kr text NULL,
	del_check numeric(11) NULL,
	file_seq numeric(20) NULL,
	regdate timestamp NULL,
	search_content_eng text NULL,
	search_content_kr text NULL,
	search_title_eng varchar(512) NULL,
	search_title_kr varchar(512) NULL,
	title_eng varchar(512) NULL,
	title_kr varchar(512) NULL,
	uptdate timestamp NULL,
	faq_cate numeric(11) NULL,
	end_date timestamp NULL,
	start_date timestamp NULL,
	CONSTRAINT tbl_faq_info_pk PRIMARY KEY (seq_no)
);
alter table tbl_faq_info add constraint tbl_faq_info_pk primary key (seq_no);
comment on table tbl_faq_info is 'faq 테이블';
comment on column tbl_faq_info.seq_no is '고유번호';
comment on column tbl_faq_info.agent_seq is '관리자고유번호';
comment on column tbl_faq_info.board_hits is '게시물 방문수';
comment on column tbl_faq_info.content_eng is '내용 영문';
comment on column tbl_faq_info.content_kr is '내용 국문';
comment on column tbl_faq_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_faq_info.file_seq is '파일 고유번호';
comment on column tbl_faq_info.regdate is '등록일';
comment on column tbl_faq_info.search_content_eng is '검색 내용 영문';
comment on column tbl_faq_info.search_content_kr is '검색 내용 국문';
comment on column tbl_faq_info.search_title_eng is '검색 제목 영문';
comment on column tbl_faq_info.search_title_kr is '검색 제목 국문';
comment on column tbl_faq_info.title_eng is '제목 영문';
comment on column tbl_faq_info.title_kr is '제목 국문';
comment on column tbl_faq_info.uptdate is '수정일';
comment on column tbl_faq_info.faq_cate is 'FAQ 카테고리 고유번호';


CREATE TABLE playkfa.tbl_inquiry (
	seq_no numeric(20) NOT NULL,
	answer_active numeric(11) NULL,
	"content" text NULL,
	del_check numeric(11) NULL,
	inquiry_type numeric(11) NULL,
	order_seq numeric(20) NULL,
	pgcode varchar(255) NULL,
	product_seq numeric(20) NULL,
	reg_date timestamp NULL,
	site_cate_seq numeric(20) NULL,
	title varchar(255) NULL,
	upt_date timestamp NULL,
	user_seq numeric(20) NULL,
	secret_check int4 NULL,
	CONSTRAINT tbl_inquiry_pk PRIMARY KEY (seq_no)
);

comment on table tbl_inquiry is '문의 관리';
comment on column tbl_inquiry.seq_no is '고유번호';
comment on column tbl_inquiry.answer_active is '답변여부 0:비활성화 1;답변';
comment on column tbl_inquiry.content is '질문 내용';
comment on column tbl_inquiry.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_inquiry.inquiry_type is '질문 타입';
comment on column tbl_inquiry.order_seq is '주문 고유번호';
comment on column tbl_inquiry.pgcode is 'PG 코드';
comment on column tbl_inquiry.product_seq is '상품 고유번호';
comment on column tbl_inquiry.reg_date is '등록일';
comment on column tbl_inquiry.site_cate_seq is '사이트 고유번호';
comment on column tbl_inquiry.title is '제목';
comment on column tbl_inquiry.upt_date is '수정일';
comment on column tbl_inquiry.user_seq is '사용자 고유번호';

create table tbl_inquiry_reply(
seq_no   numeric(20)
,content   text
,del_check   numeric(11)
,inquiry_seq   numeric(20)
,rank   numeric(11)
,reg_date   timestamp
,site_cate_seq   numeric(20)
,title   varchar(255)
,upt_date   timestamp
,user_grade   numeric(11)
,user_seq   numeric(20)
);
alter table tbl_inquiry_reply add constraint tbl_inquiry_reply_pk primary key (seq_no);
comment on table tbl_inquiry_reply is '문의 답변 관리';
comment on column tbl_inquiry_reply.seq_no is '게시물고유번호';
comment on column tbl_inquiry_reply.content is '내용';
comment on column tbl_inquiry_reply.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_inquiry_reply.inquiry_seq is '문의사항 고유번호';
comment on column tbl_inquiry_reply.rank is '리플 순서';
comment on column tbl_inquiry_reply.reg_date is '등록일';
comment on column tbl_inquiry_reply.site_cate_seq is '사이트 고유번호';
comment on column tbl_inquiry_reply.title is '제목';
comment on column tbl_inquiry_reply.upt_date is '수정일';
comment on column tbl_inquiry_reply.user_grade is '사용자 등급';
comment on column tbl_inquiry_reply.user_seq is '사용자 고유번호';

CREATE TABLE playkfa.tbl_notice_info (
	seq_no numeric(20) NOT NULL,
	board_hits numeric(11) NULL,
	content_eng text NULL,
	content_kr text NULL,
	del_check numeric(11) NULL,
	file_seq numeric(20) NULL,
	regdate timestamp NULL,
	search_title_eng varchar(512) NULL,
	search_title_kr varchar(512) NULL,
	title_eng varchar(512) NULL,
	title_kr varchar(512) NULL,
	uptdate timestamp NULL,
	agent_seq numeric(20) NULL,
	board_seq numeric(20) NULL,
	search_content_eng text NULL,
	search_content_kr text NULL,
	end_date timestamp NULL,
	start_date timestamp NULL,
	vote_option int4 NULL,
	CONSTRAINT tbl_notice_info_pk PRIMARY KEY (seq_no)
);

comment on table tbl_notice_info is '공지사항 관리';
comment on column tbl_notice_info.seq_no is '공지사항 게시물 고유번호';
comment on column tbl_notice_info.board_hits is '게시물 방문수';
comment on column tbl_notice_info.content_eng is '내용 영문';
comment on column tbl_notice_info.content_kr is '내용 국문';
comment on column tbl_notice_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_notice_info.file_seq is '파일 고유번호';
comment on column tbl_notice_info.regdate is '등록일';
comment on column tbl_notice_info.search_title_eng is '검색 제목 영문';
comment on column tbl_notice_info.search_title_kr is '검색 제목 국문';
comment on column tbl_notice_info.title_eng is '제목 영문';
comment on column tbl_notice_info.title_kr is '제목 국문';
comment on column tbl_notice_info.uptdate is '수정일';
comment on column tbl_notice_info.agent_seq is '관리자 고유번호';
comment on column tbl_notice_info.board_seq is '게시판 고유번호';
comment on column tbl_notice_info.search_content_eng is '검색 내용 영문';
comment on column tbl_notice_info.search_content_kr is '검색 내용 국문';


create table tbl_order_info(
seq_no   numeric(20)
,address1   varchar(512)
,cash_receipt   varchar(255)
,cid   varchar(40)
,del_check   numeric(11)
,delivery_fee   numeric(20)
,delivery_state   numeric(11)
,detail_address1   varchar(512)
,email   varchar(100)
,export_flag   numeric(11)
,export_number   varchar(50)
,express_company   varchar(20)
,express_number   varchar(20)
,extra_delivery_fee   numeric(20)
,memo   varchar(512)
,order_admin_memo   text
,pay_info   varchar(50)
,pg_code   varchar(255)
,pg_number   varchar(255)
,pg_token   varchar(255)
,postcode   varchar(6)
,product_img_url   varchar(100)
,recv_name   varchar(100)
,recv_phone   varchar(20)
,regdate   timestamp
,req_name   varchar(100)
,req_name_eng   varchar(100)
,req_phone   varchar(20)
,site_cate_seq   numeric(20)
,tid   varchar(40)
,title   varchar(255)
,total_price   numeric(20)
,uptdate   timestamp
,user_agent   varchar(255)
,userip   varchar(40)
,user_seq   numeric(20)
,moid   varchar(255)
,auth_token   varchar(255)
,m_key   varchar(255)
,mid   varchar(255)
,oid   varchar(255)
,order_number   varchar(255)
,card_code   numeric(11)
,state_date_time10   timestamp
,state_date_time3   timestamp
,state_date_time4   timestamp
,state_date_time5   timestamp
,state_date_time6   timestamp
,state_date_time7   timestamp
,state_date_time8   timestamp
,state_date_time9   timestamp
,ponumeric_order_check   numeric(11)
,ponumeric_price   numeric(20)
);
alter table tbl_order_info add constraint tbl_order_info_pk primary key (seq_no);
comment on table tbl_order_info is '주문관리 테이블';
comment on column tbl_order_info.seq_no is '주문정보 고유번호';
comment on column tbl_order_info.address1 is '주소';
comment on column tbl_order_info.cash_receipt is '';
comment on column tbl_order_info.cid is '';
comment on column tbl_order_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_order_info.delivery_fee is '배송비';
comment on column tbl_order_info.delivery_state is '배송상태';
comment on column tbl_order_info.detail_address1 is '상세주소';
comment on column tbl_order_info.email is '이메일';
comment on column tbl_order_info.export_flag is '해외배송';
comment on column tbl_order_info.export_number is '해외배송 번호';
comment on column tbl_order_info.express_company is '택배회사명';
comment on column tbl_order_info.express_number is '택배회사 송장번호';
comment on column tbl_order_info.extra_delivery_fee is '추가 배송료';
comment on column tbl_order_info.memo is '메모';
comment on column tbl_order_info.order_admin_memo is '관리자 메모';
comment on column tbl_order_info.pay_info is '구매정보';
comment on column tbl_order_info.pg_code is 'pg정보';
comment on column tbl_order_info.pg_number is '';
comment on column tbl_order_info.pg_token is '';
comment on column tbl_order_info.postcode is '우편번호';
comment on column tbl_order_info.product_img_url is '상품 url';
comment on column tbl_order_info.recv_name is '받는이 이름';
comment on column tbl_order_info.recv_phone is '받는이 전화번호';
comment on column tbl_order_info.regdate is '등록일';
comment on column tbl_order_info.req_name is '구매자명';
comment on column tbl_order_info.req_name_eng is '구매자 이름';
comment on column tbl_order_info.req_phone is '구매자 연락처';
comment on column tbl_order_info.site_cate_seq is '사이트 고유번호';
comment on column tbl_order_info.tid is '이니시스 tid';
comment on column tbl_order_info.title is '주문번호 제목';
comment on column tbl_order_info.total_price is '총 구매금액';
comment on column tbl_order_info.uptdate is '수정일';
comment on column tbl_order_info.user_agent is '들어온 브라우져 정보';
comment on column tbl_order_info.userip is '구매자 ip';
comment on column tbl_order_info.user_seq is '사용자 고유번호';
comment on column tbl_order_info.moid is '';
comment on column tbl_order_info.auth_token is '';
comment on column tbl_order_info.m_key is '';
comment on column tbl_order_info.mid is '';
comment on column tbl_order_info.oid is '';
comment on column tbl_order_info.order_number is '';
comment on column tbl_order_info.card_code is '카드 고유번호';
comment on column tbl_order_info.state_date_time10 is '환불완료 승인날';
comment on column tbl_order_info.state_date_time3 is '배송준비 승인날';
comment on column tbl_order_info.state_date_time4 is '배송중 승이날';
comment on column tbl_order_info.state_date_time5 is '배송완료 승인날';
comment on column tbl_order_info.state_date_time6 is '배송지연 승인날';
comment on column tbl_order_info.state_date_time7 is '구매확정 승인날';
comment on column tbl_order_info.state_date_time8 is '반품요청 승인날';
comment on column tbl_order_info.state_date_time9 is '반품완료 승인날';
comment on column tbl_order_info.ponumeric_order_check is '포인트 구매여부 1:활성화 0:비활성화';
comment on column tbl_order_info.ponumeric_price is '포인트 사용량';


CREATE TABLE playkfa.tbl_order_item (
	seq_no numeric(20) NOT NULL,
	del_check numeric(11) NULL,
	delivery_state numeric(11) NULL,
	delivery_type numeric(11) NULL,
	discount_cal_price numeric(20) NULL,
	export_delivery_state numeric(11) NULL,
	express_company varchar(20) NULL,
	express_number varchar(20) NULL,
	option_seq numeric(20) NULL,
	option_value varchar(255) NULL,
	order_detail varchar(255) NULL,
	order_seq_no numeric(20) NULL,
	price numeric(20) NULL,
	product_img_url varchar(255) NULL,
	product_seq numeric(20) NULL,
	quantity numeric(20) NULL,
	regdate timestamp NULL,
	shipment_processing_date timestamp NULL,
	title varchar(255) NULL,
	uptdate timestamp NULL,
	refund_check int4 NULL,
	CONSTRAINT tbl_order_item_pk PRIMARY KEY (seq_no)
);

comment on table tbl_order_item is '주문 아이탬 관리';
comment on column tbl_order_item.seq_no is '고유번호';
comment on column tbl_order_item.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_order_item.delivery_state is '배달상태';
comment on column tbl_order_item.delivery_type is '배송 타입';
comment on column tbl_order_item.discount_cal_price is '할인 가격';
comment on column tbl_order_item.export_delivery_state is '해외 배송 상황';
comment on column tbl_order_item.express_company is '택배회사명';
comment on column tbl_order_item.express_number is '택배 송장번호';
comment on column tbl_order_item.option_seq is '옵션고유번호';
comment on column tbl_order_item.option_value is '옵션 고유명';
comment on column tbl_order_item.order_detail is '상품 상세 정보';
comment on column tbl_order_item.order_seq_no is '주문 고유번호';
comment on column tbl_order_item.price is '가격';
comment on column tbl_order_item.product_img_url is '상품 이미지 url';
comment on column tbl_order_item.product_seq is '상품 고유번호';
comment on column tbl_order_item.quantity is '주문량';
comment on column tbl_order_item.regdate is '등록일';
comment on column tbl_order_item.shipment_processing_date is '배송날';
comment on column tbl_order_item.title is '상품명';
comment on column tbl_order_item.uptdate is '수정일';

CREATE TABLE playkfa.tbl_point_log (
	seq_no numeric(20) NOT NULL,
	agent_seq numeric(20) NULL,
	del_check numeric(11) NULL,
	file_name varchar(255) NULL,
	regdate timestamp NULL,
	total_row numeric(20) NULL,
	uptdate timestamp NULL,
	addusecheck int4 NULL,
	total_point numeric NULL,
	CONSTRAINT tbl_point_log_pk PRIMARY KEY (seq_no)
);

comment on table tbl_point_log is '포인트 로그 관리';
comment on column tbl_point_log.seq_no is '고유번호';
comment on column tbl_point_log.agent_seq is '관리자 고유번호';
comment on column tbl_point_log.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_point_log.file_name is '업로드 된 파일명';
comment on column tbl_point_log.regdate is '등록일';
comment on column tbl_point_log.total_ponumeric is '전체 포인트';
comment on column tbl_point_log.total_row is '전체 로우 수';
comment on column tbl_point_log.uptdate is '수정일';


CREATE TABLE playkfa.tbl_point_user (
	seq_no numeric(20) NOT NULL,
	del_check numeric(11) NULL,
	reg_date timestamp NULL,
	upt_date timestamp NULL,
	user_seq numeric(20) NULL,
	point_current numeric NULL,
	point_save numeric NULL,
	point_used numeric NULL,
	CONSTRAINT tbl_point_user_pk PRIMARY KEY (seq_no)
);

comment on table tbl_point_user is '포인트 사용자';
comment on column tbl_point_user.seq_no is '포인트 고유번호';
comment on column tbl_point_user.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_point_user.ponumeric_current is '현재 포인트';
comment on column tbl_point_user.ponumeric_save is '현재까지 저장한 포인트';
comment on column tbl_point_user.ponumeric_used is '현재까지 사용한 포인트';
comment on column tbl_point_user.reg_date is '등록일';
comment on column tbl_point_user.upt_date is '수정일';
comment on column tbl_point_user.user_seq is '사용자고유번호';



create table tbl_product_category(
id   numeric(20)
,del_check   numeric(11)
,rank   numeric(11)
,reg_date   timestamp
,site_cate_seq   numeric(20)
,sub2active   numeric(11)
,sub2id   numeric(20)
,sub_active   numeric(11)
,sub_id   numeric(20)
,text   varchar(255)
,upt_date   timestamp
);
alter table tbl_product_category add constraint tbl_product_category_pk primary key (id);
comment on table tbl_product_category is '상점별 카테고리 관리';
comment on column tbl_product_category.id is '고유번호';
comment on column tbl_product_category.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_category.rank is '순서';
comment on column tbl_product_category.reg_date is '등록일';
comment on column tbl_product_category.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_category.sub2active is '서브2 활성화';
comment on column tbl_product_category.sub2id is '서브2 고유번호';
comment on column tbl_product_category.sub_active is '서브1 활성화';
comment on column tbl_product_category.sub_id is '서브1 고유번호';
comment on column tbl_product_category.text is '카테고리명';
comment on column tbl_product_category.upt_date is '수정일';


create table tbl_product_info(
seq_no   numeric(20)
,badge1   numeric(11)
,badge2   numeric(11)
,badge3   numeric(11)
,badge_mode   numeric(11)
,board_seq   numeric(20)
,buy_link   varchar(255)
,del_check   numeric(11)
,discount_cal_price   numeric(20)
,discount_check   numeric(11)
,discount_price   numeric(20)
,discount_rate   numeric(20)
,discount_type   numeric(11)
,like_count   numeric(11)
,price   numeric(20)
,price_display_check   numeric(11)
,product_information_notice_all_check   numeric(11)
,product_information_notice_type   numeric(11)
,product_num   varchar(255)
,product_stock_type   numeric(11)
,product_type   numeric(11)
,regdate   timestamp
,sale_enddate   timestamp
,sale_startdate   timestamp
,sales_period_check   numeric(11)
,search_title   varchar(255)
,selec7approval   numeric(11)
,site_cate_seq   numeric(20)
,sort_rank   numeric(11)
,sortdate   timestamp
,sub_title   varchar(255)
,title   varchar(255)
,to_seller_msg   varchar(255)
,uptdate   timestamp
,promoted   numeric(11)
,log_share_count   numeric(11)
,product_main_cate   numeric(20)
,purchase_quantity_count   numeric(11)
,purchase_restrictions   numeric(11)
);
alter table tbl_product_info add constraint tbl_product_info_pk primary key (seq_no);
comment on table tbl_product_info is '상품 정보';
comment on column tbl_product_info.seq_no is '고유번호';
comment on column tbl_product_info.badge1 is '뱃지 1 활성화 여부';
comment on column tbl_product_info.badge2 is '뱃지 2 활성화 여부';
comment on column tbl_product_info.badge3 is '뱃지 3 활성화 여부';
comment on column tbl_product_info.badge_mode is '뱃지 모드';
comment on column tbl_product_info.board_seq is '게시판 고유번호';
comment on column tbl_product_info.buy_link is '구매 링크';
comment on column tbl_product_info.del_check is '삭제 여부 0:활성화 1:삭제';
comment on column tbl_product_info.discount_cal_price is '할인가격';
comment on column tbl_product_info.discount_check is '할인 여부 체크 0:비활성화 1:활성화';
comment on column tbl_product_info.discount_price is '할인후 가격';
comment on column tbl_product_info.discount_rate is '할인률';
comment on column tbl_product_info.discount_type is '할인 타입 1:% 2:직접할인';
comment on column tbl_product_info.like_count is '좋아요 수';
comment on column tbl_product_info.price is '가격';
comment on column tbl_product_info.price_display_check is '가격표시여부';
comment on column tbl_product_info.product_information_notice_all_check is '';
comment on column tbl_product_info.product_information_notice_type is '';
comment on column tbl_product_info.product_num is '';
comment on column tbl_product_info.product_stock_type is '';
comment on column tbl_product_info.product_type is '';
comment on column tbl_product_info.regdate is '등록일';
comment on column tbl_product_info.sale_enddate is '판매 시작일';
comment on column tbl_product_info.sale_startdate is '판매 종료일';
comment on column tbl_product_info.sales_period_check is '판매 시작 활성화여부 1:활성화 0:비활성화';
comment on column tbl_product_info.search_title is '검색';
comment on column tbl_product_info.selec7approval is '';
comment on column tbl_product_info.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_info.sort_rank is '순서';
comment on column tbl_product_info.sortdate is '순서변경 날';
comment on column tbl_product_info.sub_title is '부제목';
comment on column tbl_product_info.title is '제목';
comment on column tbl_product_info.to_seller_msg is '셀러에게 메시지';
comment on column tbl_product_info.uptdate is '수정일';
comment on column tbl_product_info.promoted is '프로모트 여부';
comment on column tbl_product_info.log_share_count is '공유 카운트';
comment on column tbl_product_info.product_main_cate is '상품 메인카테고리 고유번호';
comment on column tbl_product_info.purchase_quantity_count is '주문량';
comment on column tbl_product_info.purchase_restrictions is '';



create table tbl_product_info_codblock_detail(
seq_no   numeric(20)
,del_check   numeric(11)
,middle_conent   text
,product_seq   numeric(20)
,regdate   timestamp
,site_cate_seq   numeric(20)
,uptdate   timestamp
);
alter table tbl_product_info_codblock_detail add constraint tbl_product_info_codblock_detail_pk primary key (seq_no);
comment on table tbl_product_info_codblock_detail is '상품 상세정보';
comment on column tbl_product_info_codblock_detail.seq_no is '고유번호';
comment on column tbl_product_info_codblock_detail.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_info_codblock_detail.middle_conent is '중간 콘텐츠';
comment on column tbl_product_info_codblock_detail.product_seq is '상품 고유번호';
comment on column tbl_product_info_codblock_detail.regdate is '등록일';
comment on column tbl_product_info_codblock_detail.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_info_codblock_detail.uptdate is '수정일';


CREATE TABLE playkfa.tbl_product_info_delivery (
	seq_no numeric(20) NOT NULL,
	del_check numeric(11) NULL,
	product_seq numeric(20) NULL,
	regdate timestamp NULL,
	site_cate_seq numeric(20) NULL,
	uptdate timestamp NULL,
	delivery_bundle_shipping_check int4 NULL,
	delivery_install_type int4 NULL,
	delivery_main_base_price int8 NULL,
	delivery_main_extra_area2 int8 NULL,
	delivery_main_extra_area3 int8 NULL,
	delivery_main_method int4 NULL,
	delivery_main_payment_type int4 NULL,
	delivery_main_product_sales_total int8 NULL,
	delivery_method_payment2 int4 NULL,
	delivery_method_payment3 int4 NULL,
	delivery_payment_timing int4 NULL,
	delivery_quick_busan int4 NULL,
	delivery_quick_daegu int4 NULL,
	delivery_quick_daejeon int4 NULL,
	delivery_quick_gwangju int4 NULL,
	delivery_quick_gyeonggi int4 NULL,
	delivery_quick_incheon int4 NULL,
	delivery_quick_seoul int4 NULL,
	delivery_quick_type int4 NULL,
	delivery_quick_ulsan int4 NULL,
	delivery_return_addr varchar(255) NULL,
	delivery_return_detail_addr varchar(255) NULL,
	delivery_return_extra_addr varchar(255) NULL,
	delivery_return_postnum varchar(255) NULL,
	delivery_return_price int8 NULL,
	delivery_return_price_type int4 NULL,
	delivery_ship_return_mode int4 NULL,
	delivery_shipment_addr varchar(255) NULL,
	delivery_shipment_detail_addr varchar(255) NULL,
	delivery_shipment_extra_addr varchar(255) NULL,
	delivery_shipment_postnum varchar(255) NULL,
	delivery_visit_addr varchar(255) NULL,
	delivery_visit_detail_addr varchar(255) NULL,
	delivery_visit_extra_addr varchar(255) NULL,
	delivery_visit_postnum varchar(255) NULL,
	delivery_visit_type int4 NULL,
	export_flag int4 NULL,
	CONSTRAINT tbl_product_info_delivery_pk PRIMARY KEY (seq_no)
);

comment on table tbl_product_info_delivery is '상품 배송정보';
comment on column tbl_product_info_delivery.seq_no is '고유번호';
comment on column tbl_product_info_delivery.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_info_delivery.middle_conent is '중간 콘텐츠';
comment on column tbl_product_info_delivery.product_seq is '상품고유번호';
comment on column tbl_product_info_delivery.regdate is '등록일';
comment on column tbl_product_info_delivery.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_info_delivery.uptdate is '수정일';


create table tbl_product_info_img(
seq_no   numeric(20)
,del_check   numeric(11)
,file_seq   numeric(20)
,product_info_seq   numeric(20)
,rank   numeric(11)
,regdate   timestamp
,site_cate_seq   numeric(20)
,uptdate   timestamp
);
alter table tbl_product_info_img add constraint tbl_product_info_img_pk primary key (seq_no);
comment on table tbl_product_info_img is '상품 상단 이미지';
comment on column tbl_product_info_img.seq_no is '고유번호';
comment on column tbl_product_info_img.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_info_img.file_seq is '파일 고유번호';
comment on column tbl_product_info_img.product_info_seq is '상품 고유번호';
comment on column tbl_product_info_img.rank is '순서';
comment on column tbl_product_info_img.regdate is '등록일';
comment on column tbl_product_info_img.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_info_img.uptdate is '수정일';


CREATE TABLE playkfa.tbl_product_main_cate (
	seq_no numeric(20) NOT NULL,
	del_check numeric(11) NULL,
	"rank" numeric(11) NULL,
	regdate timestamp NULL,
	title varchar(255) NULL,
	uptdate timestamp NULL,
	move_title varchar(255) NULL,
	sub_active int4 NULL,
	sub_id int8 NULL,
	CONSTRAINT tbl_product_main_cate_pk PRIMARY KEY (seq_no)
);

comment on table tbl_product_main_cate is '상품 카테고리 관리';
comment on column tbl_product_main_cate.seq_no is '고유번호';
comment on column tbl_product_main_cate.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_main_cate.rank is '순서';
comment on column tbl_product_main_cate.regdate is '등록일';
comment on column tbl_product_main_cate.title is '카테고리 명(국문)';
comment on column tbl_product_main_cate.uptdate is '수정일';
comment on column tbl_product_main_cate.move_title is '이동 카테고리 명(영문)';


create table tbl_product_option_stock(
seq_no   numeric(20)
,add_price_active   numeric(11)
,del_check   numeric(11)
,option_extra_charge   numeric(20)
,option_name   varchar(255)
,option_stock   numeric(20)
,option_stock_ulimited   numeric(11)
,product_info_seq   numeric(20)
,rank   numeric(11)
,regdate   timestamp
,site_cate_seq   numeric(20)
,uptdate   timestamp
);
alter table tbl_product_option_stock add constraint tbl_product_option_stock_pk primary key (seq_no);
comment on table tbl_product_option_stock is '상품 옵션 및 스톡관리';
comment on column tbl_product_option_stock.seq_no is '고유번호';
comment on column tbl_product_option_stock.add_price_active is '추가금액 활성화 0:비활성화 1:활성화';
comment on column tbl_product_option_stock.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_option_stock.option_extra_charge is '추가 금액';
comment on column tbl_product_option_stock.option_name is '옵션명';
comment on column tbl_product_option_stock.option_stock is '재고량';
comment on column tbl_product_option_stock.option_stock_ulimited is '재고 무제한 활성화 1:활성화 0:비활성화';
comment on column tbl_product_option_stock.product_info_seq is '상품 고유번호';
comment on column tbl_product_option_stock.rank is '순서';
comment on column tbl_product_option_stock.regdate is '등록일';
comment on column tbl_product_option_stock.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_option_stock.uptdate is '수정일';


CREATE TABLE playkfa.tbl_product_review (
	seq_no numeric(20) NOT NULL,
	"content" text NULL,
	del_check numeric(11) NULL,
	product_seq numeric(20) NULL,
	reg_date timestamp NULL,
	title varchar(255) NULL,
	upt_date timestamp NULL,
	user_seq numeric(20) NULL,
	review_point int8 NULL,
	order_seq_no int8 NULL,
	product_option_seq int8 NULL,
	site_cate_seq int8 NULL,
	CONSTRAINT tbl_product_review_pk PRIMARY KEY (seq_no)
);

comment on table tbl_product_review is '상품 리뷰';
comment on column tbl_product_review.seq_no is '고유번호';
comment on column tbl_product_review.content is '내용';
comment on column tbl_product_review.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_review.product_seq is '상품 고유번호';
comment on column tbl_product_review.reg_date is '등록일';
comment on column tbl_product_review.review_ponumeric is '리뷰 포인트';
comment on column tbl_product_review.title is '제목';
comment on column tbl_product_review.upt_date is '수정일';
comment on column tbl_product_review.user_seq is '사용자 고유번호';


create table tbl_product_review_img(
seq_no   numeric(20)
,del_check   numeric(11)
,file_seq   numeric(20)
,rank   numeric(11)
,regdate   timestamp
,review_seq   numeric(20)
,site_cate_seq   numeric(20)
,uptdate   timestamp
);
alter table tbl_product_review_img add constraint tbl_product_review_img_pk primary key (seq_no);
comment on table tbl_product_review_img is '상품 리뷰 이미지';
comment on column tbl_product_review_img.seq_no is '고유번호';
comment on column tbl_product_review_img.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_review_img.file_seq is '파일 고유번호';
comment on column tbl_product_review_img.rank is '순서';
comment on column tbl_product_review_img.regdate is '등록일';
comment on column tbl_product_review_img.review_seq is '리뷰 고유번호';
comment on column tbl_product_review_img.site_cate_seq is '사이트 고유번호';
comment on column tbl_product_review_img.uptdate is '수정일';


create table tbl_product_review_like(
seq_no   numeric(20)
,like_active   numeric(11)
,reg_date   timestamp
,review_seq   numeric(20)
,upt_date   timestamp
,user_seq   numeric(20)
);
alter table tbl_product_review_like add constraint tbl_product_review_like_pk primary key (seq_no);
comment on table tbl_product_review_like is '상품 좋아요';
comment on column tbl_product_review_like.seq_no is '고유번호';
comment on column tbl_product_review_like.like_active is '좋아요 활성화';
comment on column tbl_product_review_like.reg_date is '등록일';
comment on column tbl_product_review_like.review_seq is '리뷰 고유번호';
comment on column tbl_product_review_like.upt_date is '수정일';
comment on column tbl_product_review_like.user_seq is '사용자 고유번호';



create table tbl_product_review_reply(
seq_no   numeric(20)
,content   text
,del_check   numeric(11)
,reg_date   timestamp
,review_seq   numeric(20)
,upt_date   timestamp
,user_level   numeric(11)
,user_seq   numeric(20)
);
alter table tbl_product_review_reply add constraint tbl_product_review_reply_pk primary key (seq_no);
comment on table tbl_product_review_reply is '상품 답변';
comment on column tbl_product_review_reply.seq_no is '고유번호';
comment on column tbl_product_review_reply.content is '내용';
comment on column tbl_product_review_reply.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_product_review_reply.reg_date is '등록일';
comment on column tbl_product_review_reply.review_seq is '리뷰 고유번호';
comment on column tbl_product_review_reply.upt_date is '수정일';
comment on column tbl_product_review_reply.user_level is '사용자 레벨';
comment on column tbl_product_review_reply.user_seq is '사용자 고유번호';


create table tbl_user_product_like(
seq_no   numeric(20)
,del_check   numeric(11)
,product_seq   numeric(20)
,regdate   timestamp
,uptdate   timestamp
,user_seq   numeric(20)
);
alter table tbl_user_product_like add constraint tbl_user_product_like_pk primary key (seq_no);
comment on table tbl_user_product_like is '사용자 좋아요 상품';
comment on column tbl_user_product_like.seq_no is '고유번호';
comment on column tbl_user_product_like.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_user_product_like.product_seq is '상품고유번호';
comment on column tbl_user_product_like.regdate is '등록일';
comment on column tbl_user_product_like.uptdate is '수정일';
comment on column tbl_user_product_like.user_seq is '사용자고유번호';



create table tbl_user_story_comment_like(
seq_no   numeric(20)
,comment_seq   numeric(20)
,content_seq   numeric(20)
,del_check   numeric(11)
,regdate   timestamp
,uptdate   timestamp
,user_seq   numeric(20)
);
alter table tbl_user_story_comment_like add constraint tbl_user_story_comment_like_pk primary key (seq_no);
comment on table tbl_user_story_comment_like is '사용자 댓글 좋아요';
comment on column tbl_user_story_comment_like.seq_no is '고유번호';
comment on column tbl_user_story_comment_like.comment_seq is '댓글 고유번호';
comment on column tbl_user_story_comment_like.content_seq is '콘텐츠 고유번호';
comment on column tbl_user_story_comment_like.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_user_story_comment_like.regdate is '등록일';
comment on column tbl_user_story_comment_like.uptdate is '수정일';
comment on column tbl_user_story_comment_like.user_seq is '사용자 고유번호';




create table tbl_vote_info(
seq_no   numeric(20)
,board_hits   numeric(11)
,content_eng   varchar(255)
,content_kr   varchar(255)
,del_check   numeric(11)
,end_date   timestamp
,file_seq   numeric(20)
,regdate   timestamp
,search_title_eng   varchar(255)
,search_title_kr   varchar(255)
,start_date   timestamp
,title_eng   varchar(255)
,title_kr   varchar(255)
,uptdate   timestamp
);
alter table tbl_vote_info add constraint tbl_vote_info_pk primary key (seq_no);
comment on table tbl_vote_info is '투표 테이블';
comment on column tbl_vote_info.seq_no is '고유번호';
comment on column tbl_vote_info.board_hits is '방문자수';
comment on column tbl_vote_info.content_eng is '내용 영문';
comment on column tbl_vote_info.content_kr is '내용 국문';
comment on column tbl_vote_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_vote_info.end_date is '종료일';
comment on column tbl_vote_info.file_seq is '파일 고유번호';
comment on column tbl_vote_info.regdate is '등록일';
comment on column tbl_vote_info.search_title_eng is '검색 제목 영문';
comment on column tbl_vote_info.search_title_kr is '검색 제목 국문';
comment on column tbl_vote_info.start_date is '시작일';
comment on column tbl_vote_info.title_eng is '제목 영문';
comment on column tbl_vote_info.title_kr is '제목 국문';
comment on column tbl_vote_info.uptdate is '수정일';


create table tbl_vote_info_item(
seq_no   numeric(20)
,content_eng   varchar(255)
,content_kr   varchar(255)
,del_check   numeric(11)
,regdate   timestamp
,uptdate   timestamp
,vote_seq   numeric(20)
);
alter table tbl_vote_info_item add constraint tbl_vote_info_item_pk primary key (seq_no);
comment on table tbl_vote_info_item is '투표 정보 아이템';
comment on column tbl_vote_info_item.seq_no is '고유번호';
comment on column tbl_vote_info_item.content_eng is '투표 옵션 영문';
comment on column tbl_vote_info_item.content_kr is '투표 옵션 국문';
comment on column tbl_vote_info_item.del_check is '삭제 여무 0:활성화 1:삭제';
comment on column tbl_vote_info_item.regdate is '등록일';
comment on column tbl_vote_info_item.uptdate is '수정일';
comment on column tbl_vote_info_item.vote_seq is '투표 고유번호';



create table tbl_vote_info_result(
seq_no   numeric(20)
,del_check   numeric(11)
,regdate   timestamp
,uptdate   timestamp
,user_seq   numeric(20)
,vote_item_seq   numeric(20)
,vote_seq   numeric(20)
);
alter table tbl_vote_info_result add constraint tbl_vote_info_result_pk primary key (seq_no);
comment on table tbl_vote_info_result is '투표 정보 결과';
comment on column tbl_vote_info_result.seq_no is '고유번호';
comment on column tbl_vote_info_result.del_check is '삭제여부 0:활성화 1;삭제';
comment on column tbl_vote_info_result.regdate is '등록일';
comment on column tbl_vote_info_result.uptdate is '수정일';
comment on column tbl_vote_info_result.user_seq is '사용자고유번호';
comment on column tbl_vote_info_result.vote_item_seq is '투표 옵션 고유번호';
comment on column tbl_vote_info_result.vote_seq is '투표 고유번호';




create table tbl_admin(
seq_no   numeric(20)
,agency_seq   numeric(20)
,agent_file   numeric(20)
,del_check   numeric(11)
,designer_active   numeric(11)
,regdate   timestamp
,super_active   numeric(11)
,uptdate   timestamp
,user_authority   numeric(11)
,user_email   varchar(255)
,user_name   varchar(255)
,user_position   varchar(255)
,user_pw   varchar(255)
,resell_seq   numeric(11)
,site_cate_seq   numeric(20)
);
alter table tbl_admin add constraint tbl_admin_pk primary key (seq_no);
comment on table tbl_admin is '관리자 테이블';
comment on column tbl_admin.seq_no is '고유번호';
comment on column tbl_admin.agency_seq is '최고 관리자 번호';
comment on column tbl_admin.agent_file is '관리자 파일';
comment on column tbl_admin.del_check is '삭제여부 (0:활성화 1:비활성화)';
comment on column tbl_admin.designer_active is '디자이너 권한 활성화(0:활성화: 1:비활성화)';
comment on column tbl_admin.regdate is '등록일';
comment on column tbl_admin.super_active is '최고 등급권한 부여';
comment on column tbl_admin.uptdate is '수정일';
comment on column tbl_admin.user_authority is '유져등급';
comment on column tbl_admin.user_email is '사용자 이메일';
comment on column tbl_admin.user_name is '사용자 이름';
comment on column tbl_admin.user_position is '사용자 직급';
comment on column tbl_admin.user_pw is '비밀번호';
comment on column tbl_admin.resell_seq is '리셀러 고유번호';
comment on column tbl_admin.site_cate_seq is '사이트 고유번호';



create table tbl_admin_contact(
seq_no   numeric(20)
,admin_seq   numeric(20)
,contact_department   varchar(255)
,contact_email   varchar(255)
,contact_name   varchar(255)
,contact_phone   varchar(255)
,contact_rank   varchar(255)
,del_check   numeric(11)
,rank   numeric(11)
,regdate   timestamp
,tax_officer_check   numeric(11)
,uptdate   timestamp
);
alter table tbl_admin_contact add constraint tbl_admin_contact_pk primary key (seq_no);
comment on table tbl_admin_contact is '관리자 담당자 정보';
comment on column tbl_admin_contact.seq_no is '고유번호';
comment on column tbl_admin_contact.admin_seq is '관리자 고유번호';
comment on column tbl_admin_contact.contact_department is '담당자 부서';
comment on column tbl_admin_contact.contact_email is '담당자 이메일';
comment on column tbl_admin_contact.contact_name is '담당자 이름';
comment on column tbl_admin_contact.contact_phone is '담당자 전화번호';
comment on column tbl_admin_contact.contact_rank is '담당자 직급';
comment on column tbl_admin_contact.del_check is '삭제 여부 0:활성화 1:삭제';
comment on column tbl_admin_contact.rank is '순서';
comment on column tbl_admin_contact.regdate is '등록일';
comment on column tbl_admin_contact.tax_officer_check is '세금 담당자 활성화: 0:비활성화 1:활성화';
comment on column tbl_admin_contact.uptdate is '수정일';



CREATE TABLE playkfa.tbl_admin_info (
	seq_no numeric(20) NOT NULL,
	admin_seq numeric(20) NULL,
	del_check numeric(11) NULL,
	regdate timestamp NULL,
	uptdate timestamp NULL,
	address varchar(255) NULL,
	bank_account_holder varchar(255) NULL,
	bank_account_number varchar(255) NULL,
	bank_name varchar(255) NULL,
	business_class int4 NULL,
	business_number varchar(255) NULL,
	business_registration_file_seq int8 NULL,
	business_sector varchar(255) NULL,
	business_type varchar(255) NULL,
	company_name varchar(255) NULL,
	copy_of_account_file_seq int8 NULL,
	detail_address varchar(255) NULL,
	domestic_international_check int4 NULL,
	postcode varchar(255) NULL,
	resident_number varchar(255) NULL,
	sub_business_number varchar(255) NULL,
	biz_code varchar(255) NULL,
	fee_rate1 numeric NULL,
	fee_rate2 numeric NULL,
	CONSTRAINT tbl_admin_info_pk PRIMARY KEY (seq_no)
);

comment on table tbl_admin_info is '관리자 정보';
comment on column tbl_admin_info.seq_no is '고유번호';
comment on column tbl_admin_info.admin_seq is '관리자 고유번호';
comment on column tbl_admin_info.contact_department is '담당자 부서';
comment on column tbl_admin_info.contact_email is '담당자 이메일';
comment on column tbl_admin_info.contact_name is '담당자 이름';
comment on column tbl_admin_info.contact_phone is '담당자 전화번호';
comment on column tbl_admin_info.contact_rank is '담당자 직급';
comment on column tbl_admin_info.del_check is '삭제여부 0:활성화 1:삭제';
comment on column tbl_admin_info.rank is '순서';
comment on column tbl_admin_info.regdate is '등록일';
comment on column tbl_admin_info.tax_officer_check is '세금 담당자 활성화 0:비활성화 1:활성화';
comment on column tbl_admin_info.uptdate is '수정일';




create table tbl_user(
seq_no   numeric(11)
,del_check   numeric(1)
,id_type   numeric(1)
,markecting_check   numeric(1)
,markecting_check_type   numeric(1)
,marketing_check_date   timestamp
,nickname   varchar(50)
,node_token   varchar(300)
,phone_certification_active   numeric(1)
,phone_certification_date   timestamp
,user_id   varchar(20)
,user_pw   varchar(255)
,user_name   varchar(50)
,user_phone   varchar(50)
,auth_code   varchar(200)
,auth_date   timestamp
,user_email   varchar(50)
,user_birth   varchar(50)
,user_sex   char(5)
,privacy_check   numeric(11)
,privacy_check_date   timestamp
,regdate   timestamp
,uptdate   timestamp
,CONN_DATE   timestamp
,GRADE_SEQ   numeric(11)
,"14_YN"   varchar(1)
,PARENT_NAME   varchar(50)
,PARENT_PHONE   varchar(50)
,PARENT_EMAIL   varchar(50)
,event_agree_check   numeric(11)
,event_agree_date   timestamp
,numericerpark_code   numeric(11)
,numericerpark_code_date   timestamp
,numericerpark_code_msg   varchar(255)
,picture   varchar(100)
,profile_file_seq   numeric(20)
,pw_reset_check   numeric(11)
,use_check   numeric(11)
,use_check_date   timestamp
,user_rank   numeric(11)
,user_token   varchar(255)
,phone_not_check   numeric(11)
,phone_not_check_date   timestamp
,user_birth_str   varchar(255)
);
alter table tbl_user add constraint tbl_user_pk primary key (seq_no);
comment on table tbl_user is '회원정보';
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
comment on column tbl_user.CONN_DATE is '최종접속일';
comment on column tbl_user.GRADE_SEQ is '등급고유번호';
comment on column tbl_user."14_YN" is '14세여부';
comment on column tbl_user.PARENT_NAME is '법정대리인명';
comment on column tbl_user.PARENT_PHONE is '법정대리인휴대폰번호';
comment on column tbl_user.PARENT_EMAIL is '법정대리인이메일';
comment on column tbl_user.event_agree_check is '이벤트정보받기여부(Y:동의,N:미동의)';
comment on column tbl_user.event_agree_date is '이벤트정보받기동의일';
comment on column tbl_user.numericerpark_code is '인터파크 연동 결과 코드';
comment on column tbl_user.numericerpark_code_date is '인터파크 연동 결과값 받은 날';
comment on column tbl_user.numericerpark_code_msg is '인터파크 연동 결과값 메시지';
comment on column tbl_user.picture is '사진 url';
comment on column tbl_user.profile_file_seq is '프로필 고유번호';
comment on column tbl_user.pw_reset_check is '비밀번호 강제 리셋 1:강제 리셋 사용자 0:일반사용자';
comment on column tbl_user.use_check is '사용자 동의';
comment on column tbl_user.use_check_date is '사용자 동의 날';
comment on column tbl_user.user_rank is '사용자 등급';
comment on column tbl_user.user_token is '사용자토큰';
comment on column tbl_user.phone_not_check is '';
comment on column tbl_user.phone_not_check_date is '';
comment on column tbl_user.user_birth_str is '사용자 생일 String';





create table user_authority(
seq_no   numeric(20)
,authority_name   varchar(50)
);
alter table user_authority add constraint user_authority_pk primary key (seq_no);
comment on table user_authority is '회원 등급 관리';
comment on column user_authority.seq_no is '사용자 고유번호';
comment on column user_authority.authority_name is '사용자 등급';











