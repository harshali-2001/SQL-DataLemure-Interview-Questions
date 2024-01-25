-- Pharmacy Analytics (Part 1)
-- https://datalemur.com/questions/top-profitable-drugs

SELECT drug
  ,(total_sales - cogs) as total_profit
FROM pharmacy_sales
order by 2 DESC
limit 3;
