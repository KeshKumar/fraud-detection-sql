-- View sample rows
SELECT * FROM transactions LIMIT 10;

-- Overview of transaction types and volume
SELECT type, COUNT(*) AS total_transactions, 
       ROUND(SUM(amount), 2) AS total_amount
FROM transactions
GROUP BY type
ORDER BY total_amount DESC;
