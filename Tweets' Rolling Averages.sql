-- Tweets' Rolling Averages
-- https://datalemur.com/questions/rolling-average-tweets


select 
  user_id
  , tweet_date
  , ROUND(avg(tweet_count) over(
      PARTITION BY user_id
      order by tweet_date
      rows BETWEEN 2 preceding and current row)
      , 2) as rolling_avg_3d
from tweets
