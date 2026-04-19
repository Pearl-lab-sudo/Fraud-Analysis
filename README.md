# 🔍 Fraud Detection Analysis

A SQL-based exploratory analysis of financial transaction data to uncover fraud patterns and risk factors.

## 📌 Project Overview

Financial fraud costs businesses billions every year. This project analyses a fraud detection dataset sourced from Kaggle to answer key business questions: How common is fraud? Which merchant types and devices are highest risk? Where do the biggest losses happen?

## 🛠️ Tools Used

- **SQL** — all analysis done using SQL queries
- **Dataset** — Kaggle fraud detection dataset

## 🔎 Key Questions Answered

- What is the overall fraud rate across all transactions?
- Which merchant types have the highest fraud rates?
- Which device types are most associated with fraudulent activity?
- Do fraud transactions tend to be higher in value than legitimate ones?
- What are the top 10 highest-value fraud transactions?
- Where does most fraud occur — in low, medium, or high-value transactions?

## 📊 Key Insights

- Calculated the overall fraud rate as a percentage of total transactions
- Ranked merchant types by fraud rate to identify highest-risk categories
- Identified which device types are most exploited by fraudsters
- Compared average transaction amounts between fraud and non-fraud cases
- Segmented fraud by transaction value (Low < GHS 100, Medium GHS 100–500, High > GHS 500)

## 📁 Files

|File                |Description                         |
|--------------------|------------------------------------|
|`Fraud_analysis.sql`|All SQL queries used in the analysis|

## 🚀 How to Run

1. Import your fraud detection CSV file into your preferred SQL environment (MySQL, PostgreSQL, etc.)
1. Run the queries in `Fraud_analysis.sql` sequentially
1. Review the output of each query for insights

## 💡 Skills Demonstrated

- Database creation and data import
- Aggregation and grouping (`GROUP BY`, `ORDER BY`)
- Conditional logic (`CASE WHEN`)
- Percentage calculations and rounding
- Filtering and sorting for business insights

-----

**Author:** Lady Pearl Ampomah Opoku | [GitHub](https://github.com/Pearl-lab-sudo) | [Email](mailto:ladypearlopoku@gmail.com)
