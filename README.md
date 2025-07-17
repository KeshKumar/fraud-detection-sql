# fraud-detection-sql
SQL project analyzing fraud patterns in financial transactions using PaySim data

# 💸 Fraud Detection Using SQL (PaySim Dataset)

This project uses SQL to analyze synthetic mobile money transaction data and detect fraud patterns. It simulates a real-world financial system (like M-Pesa) and explores transaction types with higher fraud probability using SQLite and structured SQL queries.

---

## 📌 Objective

- Identify transaction types most prone to fraud
- Detect suspicious accounts involved in repeated fraudulent transactions
- Flag high-value fraudulent transactions
- Practice SQL for real-world analytics use cases

---

## 🧰 Tools Used

- SQLite (via DB Browser for SQLite)
- SQL (GROUP BY, filtering, aggregation)
- Excel (for visualizations)
- Power BI *(optional for advanced users)*

---

## 📁 Project Structure

```
.
├── README.md                   # This file
├── Data/
│   └── fraud_by_type.csv       # Cleaned CSV used for analysis
├── sql/
│   ├── 01_exploration.sql
│   ├── 02_fraud_by_type.sql
│   ├── 03_high_value_frauds.sql
│   └── 04_risky_accounts.sql
├── Outputs/
│   ├── fraud_by_type.csv       # Exported result from SQL queries
│   └── high_value_frauds.csv   # (Optional) Result for high-value fraud
├── Screenshots/
│   └── fraud_rate_by_type.png  # Bar chart visualization created in Excel
```

---

## 📊 Sample Query: Fraud Rate by Transaction Type

```sql
SELECT 
  type,
  COUNT(*) AS total_txns,
  SUM(isFraud) AS fraud_txns,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions
GROUP BY type
ORDER BY fraud_rate_percent DESC;
```

---

## 🔍 Key Findings

- Fraud is exclusively present in `TRANSFER` and `CASH_OUT` transactions
- `PAYMENT`, `CASH_IN`, and `DEBIT` showed 0% fraud
- Some origin accounts are reused for multiple fraud attempts
- High-value frauds often exceed $1 million

---

## 📈 Visual Insights

Located in the `/Screenshots/` folder:

- 📊 `fraud_rate_by_type.png`: A bar chart showing percentage fraud by transaction type
- Can be used in reports or presentations

---

## ✅ Next Steps

- Add anomaly detection using `CASE` statements in SQL
- Create dashboards in Power BI or Excel for stakeholder reporting
- Simulate alert triggers for large or repeat frauds

---

## 📜 License

MIT License.  
Dataset provided by the [PaySim project on Kaggle](https://www.kaggle.com/datasets/ntnu-testimon/paysim1) for research and educational use.

---

## 🔗 Author

Keshav Kumar
📧 keshavkumar0610@gmail.com  
🔗 [GitHub](https://github.com/yourusername) | [LinkedIn](https://linkedin.com/in/KeshKumar)
