DROP TABLE IF EXISTS bank_transactions;
DROP TABLE IF EXISTS zdc_bank_transactions;
--create bank_transactions table
CREATE TABLE bank_transactions (
    id INT,
    created_at TIMESTAMP,
    transaction_value FLOAT
);

INSERT INTO bank_transactions (created_at, transaction_value, id) VALUES
('2020-01-01 02:21:47', 45, 1),
('2020-01-01 01:21:47', -65, 2),
('2020-01-01 01:14:33', 25, 3),
('2020-01-02 00:11:22', 45, 4),
('2020-01-02 00:12:38', -30, 5),
('2020-01-02 02:32:11', 45, 6),
('2020-01-03 01:30:31', -35, 7),
('2020-01-04 01:41:43', 75, 8),
('2020-01-04 01:48:41', 40, 9);


-- create zdc_bank_transactions table with last transactions per day
CREATE TABLE zdc_bank_transactions AS 
SELECT 
    id,
    created_at,
    transaction_value,
    MAX(created_at) OVER(PARTITION BY DATE(created_at) ORDER BY created_at DESC ) AS max_created_at_per_day,
    ROW_NUMBER() OVER(PARTITION BY DATE(created_at) ORDER BY created_at DESC ) AS row_num
FROM bank_transactions;

