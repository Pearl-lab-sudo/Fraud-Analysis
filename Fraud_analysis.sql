-- creating database --
CREATE DATABASE fraud_analysis;

-- importing csv file --
SELECT * FROM fraud_detection;

-- finding overall fraud rate --
SELECT 
    COUNT(*) AS total_transactions,
    SUM(label) AS total_frauds,
    ROUND(SUM(label) * 100.0 / COUNT(*), 2) AS fraud_rate_percentage
FROM fraud_detection;

-- finding fraud rate by merchant type --
SELECT 
    merchant_type,
    COUNT(*) AS total_transactions,
    SUM(label) AS fraud_transactions,
    ROUND(SUM(label) * 100.0 / COUNT(*), 2) AS fraud_rate_percentage
FROM fraud_detection
GROUP BY merchant_type
ORDER BY fraud_rate_percentage DESC;

-- finding fraud rate by device type --
SELECT 
    device_type,
    COUNT(*) AS total_transactions,
    SUM(label) AS fraud_transactions,
    ROUND(SUM(label) * 100.0 / COUNT(*), 2) AS fraud_rate_percentage
FROM fraud_detection
GROUP BY device_type
ORDER BY fraud_rate_percentage DESC;

-- How common is fraud compared to non-fraud? --
-- Do fraud transactions tend to be higher in value than normal ones? --
SELECT 
    label,
    COUNT(*) AS transaction_count,
    ROUND(AVG(amount), 2) AS avg_transaction_amount
FROM fraud_detection
GROUP BY label;

-- finding biggest fraud losses --
SELECT *
FROM fraud_detection
WHERE label = 1
ORDER BY amount DESC
LIMIT 10;

-- The top 10 device types associated with the highest single fraud transaction amounts --
-- And how many frauds happened using each device --
SELECT 
    device_type,
    MAX(amount) AS max_fraud_amount,
    COUNT(*) AS fraud_count
FROM fraud_detection
WHERE label = 1
GROUP BY device_type
ORDER BY max_fraud_amount DESC
LIMIT 10;

-- Where does most fraud occur — in low, medium, or high-value transactions? --
SELECT 
    label,
    CASE 
        WHEN amount < 100 THEN 'Low'
        WHEN amount BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS amount_range,
    COUNT(*) AS count
FROM fraud_detection
GROUP BY label, amount_range;
