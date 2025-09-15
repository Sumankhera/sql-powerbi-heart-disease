-- mortality_by_smoking.sql
-- Mortality rate for smokers vs non-smokers

SELECT
  smoking,
  CASE WHEN smoking = 1 THEN 'Smoker' ELSE 'Non-smoker' END AS smoking_label,
  COUNT(*) AS total_patients,
  SUM(death_event) AS deaths,
  ROUND(100.0 * SUM(death_event) / COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY smoking
ORDER BY smoking;
