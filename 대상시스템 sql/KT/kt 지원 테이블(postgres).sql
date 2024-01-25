create table TMP_KFA_02_TIME_UNIQ_I(
poi_id       varchar(10)
, poi_nm       varchar(50)
, timezn_div_cd varchar(5)
, sex_div_cd   varchar(2)
, age_div_cd   varchar(10)
, cnt          varchar(10)
, info_div_cd  varchar(10)
, base_date    varchar(10)
, req_no       varchar(20)
);



create table TMP_KFA_02_TIME_UNIQ_O(
poi_id       varchar(10)
, poi_nm       varchar(50)
, timezn_div_cd varchar(5)
, sex_div_cd   varchar(2)
, age_div_cd   varchar(10)
, cnt          varchar(10)
, info_div_cd  varchar(10)
, base_date    varchar(10)
, req_no       varchar(20)
);

create table TMP_KFA_02_TIME_UNIQ_F(
poi_id       varchar(10)
, poi_nm       varchar(50)
, timezn_div_cd varchar(5)
, cntry_cd		varchar(5)
, sido_cd		varchar(5)
, sido_nm		varchar(50)
, cnt          varchar(10)
, info_div_cd  varchar(10)
, base_date    varchar(10)
, req_no       varchar(20)
);

create table TMP_KFA_02_INGRS(
poi_id       varchar(10)
, poi_nm       varchar(50)
, timezn_div_cd varchar(5)
, sido_nm   	varchar(50)
, sgg_cd		varchar(50)
, sgg_nm         varchar(50)
, cnt           varchar(10)
, base_date    varchar(10)
, req_no       varchar(20)
);


comment on table TMP_KFA_02_TIME_UNIQ_I is 'KFA_관광지 시간대 유니크 현지인';
comment on column TMP_KFA_02_TIME_UNIQ_I.poi_id        is 'POI_ID';
comment on column TMP_KFA_02_TIME_UNIQ_I.poi_nm        is 'POI명';
comment on column TMP_KFA_02_TIME_UNIQ_I.timezn_div_cd is '시간대코드';
comment on column TMP_KFA_02_TIME_UNIQ_I.sex_div_cd    is '성별코드';
comment on column TMP_KFA_02_TIME_UNIQ_I.age_div_cd    is '연령코드';
comment on column TMP_KFA_02_TIME_UNIQ_I.cnt           is '건수';
comment on column TMP_KFA_02_TIME_UNIQ_I.info_div_cd   is 'info_div_cd  ';
comment on column TMP_KFA_02_TIME_UNIQ_I.base_date     is '기준 일자';
comment on column TMP_KFA_02_TIME_UNIQ_I.req_no        is 'req_no       ';
comment on table TMP_KFA_02_TIME_UNIQ_O is 'KFA_관광지 시간대 유니크 외지인';
comment on column TMP_KFA_02_TIME_UNIQ_O.poi_id        is 'POI_ID';
comment on column TMP_KFA_02_TIME_UNIQ_O.poi_nm        is 'POI명';
comment on column TMP_KFA_02_TIME_UNIQ_O.timezn_div_cd is '시간대코드';
comment on column TMP_KFA_02_TIME_UNIQ_O.sex_div_cd    is '성별코드';
comment on column TMP_KFA_02_TIME_UNIQ_O.age_div_cd    is '연령코드';
comment on column TMP_KFA_02_TIME_UNIQ_O.cnt           is '건수';
comment on column TMP_KFA_02_TIME_UNIQ_O.info_div_cd   is 'info_div_cd  ';
comment on column TMP_KFA_02_TIME_UNIQ_O.base_date     is '기준 일자';
comment on column TMP_KFA_02_TIME_UNIQ_O.req_no        is 'req_no       ';
comment on table TMP_KFA_02_TIME_UNIQ_F is 'KFA_관광지 시간대 유니크 외국인';
comment on column TMP_KFA_02_TIME_UNIQ_F.poi_id        is 'POI_ID';
comment on column TMP_KFA_02_TIME_UNIQ_F.poi_nm        is 'POI명';
comment on column TMP_KFA_02_TIME_UNIQ_F.timezn_div_cd is '시간대코드';
comment on column TMP_KFA_02_TIME_UNIQ_F.cntry_cd is '국가코드';
comment on column TMP_KFA_02_TIME_UNIQ_F.sido_cd is '시도코드';
comment on column TMP_KFA_02_TIME_UNIQ_F.sido_nm is '시도명';
comment on column TMP_KFA_02_TIME_UNIQ_F.cnt           is '건수';
comment on column TMP_KFA_02_TIME_UNIQ_F.info_div_cd   is 'info_div_cd  ';
comment on column TMP_KFA_02_TIME_UNIQ_F.base_date     is '기준 일자';
comment on column TMP_KFA_02_TIME_UNIQ_F.req_no        is 'req_no       ';
comment on table TMP_KFA_02_INGRS is 'KFA_관광지 시간대별 거주지 기반 유입 외지인';
comment on column TMP_KFA_02_INGRS.poi_id        is 'POI_ID';
comment on column TMP_KFA_02_INGRS.poi_nm        is 'POI명';
comment on column TMP_KFA_02_INGRS.timezn_div_cd is '시간대코드';
comment on column TMP_KFA_02_INGRS.sido_nm is '시도명';
comment on column TMP_KFA_02_INGRS.sgg_cd is '시군구코드';
comment on column TMP_KFA_02_INGRS.sgg_nm is '시군구명';
comment on column TMP_KFA_02_INGRS.cnt           is '건수';
comment on column TMP_KFA_02_INGRS.base_date     is '기준 일자';
comment on column TMP_KFA_02_INGRS.req_no        is 'req_no       ';

