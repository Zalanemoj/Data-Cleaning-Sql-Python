# Data Cleaning Project: Retail Sales Data (SQL & Python)

![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)
![Python](https://img.shields.io/badge/Python-3.12-blue)
![SQL](https://img.shields.io/badge/SQL-Server-red)
![Banner-Image](https://github.com/user-attachments/assets/dc48b355-3233-4625-83ff-a7c0fd43b693)



## 📌 Project Overview
**A dual-workflow data cleaning project using Python (Pandas) and SQL Server to standardize retail sales data, fix missing values, and validate transactions.**

This project demonstrates a comprehensive data cleaning pipeline implemented in two different technologies: **Python (Pandas)** and **SQL**. The goal is to take raw, messy retail store sales data, identify inconsistencies, and transform it into a clean, structured format suitable for analysis.

## 📂 Repository Structure
```text
├── Data/                     # Raw CSV files (retail_store_sales.csv, Product_master.csv)
├── Scripts-python/           # Jupyter Notebooks for Python-based cleaning
│   └── Data-Cleaning.ipynb
├── Scripts-SQL/              # SQL scripts for database-based cleaning
│   ├── Data-import.sql
│   ├── Cleaning-Price-per-unit.sql
│   ├── Item-CLeaning.sql
│   ├── Cleaned-Discount-applied.sql
│   └── Save-Cleaned-Data.sql
└── README.md
