-- 저니맵 심판부분 insert
SELECT '20230328' AS ldadng_de
     , a.stdr_year
     , CASE WHEN a.cmpet_knd_cde = '11' THEN 'k12'
            WHEN a.cmpet_knd_cde = '6' THEN 'k34'
            WHEN a.cmpet_knd_cde in ('23','24','25') THEN 'k567'
            WHEN a.cmpet_knd_cde = '5' THEN 'uv'
            WHEN a.cmpet_knd_cde in ('2','3') THEN 'sc'
            ELSE '' END AS knd_cde
     , sum(ref_co) AS ref_co
     , now() AS regist_dt
     , 'kfa01' AS register_id
     , now() AS updt_dt
     , 'kfa01' AS updusr_id
  FROM (
        SELECT a.stdr_year
             , a.cmpet_knd_cde
             , (SELECT cmpet_knd_nm FROM wd_cmpet_knd z WHERE z.cmpet_knd_cde = a.cmpet_knd_cde) AS cmpet_knd_nm
             , count(DISTINCT a.referee_id) AS ref_co
          FROM wf_referee_asign_sttus a
         WHERE a.stdr_year IN ('2019','2020','2021','2022','2023')
           AND a.referee_se_cde = 'RA'
           AND a.cmpet_knd_cde IN ('11','2','23','24','25','3','5','6')
         GROUP BY a.stdr_year, a.cmpet_knd_cde
         UNION
        SELECT a.stdr_year
             , a.cmpet_knd_cde
             , (SELECT cmpet_knd_nm FROM wd_cmpet_knd z WHERE z.cmpet_knd_cde = a.cmpet_knd_cde) AS cmpet_knd_nm
             , count(DISTINCT a.referee_id) AS ref_co
          FROM wf_referee_asign_sttus a
         WHERE a.stdr_year IN ('2019','2020','2021','2022','2023')
           AND a.referee_se_cde IN ('HR1','HR2','AR1','AR2')
           AND a.cmpet_knd_cde IN ('11','2','23','24','25','3','5','6')
         GROUP BY a.stdr_year, a.cmpet_knd_cde
         UNION
        SELECT a.stdr_year
             , a.cmpet_knd_cde
             , (SELECT cmpet_knd_nm FROM wd_cmpet_knd z WHERE z.cmpet_knd_cde = a.cmpet_knd_cde) AS cmpet_knd_nm
             , count(DISTINCT a.referee_id) AS ref_co
          FROM wf_referee_asign_sttus a
             , wf_referee_instrctr_sttus b
         WHERE a.stdr_year IN ('2019','2020','2021','2022','2023')
           AND a.stdr_year = b.stdr_year
           AND a.referee_id = b.referee_instrctr_id
           AND a.cmpet_knd_cde IN ('11','2','23','24','25','3','5','6')
         GROUP BY a.stdr_year, a.cmpet_knd_cde
        ) a
 GROUP BY a.stdr_year
        , CASE WHEN a.cmpet_knd_cde = '11' THEN 'k12'
               WHEN a.cmpet_knd_cde = '6' THEN 'k34'
               WHEN a.cmpet_knd_cde in ('23','24','25') THEN 'k567'
               WHEN a.cmpet_knd_cde = '5' THEN 'uv'
               WHEN a.cmpet_knd_cde in ('2','3') THEN 'sc' 
               ELSE '' END
 ;