CREATE TABLE zdc_user_experience_percentage AS
with cts_compute AS(
SELECT 
position_name,
COUNT( user_id) OVER() AS cnt_users,
LEAD(position_name) OVER() as next_position_name
FROM user_experience
), cts_cnt_user_holding AS(
SELECT 
  position_name,
  next_position_name,
  CAST(cnt_users AS float) as cnt_users,
  CAST(
  SUM(
	CASE WHEN position_name = 'Data Analyst' AND next_position_name ='Data Scientist'
	 THEN 1 END 
  ) AS FLOAT)AS  cnt_user_holding
FROM cts_compute
GROUP BY  position_name, next_position_name,cnt_users)
SELECT
 (cnt_user_holding/cnt_users) AS percentage
FROM cts_cnt_user_holding
WHERE cnt_user_holding IS NOT NULL;