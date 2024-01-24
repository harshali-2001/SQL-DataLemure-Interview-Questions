-- Average Review Ratings
-- https://datalemur.com/questions/sql-avg-review-ratings
select 
  EXTRACT(month from submit_date) as mth
  , product_id as product
  , ROUND(avg(stars), 2) as avg_stars
from reviews
group by 1 , 2
order by 1 , 2;
