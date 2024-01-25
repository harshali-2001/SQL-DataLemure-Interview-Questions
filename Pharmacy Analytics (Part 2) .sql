-- Pharmacy Analytics (Part 2) 
-- https://datalemur.com/questions/non-profitable-drugs

select manufacturer
  , count(drug) as drug_count
  , sum(cogs - total_sales) as total_loss
from pharmacy_sales
where cogs > total_sales
GROUP BY 1
order by 3 desc;
