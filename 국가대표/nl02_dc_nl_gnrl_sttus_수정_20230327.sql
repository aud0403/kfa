/* 
최근 4년
2023.03 해외/국내 선수의 중복에 대한 이슈가 있을 수 밖에 없음.
그래서 Comment 처리함.
※ 해당년도 동일한 선수가 국내/해외 이적을 반복한 경우, 해외/국내리그 소집선수(인원)수는 중복될 수 있습니다.
*/
-- 국가대표 종합현황 insert
SELECT to_char(now(),'YYYYMMDD') AS ldadng_de
     , a.stdr_year
     , a.nl_team_grad_cde
     /* 소집수 */
     , count(DISTINCT cnvc_no      ) AS cnvc_co
     /* 년도별 등급별 소집 인원(중복제거) */
     , sum(p_cnt) as cnvc_player
     /* 해외 소집 선수수 */
     , sum(o_cnt) as ovs_player_cnt
     , round(cast(sum(o_cnt) as numeric) / cast(sum(p_cnt) as numeric) * 100, 2) AS ovs_player_pert
     /* 국내 소집 선수수 */
     , sum(k_cnt) as kor_player_cnt
     , round(cast(sum(k_cnt) as numeric) / cast(sum(p_cnt) as numeric) * 100, 2) AS kor_player_pert
     /* 경기수 */
     , count(DISTINCT game_no   ) as game_co
     , sum(case when num = 1 then win_co                else 0 end) as win_co
     , sum(case when num = 1 then lose_co               else 0 end) as lose_co
     , sum(case when num = 1 then tie_co                else 0 end) as tie_co
     , sum(case when num = 1 then nl_team_last_score    else 0 end) as nl_score
     , sum(case when num = 1 then oppnt_team_last_score else 0 end) as oppnt_score
     , TRUNC(sum(case when num = 1 then nl_team_last_score    else 0 end) / count(DISTINCT game_no), 1) AS avrg_score
     , TRUNC(sum(case when num = 1 then oppnt_team_last_score else 0 end) / count(DISTINCT game_no), 1) AS avrg_conceded
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  FROM (
        SELECT a.stdr_year
             , a.nl_team_grad_cde
             , a.cnvc_no
             , a.cmpet_no
             , a.game_no
             , a.player_id
             , a.kor_player
             , a.ovs_player
             , b.win_co
             , b.lose_co
             , b.tie_co
             , b.nl_team_last_score
             , b.oppnt_team_last_score
             , ROW_NUMBER() over (partition by a.game_no ) as num
             /* 선수수 sum 하기 위한 용도 : (rank 가 1 이고 ^ 아닌) */
             , a.p_rk, case when p_rk = 1 and a.player_id  <> '^' then 1 else 0 end as p_cnt
             , a.k_rk, case when k_rk = 1 and a.kor_player <> '^' then 1 else 0 end as k_cnt
             , a.o_rk, case when o_rk = 1 and a.ovs_player <> '^' then 1 else 0 end as o_cnt
          FROM (
                /* 소집별 선수 수 */
                SELECT a.stdr_year
                     , a.nl_team_grad_cde
                     , a.cnvc_no
                     , a.cmpet_no
                     , a.game_no
                     , a.player_id
                     , CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN a.player_id ELSE '^' END AS kor_player
                     , CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN '^' ELSE a.player_id END AS ovs_player
                     , a.rowid
                     /* 선수수, 해외선수수, 국내선수수 집계하기 위함 1인 것만 sum 하기 위함,
                        case를 써서 해외/국내 분류 하였기 때문에 null 값도 카운트가 되는데
                        이거 제거하기 위해 각각에 rank를 붙이다.
                     */
                     , dense_rank() over(
                       partition by a.stdr_year, a.nl_team_grad_cde, a.player_id
                       order     by a.cnvc_no, a.cmpet_no, a.game_no, rowid
                       ) as p_rk
                     , dense_rank() over(
                       partition by a.stdr_year, a.nl_team_grad_cde, CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN a.player_id ELSE '^' END
                       order     by a.cnvc_no, a.cmpet_no, a.game_no, rowid
                       ) as k_rk
                     , dense_rank() over(
                       partition by a.stdr_year, a.nl_team_grad_cde, CASE WHEN a.psitn_team_nation_cde = 'KOR' THEN '^' ELSE a.player_id END
                       order     by a.cnvc_no, a.cmpet_no, a.game_no, rowid
                       ) as o_rk
                  FROM (
                        SELECT DISTINCT a.stdr_year
                             , a.cnvc_no
                             , a.cmpet_no
                             , a.game_no
                             , a.player_id
                             , a.nl_team_grad_cde
                             , a.psitn_team_nation_cde
                             , a.entry_se_cde
                             /* oracle의 rowid 같이 unique 한 idx 사용하기 위함 */
                             , dense_rank() over(order by a.stdr_year, a.nl_team_grad_cde, a.cnvc_no, a.cmpet_no, a.game_no, a.player_id) as rowid
                          FROM kfadm.wf_nl_player a
                         where a.stdr_year between to_char(current_timestamp - interval '4 year', 'yyyy') and to_char(current_timestamp,'yyyy')
                       ) a
               ) a
               LEFT OUTER join
               (
                SELECT DISTINCT b.stdr_year
                     , b.cmpet_grad_cde
                     , b.cnvc_no
                     , b.cmpet_no
                     , b.game_no
                     , b.cmpet_grad_cde AS nl_team_grad_cde
                     , b.win_co
                     , b.lose_co
                     , b.tie_co
                     , b.nl_team_last_score
                     , b.oppnt_team_last_score
                  FROM kfadm.wf_nl_cmpet b
                 where b.stdr_year between to_char(current_timestamp - interval '4 year', 'yyyy') and to_char(current_timestamp,'yyyy')
               ) b
            ON a.cnvc_no  = b.cnvc_no
           AND a.cmpet_no = b.cmpet_no
           AND a.game_no  = b.game_no
           AND a.nl_team_grad_cde = b.nl_team_grad_cde
       ) a
 GROUP BY a.stdr_year
     , a.nl_team_grad_cde
 order BY a.stdr_year
     , a.nl_team_grad_cde
