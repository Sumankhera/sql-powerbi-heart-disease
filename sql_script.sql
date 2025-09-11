select count(*) from heart_records;

SELECT COUNT(*) AS total_patients,
       SUM(death_event) AS total_deaths,
       ROUND(100.0 * SUM(death_event)/COUNT(*), 2) AS mortality_percent
FROM heart_records;

SELECT death_event,
       ROUND(AVG(age), 2) AS avg_age,
       COUNT(*) AS n
FROM heart_records
GROUP BY death_event;

SELECT diabetes,
       COUNT(*) AS total,
       SUM(death_event) AS deaths,
       ROUND(100.0 * SUM(death_event)/COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY diabetes;

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
ORDER BY age_group
