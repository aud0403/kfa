drop view 리그참가비현황;

create view 리그참가비현황
as 
select b.stdr_year_nm           as   연도
      , a.cmpet_no               as   대회코드
      , d.cmpet_nm               as   대회번호
      , a.item_cde               as   종목코드
      , e.item_nm                as   종목번호
      , a.cmpet_class_cde        as   대회클래스코드
      , f.cmpet_class_nm         as   대회클래스명
      , a.league_cmpet_se_cde    as   리그대회구분코드
      , g.league_cmpet_se_nm     as   리그대회구분명
      , a.cmpet_knd_cde          as   대회종류코드
      , h.cmpet_knd_nm           as   대회종류명
      , a.store_id               as   상점코드
      , i.store_nm               as   상점명
      , a.pay_mth_cde            as   결제방법코드
      , j.pay_mth_nm             as   결제방법명
      , a.pay_compt_at           as   결제완료여부코드
      , k.at_nm                  as   결제완료여부명
      , l.de_nm                  as   신청일자
      , m.de_nm                  as   결제일자
      , a.team_id                as   팀아이디
      , n.team_nm                as   팀명
      , a.pay_amount             as   결제금액
      , a.pay_co                 as   결제수
   from wf_league_partcpt_ct_sttus a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year 	    left outer join 
	    wd_cmpet d 
	 ON a.cmpet_no = d.cmpet_no 	    left outer join 
	    wd_item e 
	 ON a.item_cde = e.item_cde 	    left outer join 
	    wd_cmpet_class f 
	 ON a.cmpet_class_cde = f.cmpet_class_cde 	    left outer join 
	    wd_league_cmpet_se g 
	 ON a.league_cmpet_se_cde = g.league_cmpet_se_cde 	    left outer join 
	    wd_cmpet_knd h 
	 ON a.cmpet_knd_cde = h.cmpet_knd_cde 	    left outer join 
	    wd_store i 
	 ON a.store_id = i.store_id 	    left outer join 
	    wd_pay_mth j 
	 ON a.pay_mth_cde = j.pay_mth_cde 	    left outer join 
	    wd_pay_compt k 
	 ON a.pay_compt_at = k.pay_compt_at 	    left outer join 
	    wd_de l 
	 ON a.apply_de = l.de 	    left outer join 
	    wd_de m 
	 ON a.pay_de = m.de 	    left outer join 
	    wd_team n 
	 ON a.team_id = n.team_id 
  ;
  
comment on view kfadm.리그참가비현황 is '리그참가비현황';
comment on column kfadm.리그참가비현황.연도 is '연도';
comment on column kfadm.리그참가비현황.대회코드 is '대회코드';
comment on column kfadm.리그참가비현황.대회번호 is '대회번호';
comment on column kfadm.리그참가비현황.종목코드 is '종목코드';
comment on column kfadm.리그참가비현황.종목번호 is '종목번호';
comment on column kfadm.리그참가비현황.대회클래스코드 is '대회클래스코드';
comment on column kfadm.리그참가비현황.대회클래스명 is '대회클래스명';
comment on column kfadm.리그참가비현황.리그대회구분코드 is '리그대회구분코드';
comment on column kfadm.리그참가비현황.리그대회구분명 is '리그대회구분명';
comment on column kfadm.리그참가비현황.대회종류코드 is '대회종류코드';
comment on column kfadm.리그참가비현황.대회종류명 is '대회종류명';
comment on column kfadm.리그참가비현황.상점코드 is '상점코드';
comment on column kfadm.리그참가비현황.상점명 is '상점명';
comment on column kfadm.리그참가비현황.결제방법코드 is '결제방법코드';
comment on column kfadm.리그참가비현황.결제방법명 is '결제방법명';
comment on column kfadm.리그참가비현황.결제완료여부코드 is '결제완료여부코드';
comment on column kfadm.리그참가비현황.결제완료여부명 is '결제완료여부명';
comment on column kfadm.리그참가비현황.신청일자 is '신청일자';
comment on column kfadm.리그참가비현황.결제일자 is '결제일자';
comment on column kfadm.리그참가비현황.팀아이디 is '팀아이디';
comment on column kfadm.리그참가비현황.팀명 is '팀명';
comment on column kfadm.리그참가비현황.결제금액 is '결제금액';
comment on column kfadm.리그참가비현황.결제수 is '결제수';
