-- Duplicate Job Listings 
-- https://datalemur.com/questions/duplicate-job-listings
with CTE AS
(select 
  company_id
  , title
  , description
  , count(job_id) as job_count
from job_listings
group by 1,2,3)

select count(DISTINCT company_id) as duplicate_companies
from cte 
where job_count > 1;
