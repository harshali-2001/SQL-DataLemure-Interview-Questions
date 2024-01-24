-- Cities With Completed Trades
-- https://datalemur.com/questions/completed-trades
with cte AS
(select user_id
   , city
   , count(user_id) over(PARTITION BY city) as count_detail
   from trades join users using (user_id)
  where status = 'Completed'
)
select distinct(city) , count_detail
from cte 
order by 2 DESC
limit 3;
