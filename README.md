# SQL & Tableau Business Exploration Case Study

**Description:**  
This repository contains code, visualizations and a brief business presentation of a case study for business exploration conducted during a coding bootcamp via SQL, Tableau and Google Slides. The data originates from the magist_dump SQL database and has been converted into CSV datasets for further analysis. The project includes the original SQL dump, transformation scripts, and final visualizations used to enrich the final presentation with plots and insights.

---

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

## 📂 Data Sources

| Filename                            | Format  | Description                                  |
| ------------------------------------ | ------- | -------------------------------------------- |
| `magist_dump.sql`                    | SQL     | Original database dump used for data extraction  |
| `customers.csv`                      | CSV     | Customer data extracted from SQL                 |
| `geo.csv`                            | CSV     | Geographical data extracted from SQL             |
| `order_items.csv`                    | CSV     | Order item details extracted from SQL            |
| `order_payments.csv`                 | CSV     | Payment information extracted from SQL           |
| `order_reviews.csv`                  | CSV     | Customer reviews extracted from SQL              |
| `orders.csv`                         | CSV     | Order summary extracted from SQL                 |
| `product_category_name_translation.csv` | CSV | Product category translations extracted from SQL |
| `products.csv`                       | CSV     | Product details extracted from SQL               |
| `sellers.csv`                        | CSV     | Seller information extracted from SQL            |

---

## Setup & Usage

### Requirements

- **Tableau Desktop** or **Tableau Public** (for visual exploration)
- (Optional) Access to an SQL database for additional queries
- This setup guide is written for **Mac**; adapt commands accordingly for other platforms.

### Importing Database & Running Queries

1. **Create the database in MySQL:**
   ```sh
   mysql -u your_user -p
   CREATE DATABASE magist;
   EXIT;
   ```

2. **Import the SQL dump:**
   ```sh
   mysql -u your_user -p magist < 10_SQL/magist_dump/magist_dump.sql
   ```

3. **Verify the data in MySQL:**
   ```sh
   mysql -u your_user -p
   USE magist;
   SHOW TABLES;
   ```

4. **Run additional SQL queries:**
   ```sh
   chmod +x 10_SQL/sql_queries/run_queries.sh
   ./10_SQL/sql_queries/run_queries.sh
   ```

5. **Open `analysis_sheets.twbx` in Tableau to access visualization sheets.**

6. **If data sources are missing in Tableau:**
   - Go to **Data Sources → Edit Connection**.
   - Select the new location of the CSV files or database.
   - Refresh the data to ensure consistency.

---

## License

This project is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)** License. Since this case study is completed and not intended for modifications, this ensures proper attribution while preventing commercial use.

---

Since this case study is finalized, contributions are not required.
