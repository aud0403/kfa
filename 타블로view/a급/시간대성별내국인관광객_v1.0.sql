drop view 시간대성별내국인관광객;

create view 시간대성별내국인관광객
as 
 select b.de_nm          as 일자
      , a.tmzon_cde      as 시간대코드
      , c.tmzon_nm       as 시간대명
      , e.sexdstn_nm     as 성별명
      , f.poi_nm         as POI명
      , a.local_co       as 현지인건수
      , a.outsdr_co      as 외지인건수
   from wf_tmzon_sexdstn_native_turist  a
        left outer join
        wd_de b 
     on a.stdr_de  = b.de  
        left outer join 
        wd_kt_tmzon  c 
     on a.tmzon_cde = c.tmzon_cde 
        left outer join 
        wd_sexdstn e 
     on a.sexdstn_cde = e.sexdstn_cde 
        left outer join 
        wd_kt_poi f 
     on a.poi_nm = f.poi_cde 
   ;
   
  comment on view kfadm.시간대성별내국인관광객 is '시간대성별내국인관광객';
  comment on column kfadm.시간대성별내국인관광객.일자 is '일자';      
  comment on column kfadm.시간대성별내국인관광객.시간대코드 is '시간대코드';
  comment on column kfadm.시간대성별내국인관광객.시간대명 is '시간대명';  
  comment on column kfadm.시간대성별내국인관광객.성별명 is '성별명';    
  comment on column kfadm.시간대성별내국인관광객.POI명 is 'POI명';  
  comment on column kfadm.시간대성별내국인관광객.현지인건수 is '현지인건수';
  comment on column kfadm.시간대성별내국인관광객.외지인건수 is '외지인건수';
                                                       