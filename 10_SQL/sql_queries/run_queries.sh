#!/bin/bash
mysql -u root -p magist < 01_schema_setup.sql
mysql -u root -p magist < 02_views_and_procedures.sql
mysql -u root -p magist < 03_data_aggregation.sql
mysql -u root -p magist < 04_analytics_queries.sql