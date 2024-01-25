--------상벌,징계


 
 -----------wd_dscpl_trget_se

 select distinct  disciplinary_type from "match_disciplinary#";
 
select scnd_gb as dscpl_trget_se_cde
     , kor_cd_nm  as dscpl_trget_nm
     , (ROW_NUMBER() over(ORDER BY scnd_gb )) AS sort_ordr
      from comcm010 
 where frst_gb  = 'F12'
  -- and thrd_gb != '*'
   and scnd_nm is not NULL
 ;
 

---------wd_dscpl_trget

select dscpl_trget_id
     , dscpl_trget_nm
     , (ROW_NUMBER() over(ORDER BY dscpl_trget_id )) AS sort_ordr
  from (select CASE WHEN disciplinary_type = 'T' THEN teamid
                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN ftkey
                    ELSE '^' END AS dscpl_trget_id 
             , CASE WHEN disciplinary_type = 'T' THEN TEAMNAME
                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN HNAME
                    ELSE '미입력' END AS dscpl_trget_NM
          from "match_disciplinary#") A
  group by dscpl_trget_id, dscpl_trget_nm
  order by dscpl_trget_id
;




select ftkey , hname, regdate  from "match_disciplinary#"
 where ftkey ='000201-3816A7773D3C8AC9C8EBE6CC39AD38AD5'
group by ftkey , hname , regdate
 ;



select dscpl_trget_id
     , dscpl_trget_NM
     , (ROW_NUMBER() over(ORDER BY dscpl_trget_id )) AS sort_ordr
from (
select * from (
select dscpl_trget_id
      , dscpl_trget_NM
      , ROW_NUM 
      , ROW_NUMBER() OVER(PARTITION BY dscpl_trget_id ORDER BY ROW_NUM DESC ) as index
  from (
		SELECT
		   dscpl_trget_id
		  , dscpl_trget_NM
		  --,(ROW_NUMBER() over(ORDER BY dscpl_trget_id )) AS sort_ordr
		  ,ROW_NUMBER() OVER( PARTITION BY dscpl_trget_id ORDER BY regdate ) AS ROW_NUM
		FROM(select CASE WHEN disciplinary_type = 'T' THEN teamid
		                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN ftkey
		                    ELSE '^' END AS dscpl_trget_id 
		             , CASE WHEN disciplinary_type = 'T' THEN TEAMNAME
		                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN HNAME
		                    ELSE '미입력' END AS dscpl_trget_NM
		             , regdate
		          from "match_disciplinary#") A 
		group by dscpl_trget_id, dscpl_trget_nm, regdate) B ) C
where index = 1 ) D
;





select * from (
select dscpl_trget_id,  count(*) cnt from (select dscpl_trget_id
				     , dscpl_trget_nm
				     --, (ROW_NUMBER() over(ORDER BY dscpl_trget_id )) AS sort_ordr
				  from (select CASE WHEN disciplinary_type = 'T' THEN teamid
				                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN ftkey
				                    ELSE '^' END AS dscpl_trget_id 
				             , CASE WHEN disciplinary_type = 'T' THEN TEAMNAME
				                    WHEN disciplinary_type != 'T' AND ftkey IS NOT NULL THEN HNAME
				                    ELSE '미입력' END AS dscpl_trget_NM
				          from "match_disciplinary#") A
				  group by dscpl_trget_id, dscpl_trget_nm
				  order by dscpl_trget_id )a 
	group by dscpl_trget_id ) b 
 where cnt = 2
;







select ftkey , hname, regdate  from "match_disciplinary#"
 where ftkey in( '020202-317B80ECB4C1C9A0C3DA1D9E36F3CCF98'
                 ,'000420-3C7E7BDBBC6A9ACE88754C50C623A86E1'
,'000505-3D55741297D0868E157DD3F039BE3BA88'
,'000510-3AAB2FB491B1F4E5C8466E7E346796F10'
,'000515-379E153712AAB475AFB04AA2A623A647A'
,'000523-32BBBB1442EB07B5A48CB9BA7CD8A5D3D'
,'000605-31B3A26DDDB4D479150A1B96038C4B5E8'
,'000610-7A277D744B94DB4D66621B8541C5F43B9'
,'000629-4353B16EC3B27E4E3AEE585A72F027FDE'
,'000715-3098BB6E0F65B217F8D06EC8F7AF4D7B9'
,'000721-3B4ED491C9E3606CA423694FF49E97707'
,'000905-32A1980B3ADEF9940134086A986FD6ADC'
,'001010-3C18D37DD14352BE86277EB30626D5D0E')
 order by    ftkey ,regdate
;




---------------wd_dscpl_stdr

select distinct  disciplinary_code from "match_disciplinary#";


select thrd_gb  as dscpl_stdr_cde
     , kor_cd_nm  as dscpl_stdr_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 
 where frst_gb in ('F11','F12')
   and thrd_gb != '*'
 group by thrd_gb , kor_cd_nm 
 ;


----------------wd_dscpl_mby

select thrd_gb as dscpl_mby_cde
     , kor_cd_nm  as dscpl_mby_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
  from comcm010 
 where scnd_gb = 'DS0103'
   and thrd_gb != '*'
 ;

-----------wd_dscpl_ty_1

select distinct  d_kind_code1  from "match_disciplinary#";

select thrd_gb as dscpl_ty_1_cde
     , kor_cd_nm  as dscpl_ty_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where frst_gb = 'FD01'
   and char_length(thrd_gb) = '4'
 ;

-----------wd_dscpl_ty_2

select thrd_gb as dscpl_ty_2_cde
     , kor_cd_nm  as dscpl_ty_nm
     ,(ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'F20'
   and char_length(thrd_gb) = '6' 
 ;

-----------wd_dscpl_ty_3

select thrd_gb as dscpl_ty_3_cde
     , kor_cd_nm  as dscpl_ty_nm
     ,(ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'F20'
   and char_length(thrd_gb) = '8' 
 ;

----------wd_dscpl_knd

select distinct  mdd_knd  from "match_disciplinary#";

select thrd_gb as dscpl_knd_cde
     , kor_cd_nm as dscpl_knd_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0106'
   and thrd_gb != '*'
;

-----------------wd_dscpl_pd

select distinct  mdd_dscp_wm  from "match_disciplinary#";

insert into wd_dscpl_pd values ('1','개월',1);
insert into wd_dscpl_pd values ('2','주',2);


-----------------wd_expans_requst

insert into wd_expans_requst values ('Y','확정요청',1);
insert into wd_expans_requst values ('N','요청안함',2);




-------------------wd_dscpl_qualf_scope


select thrd_gb as dscpl_qualf_scope_cde
     , kor_cd_nm as dscpl_qualf_scope_nm
     , (ROW_N UMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0102'
   and thrd_gb != '*'
;

-------------------wd_playng_imprty_scope

select distinct  d_bound_ml  from "match_disciplinary#";


select thrd_gb as playng_imprty_scope_cde
     , kor_cd_nm  as playng_imprty_scope_nm
     , (ROW_NUMBER() over(ORDER BY thrd_gb )) AS sort_ordr
     from comcm010 
 where scnd_gb = 'DS0101'
  and thrd_gb != '*'
 ;

--------------------wd_dscpl_end
insert into KFADW.wd_dscpl_end values ('Y','종료',1);
insert into KFADW.wd_dscpl_end values ('N','미종료',2);











