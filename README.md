# fraud-detection-sql
SQL project analyzing fraud patterns in financial transactions using PaySim data

# 💸 Fraud Detection Using SQL (PaySim Dataset)

This project analyzes synthetic mobile money transaction data using SQL (SQLite) to uncover fraud patterns. The dataset is a simulation inspired by financial systems like M-Pesa and focuses on identifying suspicious transactions based on value, type, and account activity.

---

## 📌 Objective

- Detect transaction types most prone to fraud
- Identify high-risk user accounts
- Analyze high-value fraud transactions
- Practice SQL data analysis for real-world fraud monitoring

---

## 🧰 Tools Used

- **DB Browser for SQLite** – Simple GUI-based SQL engine for running queries locally
- **SQLite** – Lightweight relational database
- **PaySim Dataset** – Synthetic transaction data simulating real-world M-Pesa-like behavior
- *(Optional)* Excel or Power BI for visualization

---

## 📂 Project Structure

fraud-detection-sql/
│
├── data/
│ └── paysim_sample.csv # Source dataset (100K rows sample)
│
├── sql/
│ ├── 01_exploration.sql # Initial exploration queries
│ ├── 02_fraud_by_type.sql # Fraud summary grouped by type
│ ├── 03_high_value_frauds.sql # High-value fraudulent transactions
│ └── 04_risky_accounts.sql # Top origin accounts involved in fraud
│
├── outputs/
│ └── fraud_summary.csv # (Optional) Exported query results
│
├── screenshots/
│ └── fraud_by_type.png # (Optional) Visual from Excel/BI
│
├── README.md # Project overview and documentation
└── fraud_detection.sqlite # (Optional) SQLite database file


---

## 🧠 Key SQL Concepts Demonstrated

- `SELECT`, `GROUP BY`, `ORDER BY`
- `WHERE` filtering and `CASE` conditions
- Aggregation functions (`SUM`, `COUNT`, `AVG`)
- Basic anomaly detection logic

---

## 📊 Key Insights

- ✅ Fraud only occurs in `CASH_OUT` and `TRANSFER` transactions
- 💰 High-value frauds often exceed $1M
- 🔁 Some origin accounts are reused in multiple fraud cases
- 🔍 `PAYMENT`, `DEBIT`, and `CASH_IN` transactions are fraud-free

---

## 🔑 Sample Query: Fraud Rate by Transaction Type

```sql
SELECT 
  type,
  COUNT(*) AS total_txns,
  SUM(isFraud) AS fraud_count,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions
GROUP BY type
ORDER BY fraud_rate_percent DESC;
