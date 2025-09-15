# 🫀 Heart Disease Dataset – SQL Exploration

## About this project
I’ve started this project to sharpen my **SQL skills** and later bring the results into **Power BI** for visualization.  
The dataset has patient records with details like age, diabetes, blood pressure, lab tests, and whether the patient survived (`death_event`).  

The idea is simple: use data to ask questions, dig into patterns, and share what I’m learning along the way.

---

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

---

## 📂 Repo structure

heart-disease-sql-analysis/
│
├── db/
│   └── heart_disease.db
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
