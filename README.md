# 🫀 Heart Disease Dataset – SQL Exploration

## About this project
I’ve started this project to sharpen my **SQL skills** and later bring the results into **Power BI** for visualization.  
The dataset has patient records with details like age, diabetes, blood pressure, lab tests, and whether the patient survived (`death_event`).  

The idea is simple: use data to ask questions, dig into patterns, and share what I’m learning along the way.

-------

## Current progress
Here’s what I’ve managed so far:
- Turned the Excel file into a **SQLite database** (`heart_disease.db`).
- Set up a `heart_records` table with all patient features and outcomes.
- Written queries to explore:
  - Overall mortality rate  
  - Average age by survival status  
  - Mortality by diabetes and age groups  
  - Mortality by smoking, blood pressure, and sex  

What’s next:
- Look into lab values (creatinine, sodium, platelets) and see how they relate to survival.  
- Start building **Power BI dashboards** to turn these insights into visuals.  
- Keep adding my findings here as I go.  

------

## 📂 Repo structure

heart-disease-sql-analysis/
│
├── heart_disease.db
│
├── sql_scripts/
│   ├── basic_counts.sql
│   ├── avg_age_by_death.sql
│   ├── mortality_by_diabetes.sql
│   ├── mortality_by_age_group.sql
│   ├── mortality_by_smoking.sql
│   ├── mortality_by_high_bp.sql
│   ├── mortality_by_sex.sql
│   └── README_sql.md
│
└── README.md

---

## 🔍 A quick example
Here’s one of the first queries I wrote:  

```sql
SELECT 
    death_event,
    ROUND(AVG(age), 2) AS avg_age,
    COUNT(*) AS total_patients
FROM heart_records
GROUP BY death_event;
```

Result:
Survivors had an average age of about 58.8 years, while non-survivors averaged 65.2 years.
Even this simple query shows how age plays a role in survival outcomes.

Findings so far
	•	Smoking and Mortality
Non-smokers: 32.5% mortality, Smokers: 31.3%
→ In this dataset, smoking didn’t make much of a difference.
	•	High Blood Pressure and Mortality
High BP: 37.1% mortality, No High BP: 29.4%
→ Patients with high blood pressure showed higher mortality risk.
	•	Sex and Mortality
Females: 32.4% mortality, Males: 32.0%
→ Gender didn’t have a clear impact in this dataset.

-----


Tools I’m using
	•	Python + pandas → to convert Excel into a database
	•	SQLite + DB Browser → to run and explore queries
	•	Power BI (coming next) → to turn these patterns into visuals

-----

 
 Why I’m doing this

For me, this is not just practice — it’s about learning in public.
I want to keep building real projects, share my journey, and get better at connecting technical skills with meaningful insights.
Stay tuned — this repo will keep growing 🚀
