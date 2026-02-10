CREATE DATABASE bank_db;
USE bank_db;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);
INSERT INTO accounts VALUES
(1, 'Alice', 10000),
(2, 'Bob', 5000);
START TRANSACTION;
UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 1;
UPDATE accounts
SET balance = balance + 2000
WHERE account_id = 2;
COMMIT;
START TRANSACTION;
UPDATE accounts
SET balance = balance - 15000
WHERE account_id = 1;
SELECT balance FROM accounts WHERE account_id = 1;
ROLLBACK;
START TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 99;
ROLLBACK;
SELECT @@transaction_isolation;
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
UPDATE accounts SET balance = 3000 WHERE account_id = 1;
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT * FROM accounts WHERE account_id = 1;
ROLLBACK;

