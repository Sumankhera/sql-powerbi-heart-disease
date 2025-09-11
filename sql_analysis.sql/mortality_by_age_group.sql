-- mortality by age group
SELECT CASE
         WHEN age < 40 THEN '<40'
         WHEN age BETWEEN 40 AND 59 THEN '40-59'
         WHEN age BETWEEN 60 AND 79 THEN '60-79'
         ELSE '80+' END AS age_group,
       COUNT(*) AS total,
       SUM(death_event) AS deaths,
       ROUND(100.0 * SUM(death_event)/COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY age_group
ORDER BY age_group;
