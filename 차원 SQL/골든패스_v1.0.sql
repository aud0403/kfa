-------------------------wd_goldenpass_round
select id  as round_no
     , id||'_'||to_char(created,'YYYY-MM-DD') ||'_'||"number"||'차시'  as round_nm
     , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
  from round_round ;


-----------------------wd_goldenpass_age_group

 
 select id  as age_group_cde
      , name as age_group_nm
      , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
   from data_agegroup
   ;
 
  ----------------------wd_goldenpass_player

  select * from player_player;
  
   select id as player_id
         , name as player_nm
         , (ROW_NUMBER() over(ORDER BY id )) AS sort_ordr
     from player_player; 

    
select player_id  
     , player_nm
     , brthdy
     , CASE WHEN row_num > 1 THEN hmnm_se_nm||row_num ELSE hmnm_se_nm END AS hmnm_se_nm
     , sort_ordr
   from(      
		select player_id
		     , player_nm
		     , brthdy
		     , hmnm_se_nm
		     , DENSE_RANK() OVER (PARTITION BY hmnm_se_nm ORDER BY player_id  ) AS row_num
		     , sort_ordr
		  from ( 
				 select player_id 
					 , player_nm
					 , brthdy
					 --, player_nm||'/'||brthdy as hmnm_se_nm
					 , concat(player_nm,' ',substring(brthdy,1,4),'-',substring(brthdy,5,2),'-',substring(brthdy,7,2))||
					     CASE WHEN SUBSTRING(split_part(kfa_id ::varchar, '-', 2),1,1) in ('1', '3', '5', '6','9')
				            THEN '(남)'
				            WHEN SUBSTRING(split_part(kfa_id ::varchar, '-', 2),1,1) in ('2', '4', '6', '8','0')
				            then case when SUBSTRING(split_part(kfa_id ::varchar, '-', 1),1,6) = '000000' 
				                      THEN '(미입력)' else '(여)' end
				            ELSE '(미입력)' end 
					 as hmnm_se_nm
				     , (ROW_NUMBER() over(ORDER BY substring(player_nm,1,1), substring(player_nm,2,1),substring(player_nm,3,1),player_id )) AS sort_ordr 
				 from (select player_id
						     , player_nm
						     , kfa_id
						     , case when kfa_id ~ '^\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])-'
						            then case
							        when SUBSTRING(split_part(kfa_id ::varchar, '-', 2),1,1) in ('1', '2', '5', '6')  then '19'||split_part(kfa_id ::varchar, '-', 1) 
								    when SUBSTRING(split_part(kfa_id ::varchar, '-', 2),1,1) in ('3', '4', '7', '8')  then '20'||split_part(kfa_id ::varchar, '-', 1)
								    else '19'||split_part(kfa_id ::varchar, '-', 1)
								    end 
				               else '99991231' end brthdy
					from (select * from (select player_id
										      , player_nm
										      , kfa_id
										      , ROW_NUM 
										      , ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY ROW_NUM DESC ) as index
										  from (SELECT player_id
													 , player_nm
													 , kfa_id
													 , ROW_NUMBER() OVER( PARTITION BY player_id ORDER BY stdr_year ) AS ROW_NUM
												 from (select id  as player_id 
											   			    , "name" as player_nm
											   			    , kfa_id
											  			    , "modified" as stdr_year
											  			 from player_player) A 
												group by player_id, player_nm, stdr_year, kfa_id) B ) C
								where index = 1 ) D) a
								
				)a )b
;   
    
 select * from player_player;
    
    
    
    -----------------------wd_goldenpass_team
 
select team_id
     , team_nm
     , (ROW_NUMBER() over(ORDER BY team_id )) AS sort_ordr
  from ( 
	    select distinct  team as team_id
	         , team  as team_nm
	      from data_record
       ) a
     ;
    


