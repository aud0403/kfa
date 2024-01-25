drop view 국가대표팀 ;

create  view 국가대표팀
as 
select b.stdr_year_nm          as    기준연도
      , a.cnvc_no      as	 소집번호
      , c.nl_team_cnvc_nm      as    소집명
      , a.cmpet_no     as    대회번호
      , d.nl_team_cmpet_nm     as    대회명
      , a.game_no      as    경기번호
      , e.nl_team_game_nm      as    경기명
      , f.de_nm                as    경기일자
      , g.at_nm                as    A매치여부
      , a.nl_team_grad_cde     as    대표팀등급코드
      , h.nl_team_grad_nm      as    대표팀등급명
      , i.de_nm                as    대표팀소집시작일
      , j.de_nm                as    대표팀소집종료일
      , a.mbr_id               as    멤버아이디
      , k.mbr_nm               as    멤버명
      , concat(substring(k.brthdy,1,4),'.',substring(k.brthdy,5,2),'.',substring(k.brthdy,7,2)) as    생년월일
      , k.hmnm_se_nm           as    멤버동명구분명
      , a.mbr_mapng_id         as    멤버매핑아이디
      , r.mbr_nm               as    멤버매핑명
      , r.brthdy               as    멤버매핑생년월일
      , r.hmnm_se_nm           as    멤버매핑동명구분명
      , a.mbr_se_cde           as    멤버구분코드
      , m.mbr_se_nm            as    멤버구분명
      , n.de_nm                as    멤버소집시작일
      , o.de_nm                as    멤버소집종료일
      , p.home_away_se_nm      as    홈원정구분명
      , q.nation_cde           as    상대국가코드
      , q.nation_nm            as    상대국가명
      , a.win_co               as    승수
      , a.tie_co               as    무승부수
      , a.lose_co              as    패수
      , a.score                as    득점
      , a.conceded_goal        as    실점
      , a.game_co              as    경기수
   from wf_nl_team a
        left outer join 
	    wd_stdr_year b 
	 ON a.stdr_year = b.stdr_year  	    left outer join 
	    wd_nl_team_cnvc c 
	 ON a.cnvc_no = c.nl_team_cnvc_no  	    left outer join 
	    wd_nl_team_cmpet d 
	 ON a.cmpet_no = d.nl_team_cmpet_no  	    left outer join 
	    wd_nl_team_game e 
	 ON a.game_no = e.nl_team_game_no  	    left outer join 
	    wd_de f 
	 ON a.game_de = f.de  	    left outer join 
	    wd_amatch g 
	 ON a.amatch_at = g.amatch_at  	    left outer join 
	    wd_nl_team_grad h 
	 ON a.nl_team_grad_cde = h.nl_team_grad_cde  	    left outer join 
	    wd_de i 
	 ON a.nl_team_cnvc_begin_dat = i.de  	    left outer join 
	    wd_de j 
	 ON a.nl_team_cnvc_end_dat = j.de  	    left outer join 
	    wd_mbr k 
	 ON a.mbr_id = k.mbr_id  
	    left outer join 
	    wd_nl_team_mbr r 
	 on a.mbr_mapng_id = r.mbr_id 	    left outer join 
	    wd_nl_team_mbr_se m 
	 ON a.mbr_se_cde = m.mbr_se_cde  	    left outer join 
	    wd_de n 
	 ON a.mbr_cnvc_begin_dat = n.de  	    left outer join 
	    wd_de o 
	 ON a.mbr_cnvc_end_dat = o.de  	    left outer join 
	    wd_home_away_se p 
	 ON a.home_away_se_cde = p.home_away_se_cde  	    left outer join 
	    wd_nation q 
	 ON a.oppnt_nation_cde = q.nation_cde     
  ;
  
comment on view kfadm.국가대표팀 is '국가대표팀';
comment on column kfadm.국가대표팀.기준연도 is '기준연도';
comment on column kfadm.국가대표팀.소집번호 is '소집번호';
comment on column kfadm.국가대표팀.소집명 is '소집명';
comment on column kfadm.국가대표팀.대회번호 is '대회번호';
comment on column kfadm.국가대표팀.대회명 is '대회명';
comment on column kfadm.국가대표팀.경기번호 is '경기번호';
comment on column kfadm.국가대표팀.경기명 is '경기명';
comment on column kfadm.국가대표팀.경기일자 is '경기일자';
comment on column kfadm.국가대표팀.A매치여부 is 'A매치여부';
comment on column kfadm.국가대표팀.대표팀등급코드 is '대표팀등급코드';
comment on column kfadm.국가대표팀.대표팀등급명 is '대표팀등급명';
comment on column kfadm.국가대표팀.대표팀소집시작일 is '대표팀소집시작일';
comment on column kfadm.국가대표팀.대표팀소집종료일 is '대표팀소집종료일';
comment on column kfadm.국가대표팀.멤버아이디 is '멤버아이디';
comment on column kfadm.국가대표팀.멤버명 is '멤버명';
comment on column kfadm.국가대표팀.생년월일 is '생년월일';
comment on column kfadm.국가대표팀.멤버동명구분명 is '멤버동명구분명';
comment on column kfadm.국가대표팀.멤버매핑아이디 is '멤버매핑아이디';
comment on column kfadm.국가대표팀.멤버매핑명 is '멤버매핑명';
comment on column kfadm.국가대표팀.멤버매핑생년월일 is '멤버매핑생년월일';
comment on column kfadm.국가대표팀.멤버매핑동명구분명 is '멤버매핑동명구분명';
comment on column kfadm.국가대표팀.멤버구분코드 is '멤버구분코드';
comment on column kfadm.국가대표팀.멤버구분명 is '멤버구분명';
comment on column kfadm.국가대표팀.멤버소집시작일 is '멤버소집시작일';
comment on column kfadm.국가대표팀.멤버소집종료일 is '멤버소집종료일';
comment on column kfadm.국가대표팀.홈원정구분명 is '홈원정구분명';
comment on column kfadm.국가대표팀.상대국가코드 is '상대국가코드';
comment on column kfadm.국가대표팀.상대국가명 is '상대국가명';
comment on column kfadm.국가대표팀.승수 is '승수';
comment on column kfadm.국가대표팀.무승부수 is '무승부수';
comment on column kfadm.국가대표팀.패수 is '패수';
comment on column kfadm.국가대표팀.득점 is '득점';
comment on column kfadm.국가대표팀.실점 is '실점';
comment on column kfadm.국가대표팀.경기수 is '경기수';

