drop view 시간대별외지인관광객;

create view 시간대별외지인관광객
as
select b.de_nm           as  일자
     , a.tmzon_cde       as  시간대코드
     , c.tmzon_nm        as  시간대명
     , a.signgu_cde      as  시군구코드
     , d.signgu_nm       as  시군구명
     , a.ctprvn_cde      as  시도코드
     , f.ctprvn_nm       as  시도명
     , e.poi_nm          as  POI명
     , a.outsdr_rate     as  외지인비율
  from wf_tmzon_outsdr_turist a
       left outer join
       wd_de b
    on a.stdr_de = b.de 
       left outer join 
       wd_kt_tmzon c 
    on a.tmzon_cde = c.tmzon_cde 
       left outer join 
       wd_kt_signgu d
    on a.signgu_cde = d.signgu_cde
       left outer join 
       wd_kt_signgu f
    on a.ctprvn_cde = f.ctprvn_cde
       left outer join 
       wd_kt_poi e 
    on a.poi_nm = e.poi_cde 
  ;
  
comment on view kfadm.시간대별외지인관광객 is '시간대별외지인관광객'; 
comment on column kfadm.시간대별외지인관광객.일자 is '일자';
comment on column kfadm.시간대별외지인관광객.시간대코드 is '시간대코드';
comment on column kfadm.시간대별외지인관광객.시군구코드 is '시군구코드';
comment on column kfadm.시간대별외지인관광객.시군구명 is '시군구명';
comment on column kfadm.시간대별외지인관광객.시간대명 is '시간대명';
comment on column kfadm.시간대별외지인관광객.시도코드 is '시도코드';
comment on column kfadm.시간대별외지인관광객.시도명 is '시도명';
comment on column kfadm.시간대별외지인관광객.POI명 is 'POI명';
comment on column kfadm.시간대별외지인관광객.외지인비율 is '외지인비율';
