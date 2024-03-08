-- Active User Retention
-- https://datalemur.com/questions/user-retention

WITH CurrentMonth AS (
  SELECT 
    user_id,
    EXTRACT(MONTH FROM event_date) AS current_month
  FROM 
    user_actions
  WHERE 
    EXTRACT(MONTH FROM event_date) = 7
    AND EXTRACT(YEAR FROM event_date) = 2022
),
PreviousMonth AS (
  SELECT 
    user_id
  FROM 
    user_actions
  WHERE 
    EXTRACT(MONTH FROM event_date) = 6
    AND EXTRACT(YEAR FROM event_date) = 2022
)
SELECT 
  current_month,
  COUNT(DISTINCT cm.user_id) AS monthly_active_users 
FROM 
  CurrentMonth cm
WHERE 
  EXISTS (
    SELECT 1
    FROM PreviousMonth pm
    WHERE pm.user_id = cm.user_id
  )
GROUP BY 
  current_month;
