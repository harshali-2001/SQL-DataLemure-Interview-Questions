-- Unfinished Parts
-- https://datalemur.com/questions/tesla-unfinished-parts

select 
   part 
  , assembly_step
from 
  parts_assembly
where 
  finish_date is null;
