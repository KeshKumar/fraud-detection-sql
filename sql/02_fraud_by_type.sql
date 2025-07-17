-- Count fraud by transaction type
SELECT 
  type,
  COUNT(*) AS total_txns,
  SUM(isFraud) AS fraud_txns,
  ROUND(SUM(isFraud) * 100.0 / COUNT(*), 2) AS fraud_rate_percent
FROM transactions
GROUP BY type
ORDER BY fraud_rate_percent DESC;