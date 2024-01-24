-- Histogram of Tweets [Twitter SQL Interview Question]
-- link : https://datalemur.com/questions/sql-histogram-tweets
with cte AS
  (select user_id , count(*) as tweet_count
    from tweets
    where extract( year from tweet_date) = 2022
    group by 1)

select tweet_count as tweet_buckets
      , count(user_id)
    from cte 
    group by 1;
