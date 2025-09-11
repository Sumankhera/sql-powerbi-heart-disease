-- average age by survival status
SELECT death_event,
       ROUND(AVG(age), 2) AS avg_age,
       COUNT(*) AS n
FROM heart_records
GROUP BY death_event;
