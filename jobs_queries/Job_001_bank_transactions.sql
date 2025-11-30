/**
 * Job Name: Job_001_bank_transactions.sql
 * Description: This job creates a new table 'zdc_bank_transactions' 
  by getting the last transactions from the 'bank_transactions' table for each day.
 */




WITH last_transactions_per_day AS(
    SELECT 
    id,
    created_at,
    transaction_value,
    MAX(created_at) OVER(PARTITION BY DATE(created_at) ORDER BY created_at DESC ) AS max_created_at_per_day,
    ROW_NUMBER() OVER(PARTITION BY DATE(created_at) ORDER BY created_at DESC ) AS row_num
FROM bank_transactions)
SELECT id, created_at,transaction_value 
FROM  last_transactions
WHERE row_num = 1;


SELECT * FROM bank_transactions;

SELECT * FROM zdc_bank_transactions
WHERE row_num = 1;