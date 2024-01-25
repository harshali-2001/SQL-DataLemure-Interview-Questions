-- Second Day Confirmation 
-- https://datalemur.com/questions/second-day-confirmation

select DISTINCT user_id
from emails e
inner join texts t using (email_id)
where t.action_date = e.signup_date + interval '1 day'
  and t.signup_action = 'Confirmed';
