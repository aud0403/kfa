
		       
select * from ( 		       
select DISTINCT to_char(current_date, 'YYYYMMDD') as  ldadng_de
     ,  stdr_year
     , player_sexdstn_cde
     , '15'as player_agrde_cde
     , '03' as player_se_cde
     , cnvc_wdr_cde
     , count(*) OVER (PARTITION BY stdr_year, player_sexdstn_cde, cnvc_wdr_cde) as wdr_cnvc_co
     , count(*) OVER (PARTITION BY stdr_year, player_sexdstn_cde) as tot_cnvc_co
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  from (
select stdr_year 
     , player_id 
     , player_sexdstn_cde 
     , cnvc_wdr_cde  
     , team_regist_de
     , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de
  from (select stdr_year 
		     , player_id 
		     , player_sexdstn_cde 
		     , case when psitn_team_area_cde in ('SE','IC') then '1'
                    when psitn_team_area_cde in ('KK') then '2'
                    when psitn_team_area_cde in ('TJ','KW','CB','CN','SJ') then '3'
                    when psitn_team_area_cde in ('BS','TK','KB','KN','US') then '4'
                    when psitn_team_area_cde in ('KJ','JN','JB','CJ' ) then '5'
                    else  '99' end  as cnvc_wdr_cde
		     , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
		     , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
		  from kfadm.wf_player_sttus 
		  where psitn_team_grad_cde IN ('MS','U5','FU5','FMS')
		    and confm_step_cde = '2'
		  group by stdr_year 
		     , player_id 
		     , player_sexdstn_cde 
		     , case when psitn_team_area_cde in ('SE','IC') then '1'
                    when psitn_team_area_cde in ('KK') then '2'
                    when psitn_team_area_cde in ('TJ','KW','CB','CN','SJ') then '3'
                    when psitn_team_area_cde in ('BS','TK','KB','KN','US') then '4'
                    when psitn_team_area_cde in ('KJ','JN','JB','CJ' ) then '5'
                    else  '99' end 
				) a 
		 where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0
                    ) B 
union all
select distinct to_char(current_date, 'YYYYMMDD') as  ldadng_de
     , a.stdr_year
     , a.player_sexdstn_cde
     , '15'as player_agrde_cde
     , '01' as player_se_cde
     , cnvc_wdr_cde
     , sum(b.row_num) over(PARTITION BY a.stdr_year, cnvc_wdr_cde, a.player_sexdstn_cde) AS wdr_cnvc_co
     , sum(b.row_num) over(PARTITION BY a.stdr_year, a.player_sexdstn_cde) AS tot_cnvc_co
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  from ( select stdr_year 
		      , player_id 
		      , player_sexdstn_cde 
		      , team_regist_de
		      , case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end team_secsn_de 
		   from ( select stdr_year 
					   , player_id 
					   , player_sexdstn_cde
					   , MAX (cast (replace (team_regist_de,'^','0') as numeric) ) as team_regist_de
					   , MAX (cast (replace (team_secsn_de ,'^','0') as numeric) ) as team_secsn_de
			        from kfadm.wf_player_sttus
				   where psitn_team_grad_cde IN ('MS','U5','FU5','FMS')
				     and confm_step_cde = '2'
				   group by stdr_year 
					   , player_id 
					   , player_sexdstn_cde
		        ) a 
         where case when team_secsn_de <= team_regist_de then 0 else  team_secsn_de end  = 0
		) a 
	   left outer join 
	   ( select stdr_year 
		      , player_id 
		      , cnvc_wdr_cde
		      , player_sexdstn_cde
		      , row_num
		   from (select stdr_year 
			          , player_id 
			          , case when cnvc_wdr_cde in ('1','2','3','4','5') then cnvc_wdr_cde else '6'end cnvc_wdr_cde
			          , player_sexdstn_cde
			          , DENSE_RANK() OVER (PARTITION BY player_id ORDER BY player_traing_begin_dat desc) row_num
				   from kfadm.wf_golden_age_player ) a
  		where row_num =1 
  		) b
	 on a.player_id = b.player_id
	and a.stdr_year= b.stdr_year
	) a
	where wdr_cnvc_co is not null
	  and  a.stdr_year BETWEEN TO_CHAR(CURRENT_TIMESTAMP - INTERVAL '4 YEAR', 'YYYY') AND TO_CHAR(CURRENT_TIMESTAMP,'YYYY')
	 -- and cnvc_wdr_cde not in ( '^', 'XXX', '6')

;