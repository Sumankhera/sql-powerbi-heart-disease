-- mortality_by_high_bp.sql
-- Mortality rate for patients with and without high blood pressure

SELECT
  high_blood_pressure,
  CASE WHEN high_blood_pressure = 1 THEN 'High BP' ELSE 'No High BP' END AS bp_label,
  COUNT(*) AS total_patients,
  SUM(death_event) AS deaths,
  ROUND(100.0 * SUM(death_event) / COUNT(*), 2) AS mortality_percent
FROM heart_records
GROUP BY high_blood_pressure
ORDER BY high_blood_pressure;
