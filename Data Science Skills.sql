-- Data Science Skills
-- https://datalemur.com/questions/matching-skills
WITH cte AS (
    SELECT 
        candidate_id,
        COUNT(skill) OVER (PARTITION BY candidate_id) AS total_skill
    FROM candidates
    WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
)

SELECT DISTINCT(candidate_id)
FROM cte
WHERE total_skill = 3;
