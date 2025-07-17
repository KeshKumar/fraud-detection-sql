-- Accounts that appear most in fraud origin
SELECT nameOrig, COUNT(*) AS txns, SUM(isFraud) AS fraud_count
FROM transactions
WHERE isFraud = 1
GROUP BY nameOrig
ORDER BY fraud_count DESC
LIMIT 10;

-- Optional: Destination accounts receiving most fraudulent transfers
SELECT nameDest, COUNT(*) AS received_frauds
FROM transactions
WHERE isFraud = 1
GROUP BY nameDest
ORDER BY received_frauds DESC
LIMIT 10;