-- mortality by diabetes
SELECT diabetes,
       COUNT(*) AS total,
       SUM(death_event) AS deaths,
       ROUND(100.0 * SUM(death_event)/COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY diabetes;
