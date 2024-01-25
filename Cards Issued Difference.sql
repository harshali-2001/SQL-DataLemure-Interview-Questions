-- Cards Issued Difference
-- https://datalemur.com/questions/cards-issued-difference

SELECT card_name
  , (MAX(issued_amount) - min(issued_amount)) as difference
FROM monthly_cards_issued
group by 1
order by 2 desc;
