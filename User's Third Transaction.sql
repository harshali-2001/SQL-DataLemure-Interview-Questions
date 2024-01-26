-- User's Third Transaction
-- https://datalemur.com/questions/sql-third-transaction

with date_order_cte As 
(SELECT user_id
  , spend
  , transaction_date
  , ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_date) AS rank
from transactions
)
select user_id
  , spend
  , transaction_date
from date_order_cte
where rank = 3;
