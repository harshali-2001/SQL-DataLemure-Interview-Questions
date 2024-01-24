-- Laptop vs. Mobile Viewership
-- https://datalemur.com/questions/laptop-mobile-viewership
SELECT
  sum(case WHEN device_type = 'laptop' then 1 else 0 end) as laptop_views,
  sum(case WHEN device_type in ('phone' , 'tablet') then 1 else 0 end) as mobile_views
FROM viewership;  
