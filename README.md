# SQL & Tableau Business Exploration Case Study

**Description:**  
This repository contains code, visualizations and a brief business presentation of a case study for business exploration conducted during a coding bootcamp via SQL, Tableau and Google Slides. The data originates from the magist_dump SQL database and has been converted into CSV datasets for further analysis. The project includes the original SQL dump, transformation scripts, and final visualizations used to enrich the final presentation with plots and insights.

## Project Structure

```
📂 10_SQL/                     # SQL database dump & schema
│── 📁 magist_dump/            # Original SQL database source
│   ├── magist_dump.sql        # Full SQL dump file
│   ├── magist_schema.pdf      # Database schema diagram
│── 📁 sql_queries/            # SQL queries for data transformation & analysis
│   ├── 01_schema_setup.sql    # Table creation, indexes, constraints
│   ├── 02_views_and_procedures.sql # Views, stored procedures
│   ├── 03_data_aggregation.sql # Aggregation queries (COUNT, GROUP BY)
│   ├── 04_analytics_queries.sql # Advanced analytics (median, price analysis)
│   ├── run_queries.sh         # Master script to execute all files
│
📂 20_Business_Exploration/    # Extracted data & visualizations
│── 📁 data/                   # CSV data sources extracted from SQL dump
│── analysis_sheets.twbx       # Tableau workbook with individual sheets for visualization
│
📂 30_Final_Presentation/       # Final presentation
│── 250215_Magist_Fit_Results.pdf  # PDF version of the presentation
│── 250215_Magist_Fit_Results.pptx # PowerPoint presentation
```

---
