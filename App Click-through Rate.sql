-- App Click-through Rate
-- https://datalemur.com/questions/click-through-rate
with sample_cte AS
( select
      app_id
      , sum(case when event_type = 'impression' then 1 else 0 end) as total_impression
      , sum(case when event_type = 'click' then 1 else 0 end) as total_click
  from events
  where EXTRACT(year from timestamp) = 2022
  group by 1
  )
  
select 
  app_id
  , round(100.0 * total_click / total_impression , 2) as ctr
from sample_cte;
