SELECT CASE WHEN mps.season_group_name IS NULL THEN '^' ELSE mps.season_group_name END AS stdr_year
     , CASE WHEN mps.match_id IS NULL THEN -1 ELSE mps.match_id END AS game_no
     , CASE WHEN mps.team_id IS NULL THEN -1 ELSE mps.team_id END AS team_no
     , CASE WHEN mps.player_id IS NULL THEN -1 ELSE mps.player_id END AS player_no
     , CASE WHEN p.external_id  IS NULL THEN '^' ELSE p.external_id  END AS kfa_player_id     
     , CASE WHEN p.external_id  IS NULL THEN '^' ELSE fn_sexdstn(p.external_id) END AS player_sexdstn_cde
     , CASE WHEN fn_valid_inspct(p.external_id) = 'P' AND p.season_group_name  IS NOT NULL THEN fn_agrde(p.season_group_name , p.external_id)
            WHEN fn_valid_inspct(p.external_id) = 'E' THEN 'E'
            WHEN fn_valid_inspct(p.external_id) = 'N' THEN '^'
            ELSE '^'
        END AS player_agrde_cde
     , CASE WHEN tti.team_age_cde  IS NULL THEN '^' ELSE tti.team_age_cde END AS team_age_cde
     , CASE WHEN mps.goal IS NULL THEN 0 ELSE mps.goal END AS goal
     , CASE WHEN mps.total_shot IS NULL THEN 0 ELSE mps.total_shot END AS tot_shot
     , CASE WHEN mps.shot_on_target IS NULL THEN 0 ELSE mps.shot_on_target END AS shot_on_target
     , CASE WHEN mps.shot_off_target IS NULL THEN 0 ELSE mps.shot_off_target END AS shot_off_target
     , CASE WHEN mps.shot_blocked IS NULL THEN 0 ELSE mps.shot_blocked END AS shot_blocked
     , CASE WHEN mps.shot_in_pa IS NULL THEN 0 ELSE mps.shot_in_pa END AS shot_in_pa
     , CASE WHEN mps.shot_outside_of_pa IS NULL THEN 0 ELSE mps.shot_outside_of_pa END AS shot_outside_of_pa
     , CASE WHEN mps.free_kick IS NULL THEN 0 ELSE mps.free_kick END AS free_kick
     , CASE WHEN mps.corner_kick IS NULL THEN 0 ELSE mps.corner_kick END AS corner_kick
     , CASE WHEN mps.throw_in IS NULL THEN 0 ELSE mps.throw_in END AS throw_in
     , CASE WHEN mps.pass IS NULL THEN 0 ELSE mps.pass END AS pass
     , CASE WHEN mps.pass_succeeded IS NULL THEN 0 ELSE mps.pass_succeeded END AS pass_succes
     , CASE WHEN mps.assist IS NULL THEN 0 ELSE mps.assist END AS assist
     , CASE WHEN mps.key_pass IS NULL THEN 0 ELSE mps.key_pass END AS key_pass
     , CASE WHEN mps.control_under_pressure IS NULL THEN 0 ELSE mps.control_under_pressure END AS control_under_pressure
     , CASE WHEN mps."CROSS" IS NULL THEN 0 ELSE mps."CROSS" END AS "CROSS"
     , CASE WHEN mps.cross_succeeded IS NULL THEN 0 ELSE mps.cross_succeeded END AS cross_succes
     , CASE WHEN mps.final_third_area_pass IS NULL THEN 0 ELSE mps.final_third_area_pass END AS final_third_area_pass
     , CASE WHEN mps.final_third_area_pass_succeeded IS NULL THEN 0 ELSE mps.final_third_area_pass_succeeded END AS final_third_area_pass_succes
     , CASE WHEN mps.middle_area_pass IS NULL THEN 0 ELSE mps.middle_area_pass END AS middle_area_pass
     , CASE WHEN mps.middle_area_pass_succeeded IS NULL THEN 0 ELSE mps.middle_area_pass_succeeded END AS middle_area_pass_succes
     , CASE WHEN mps.defensive_area_pass IS NULL THEN 0 ELSE mps.defensive_area_pass END AS defensive_area_pass
     , CASE WHEN mps.defensive_area_pass_succeeded IS NULL THEN 0 ELSE mps.defensive_area_pass_succeeded END AS defensive_area_pass_succes
     , CASE WHEN mps.short_pass IS NULL THEN 0 ELSE mps.short_pass END AS short_pass
     , CASE WHEN mps.short_pass_succeeded IS NULL THEN 0 ELSE mps.short_pass_succeeded END AS short_pass_succes
     , CASE WHEN mps.medium_range_pass IS NULL THEN 0 ELSE mps.medium_range_pass END AS medium_pass
     , CASE WHEN mps.medium_range_pass_succeeded IS NULL THEN 0 ELSE mps.medium_range_pass_succeeded END AS medium_pass_succes
     , CASE WHEN mps.long_pass IS NULL THEN 0 ELSE mps.long_pass END AS long_pass
     , CASE WHEN mps.long_pass_succeeded IS NULL THEN 0 ELSE mps.long_pass_succeeded END AS long_pass_succes
     , CASE WHEN mps.forward_pass IS NULL THEN 0 ELSE mps.forward_pass END AS forward_pass
     , CASE WHEN mps.forward_pass_succeeded IS NULL THEN 0 ELSE mps.forward_pass_succeeded END AS forward_pass_succes
     , CASE WHEN mps.backward_pass IS NULL THEN 0 ELSE mps.backward_pass END AS backward_pass
     , CASE WHEN mps.backward_pass_succeeded IS NULL THEN 0 ELSE mps.backward_pass_succeeded END AS backward_pass_succes
     , CASE WHEN mps.sideways_pass IS NULL THEN 0 ELSE mps.sideways_pass END AS sideways_pass
     , CASE WHEN mps.sideways_pass_succeeded IS NULL THEN 0 ELSE mps.sideways_pass_succeeded END AS sideways_pass_succes
     , CASE WHEN mps.tackle IS NULL THEN 0 ELSE mps.tackle END AS tackle
     , CASE WHEN mps.tackle_succeeded IS NULL THEN 0 ELSE mps.tackle_succeeded END AS tackle_succes
     , CASE WHEN mps.aerial_duel IS NULL THEN 0 ELSE mps.aerial_duel END AS aerial_duel
     , CASE WHEN mps.aerial_duel_succeeded IS NULL THEN 0 ELSE mps.aerial_duel_succeeded END AS aerial_duel_succes
     , CASE WHEN mps.ground_duel IS NULL THEN 0 ELSE mps.ground_duel END AS ground_duel
     , CASE WHEN mps.ground_duel_succeeded IS NULL THEN 0 ELSE mps.ground_duel_succeeded END AS ground_duel_succes
     , CASE WHEN mps.intercept IS NULL THEN 0 ELSE mps.intercept END AS intercept
     , CASE WHEN mps.clearance IS NULL THEN 0 ELSE mps.clearance END AS clearance
     , CASE WHEN mps."recovery" IS NULL THEN 0 ELSE mps."recovery" END AS "recovery"
     , CASE WHEN mps.intervention IS NULL THEN 0 ELSE mps.intervention END AS intervention
     , CASE WHEN mps.take_on IS NULL THEN 0 ELSE mps.take_on END AS take_on
     , CASE WHEN mps.take_on_succeeded IS NULL THEN 0 ELSE mps.take_on_succeeded END AS take_on_succes
     , CASE WHEN mps.mistake IS NULL THEN 0 ELSE mps.mistake END AS mistake
     , CASE WHEN mps.block IS NULL THEN 0 ELSE mps.block END AS block
     , CASE WHEN mps.foul IS NULL THEN 0 ELSE mps.foul END AS foul
     , CASE WHEN mps.foul_won IS NULL THEN 0 ELSE mps.foul_won END AS foul_won
     , CASE WHEN mps.offside IS NULL THEN 0 ELSE mps.offside END AS offside
     , CASE WHEN mps.yellow_card IS NULL THEN 0 ELSE mps.yellow_card END AS yellow_card
     , CASE WHEN mps.red_card IS NULL THEN 0 ELSE mps.red_card END AS red_card
     , CASE WHEN mps.own_goal IS NULL THEN 0 ELSE mps.own_goal END AS own_goal
     , CASE WHEN mps.goal_conceded IS NULL THEN 0 ELSE mps.goal_conceded END AS conceded_goal
     , CASE WHEN mps.goal_kick IS NULL THEN 0 ELSE mps.goal_kick END AS goal_kick
     , CASE WHEN mps.goal_kick_succeeded IS NULL THEN 0 ELSE mps.goal_kick_succeeded END AS goal_kick_succes
     , CASE WHEN mps.aerial_clearance IS NULL THEN 0 ELSE mps.aerial_clearance END AS aerial_clearance
     , CASE WHEN mps.aerial_clearance_succeeded IS NULL THEN 0 ELSE mps.aerial_clearance_succeeded END AS aerial_clearance_succes
     , CASE WHEN mps.save_by_catching IS NULL THEN 0 ELSE mps.save_by_catching END AS save_by_catching
     , CASE WHEN mps.save_by_punching IS NULL THEN 0 ELSE mps.save_by_punching END AS save_by_punching
     , CASE WHEN mps.rating IS NULL THEN 0 ELSE TRUNC(mps.rating::NUMERIC, 2) END AS game_gpa
     , CASE WHEN mps.play_time IS NULL THEN 0 ELSE mps.play_time / 60000 END AS playng_time
     , 1 AS game_co
  FROM matches_player_stats mps
       left outer join 
       players p 
    on mps.player_id  = p.id 
       left outer join 
       joinkfa.t_player_info tp
    on p.external_id  = tp.player_id  
   and p.season_group_name = tp.stdr_year
       left outer join 
       joinkfa.t_team_info tti 
    on tp.psitn_team_id = tti.team_id 
   and tp.stdr_year = tti.stdr_year 
 WHERE mps.team_id IS NOT null
 GROUP BY CASE WHEN mps.season_group_name IS NULL THEN '^' ELSE mps.season_group_name END
     , CASE WHEN mps.match_id IS NULL THEN -1 ELSE mps.match_id END
     , CASE WHEN mps.team_id IS NULL THEN -1 ELSE mps.team_id END
     , CASE WHEN mps.player_id IS NULL THEN -1 ELSE mps.player_id end
     , CASE WHEN p.external_id  IS NULL THEN '^' ELSE p.external_id  end
     , CASE WHEN p.external_id  IS NULL THEN '^' ELSE fn_sexdstn(p.external_id) END 
     , CASE WHEN fn_valid_inspct(p.external_id) = 'P' AND p.season_group_name  IS NOT NULL THEN fn_agrde(p.season_group_name , p.external_id)
            WHEN fn_valid_inspct(p.external_id) = 'E' THEN 'E'
            WHEN fn_valid_inspct(p.external_id) = 'N' THEN '^'
            ELSE '^'
        END 
     , CASE WHEN tti.team_age_cde  IS NULL THEN '^' ELSE tti.team_age_cde END
     , CASE WHEN mps.goal IS NULL THEN 0 ELSE mps.goal END
     , CASE WHEN mps.total_shot IS NULL THEN 0 ELSE mps.total_shot END
     , CASE WHEN mps.shot_on_target IS NULL THEN 0 ELSE mps.shot_on_target END
     , CASE WHEN mps.shot_off_target IS NULL THEN 0 ELSE mps.shot_off_target END
     , CASE WHEN mps.shot_blocked IS NULL THEN 0 ELSE mps.shot_blocked END
     , CASE WHEN mps.shot_in_pa IS NULL THEN 0 ELSE mps.shot_in_pa END
     , CASE WHEN mps.shot_outside_of_pa IS NULL THEN 0 ELSE mps.shot_outside_of_pa END
     , CASE WHEN mps.free_kick IS NULL THEN 0 ELSE mps.free_kick END
     , CASE WHEN mps.corner_kick IS NULL THEN 0 ELSE mps.corner_kick END
     , CASE WHEN mps.throw_in IS NULL THEN 0 ELSE mps.throw_in END
     , CASE WHEN mps.pass IS NULL THEN 0 ELSE mps.pass END
     , CASE WHEN mps.pass_succeeded IS NULL THEN 0 ELSE mps.pass_succeeded END
     , CASE WHEN mps.assist IS NULL THEN 0 ELSE mps.assist END
     , CASE WHEN mps.key_pass IS NULL THEN 0 ELSE mps.key_pass END
     , CASE WHEN mps.control_under_pressure IS NULL THEN 0 ELSE mps.control_under_pressure END
     , CASE WHEN mps."CROSS" IS NULL THEN 0 ELSE mps."CROSS" END
     , CASE WHEN mps.cross_succeeded IS NULL THEN 0 ELSE mps.cross_succeeded END
     , CASE WHEN mps.final_third_area_pass IS NULL THEN 0 ELSE mps.final_third_area_pass END
     , CASE WHEN mps.final_third_area_pass_succeeded IS NULL THEN 0 ELSE mps.final_third_area_pass_succeeded END
     , CASE WHEN mps.middle_area_pass IS NULL THEN 0 ELSE mps.middle_area_pass END
     , CASE WHEN mps.middle_area_pass_succeeded IS NULL THEN 0 ELSE mps.middle_area_pass_succeeded END
     , CASE WHEN mps.defensive_area_pass IS NULL THEN 0 ELSE mps.defensive_area_pass END
     , CASE WHEN mps.defensive_area_pass_succeeded IS NULL THEN 0 ELSE mps.defensive_area_pass_succeeded END
     , CASE WHEN mps.short_pass IS NULL THEN 0 ELSE mps.short_pass END
     , CASE WHEN mps.short_pass_succeeded IS NULL THEN 0 ELSE mps.short_pass_succeeded END
     , CASE WHEN mps.medium_range_pass IS NULL THEN 0 ELSE mps.medium_range_pass END
     , CASE WHEN mps.medium_range_pass_succeeded IS NULL THEN 0 ELSE mps.medium_range_pass_succeeded END
     , CASE WHEN mps.long_pass IS NULL THEN 0 ELSE mps.long_pass END
     , CASE WHEN mps.long_pass_succeeded IS NULL THEN 0 ELSE mps.long_pass_succeeded END
     , CASE WHEN mps.forward_pass IS NULL THEN 0 ELSE mps.forward_pass END
     , CASE WHEN mps.forward_pass_succeeded IS NULL THEN 0 ELSE mps.forward_pass_succeeded END
     , CASE WHEN mps.backward_pass IS NULL THEN 0 ELSE mps.backward_pass END
     , CASE WHEN mps.backward_pass_succeeded IS NULL THEN 0 ELSE mps.backward_pass_succeeded END
     , CASE WHEN mps.sideways_pass IS NULL THEN 0 ELSE mps.sideways_pass END
     , CASE WHEN mps.sideways_pass_succeeded IS NULL THEN 0 ELSE mps.sideways_pass_succeeded END
     , CASE WHEN mps.tackle IS NULL THEN 0 ELSE mps.tackle END
     , CASE WHEN mps.tackle_succeeded IS NULL THEN 0 ELSE mps.tackle_succeeded END
     , CASE WHEN mps.aerial_duel IS NULL THEN 0 ELSE mps.aerial_duel END
     , CASE WHEN mps.aerial_duel_succeeded IS NULL THEN 0 ELSE mps.aerial_duel_succeeded END
     , CASE WHEN mps.ground_duel IS NULL THEN 0 ELSE mps.ground_duel END
     , CASE WHEN mps.ground_duel_succeeded IS NULL THEN 0 ELSE mps.ground_duel_succeeded END
     , CASE WHEN mps.intercept IS NULL THEN 0 ELSE mps.intercept END
     , CASE WHEN mps.clearance IS NULL THEN 0 ELSE mps.clearance END
     , CASE WHEN mps."recovery" IS NULL THEN 0 ELSE mps."recovery" END
     , CASE WHEN mps.intervention IS NULL THEN 0 ELSE mps.intervention END
     , CASE WHEN mps.take_on IS NULL THEN 0 ELSE mps.take_on END
     , CASE WHEN mps.take_on_succeeded IS NULL THEN 0 ELSE mps.take_on_succeeded END
     , CASE WHEN mps.mistake IS NULL THEN 0 ELSE mps.mistake END
     , CASE WHEN mps.block IS NULL THEN 0 ELSE mps.block END
     , CASE WHEN mps.foul IS NULL THEN 0 ELSE mps.foul END
     , CASE WHEN mps.foul_won IS NULL THEN 0 ELSE mps.foul_won END
     , CASE WHEN mps.offside IS NULL THEN 0 ELSE mps.offside END
     , CASE WHEN mps.yellow_card IS NULL THEN 0 ELSE mps.yellow_card END
     , CASE WHEN mps.red_card IS NULL THEN 0 ELSE mps.red_card END
     , CASE WHEN mps.own_goal IS NULL THEN 0 ELSE mps.own_goal END
     , CASE WHEN mps.goal_conceded IS NULL THEN 0 ELSE mps.goal_conceded END
     , CASE WHEN mps.goal_kick IS NULL THEN 0 ELSE mps.goal_kick END
     , CASE WHEN mps.goal_kick_succeeded IS NULL THEN 0 ELSE mps.goal_kick_succeeded END
     , CASE WHEN mps.aerial_clearance IS NULL THEN 0 ELSE mps.aerial_clearance END
     , CASE WHEN mps.aerial_clearance_succeeded IS NULL THEN 0 ELSE mps.aerial_clearance_succeeded END
     , CASE WHEN mps.save_by_catching IS NULL THEN 0 ELSE mps.save_by_catching END
     , CASE WHEN mps.save_by_punching IS NULL THEN 0 ELSE mps.save_by_punching END
     , CASE WHEN mps.rating IS NULL THEN 0 ELSE TRUNC(mps.rating::NUMERIC, 2) END
     , CASE WHEN mps.play_time IS NULL THEN 0 ELSE mps.play_time / 60000 END
;

