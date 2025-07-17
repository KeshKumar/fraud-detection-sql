-- Show top 10 high-value frauds
SELECT *
FROM transactions
WHERE isFraud = 1 AND amount > 1000000
ORDER BY amount DESC
LIMIT 10;

-- Find the average amount of fraudulent transactions
SELECT ROUND(AVG(amount), 2) AS avg_fraud_amount
FROM transactions
WHERE isFraud = 1;