DSA End-to-End Data Analytics Project
Project Overview

This project demonstrates an end-to-end Data Analytics workflow using MySQL, Python, and Power BI. The objective is to import raw AdventureWorks data, perform data cleaning and transformation, conduct exploratory data analysis (EDA), store the cleaned data back into MySQL, and build interactive dashboards in Power BI.

Project Architecture

Data Source (CSV Files)
            ⬇
MySQL Database (AdventureWorks Schema)
            ⬇
Python (Data Cleaning & EDA)
            ⬇
Cleaned Data Export (CSV)
            ⬇
MySQL Clean Schema
            ⬇
Power BI Dashboard (via ODBC Connection)

epository Structure
DSA-End-to-End/
│
├── Source_Files/
│   └── AdventureWorks Raw Data (CSV Files)
│
├── Mysql_Code/
│   └── SQL Scripts
│
├── Python_Code/
│   └── Data Cleaning & EDA Scripts
│
├── PythonCleanedData/
│   └── Cleaned CSV Files
│
├── PowerBI/
│   └── Dashboard Files
│
└── README.md

Module 1: MySQL Data Ingestion
Step 1: Add Source Files
Create a repository folder named Source_Files.
Store all AdventureWorks raw CSV files inside this folder.
Maintain the original source data without modifications.
Step 2: Create SQL Repository
Create a folder/repository named Mysql_Code.
Store all SQL scripts, table modifications, and database-related changes in this location.
Step 3: Import CSV Files into MySQL

Import all AdventureWorks CSV files into the AdventureWorks schema using MySQL Workbench.

Steps to Import CSV Files
Select the target schema.
Right-click on the schema.
Select Table Data Import Wizard.
Browse and select the CSV file.
Click Next.
Verify table name and file details.
Click Next.
Validate column mappings and data types.
Ensure data types are correctly assigned.
Click Next to start the import process.
Repeat for all source CSV files.
Step 4: Rename Tables
Rename imported tables according to the SQL standards defined in the project.
SQL scripts for table renaming are maintained in the Mysql_Code repository.
Reference script: ITAGAPES-101.
Step 5: Create Index

To improve query performance, create an index on the customer_lookup table.

Example:

CREATE INDEX idx_customer_lookup
ON customer_lookup(customer_id);


Module 2: Data Processing Using Python
Step 1: Connect MySQL with Python

Connect to the AdventureWorks MySQL schema using Python.

Required Libraries
import mysql.connector
import pandas as pd
import numpy as np
Step 2: Fetch Data from MySQL
Establish a connection to MySQL.
Execute SQL queries.
Load data into Pandas DataFrames for processing.
Step 3: Data Cleaning

Perform data cleaning activities using Pandas and NumPy.

Cleaning Activities
Handle missing values.
Remove duplicate records.
Correct data types.
Standardize column formats.
Validate business rules.
Remove unwanted columns if required.
Step 4: Exploratory Data Analysis (EDA)

Perform exploratory analysis to understand the dataset.

EDA Activities
Data profiling.
Statistical summaries.
Distribution analysis.
Missing value analysis.
Trend identification.
Data validation checks.
Step 5: Export Cleaned Data
Save cleaned datasets as CSV files.
Store all cleaned files in the PythonCleanedData folder.

Example:

df.to_csv('PythonCleanedData/customer_cleaned.csv', index=False)

Step 6: Load Cleaned Data Back into MySQL
Create clean tables within the MySQL schema.
Load transformed datasets from Python into MySQL.
Validate record counts and data integrity after loading.
Module 3: Power BI Dashboard Development
Step 1: Configure MySQL ODBC Driver

Install and configure the MySQL ODBC Connector on the local machine.

Configuration Steps
Install MySQL ODBC Connector.
Open ODBC Data Source Administrator.
Create a new DSN.
Enter:
Server Name
Database Name
Username
Password
Test the connection.
Save the DSN configuration.
Step 2: Connect Power BI via ODBC
Open Power BI Desktop.
Select Get Data.
Choose ODBC.
Select the configured DSN.
Connect to the AdventureWorks clean schema.
Load required tables into Power BI.
Step 3: Dashboard Development

Build interactive dashboards using the cleaned datasets.

Dashboard Features
KPI Tracking
Sales Analysis
Customer Analysis
Product Performance
Regional Insights
Interactive Filters and Slicers
Technologies Used
MySQL Workbench
MySQL ODBC Connector
Python
Pandas
NumPy
SQL
Power BI Desktop
Project Outcome

This project demonstrates a complete Data Analytics pipeline, starting from raw CSV ingestion, database management, data cleaning and transformation using Python, exploratory data analysis, data storage in MySQL, and interactive dashboard development in Power BI.


Tech Stack
Technology	Purpose
MySQL Workbench	Data Storage & SQL Development
SQL	Data Manipulation & Optimization
Python	Data Cleaning & Analysis
Pandas	Data Processing
NumPy	Data Transformation
MySQL Connector	Database Connectivity
MySQL ODBC Driver	Power BI Integration
Power BI	Dashboard & Reporting

Key Learning Outcomes
End-to-end ETL Pipeline Development
SQL Database Management
Data Cleaning and Transformation
Exploratory Data Analysis (EDA)
Database Optimization using Indexing
Python-MySQL Integration
ODBC Connectivity
Power BI Dashboard Development
Business Intelligence Reporting
Project Outcome

Successfully transformed raw AdventureWorks data into a clean and analytics-ready dataset through MySQL and Python, and developed Power BI dashboards to generate actionable business insights.

