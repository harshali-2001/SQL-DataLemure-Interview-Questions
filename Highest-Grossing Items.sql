-- Highest-Grossing Items
-- https://datalemur.com/questions/sql-highest-grossing

with cte AS(
select 
  category
  , product
  , sum(spend) as total_spend
  , row_number() over(PARTITION BY category ORDER BY sum(spend) desc) as RANKED
from product_spend
where EXTRACT(year from transaction_date) = 2022
group by 1 , 2
)

select category
  , product
  , total_spend
from cte 
where ranked <= 2
