-- mortality_by_sex.sql
-- Mortality rate by sex (assuming sex: 1 = male, 0 = female)

SELECT
  sex,
  CASE WHEN sex = 1 THEN 'Male' ELSE 'Female' END AS sex_label,
  COUNT(*) AS total_patients,
  SUM(death_event) AS deaths,
  ROUND(100.0 * SUM(death_event) / COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY sex
ORDER BY sex;
