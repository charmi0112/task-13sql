# task-13sql
The objective of this task is to understand and implement database transactions and demonstrate ACID properties using SQL. A banking system scenario is used to simulate real-world transaction handling.
Tools Used
MySQL Workbench
MySQL Database
Project Description
This project demonstrates how to execute multiple SQL statements as a single transaction using START TRANSACTION, COMMIT, and ROLLBACK. It includes simulation of successful and failed transactions, implementation of isolation levels, prevention of dirty reads, and explanation of ACID properties.
Database Details
Database Name: bank_db
Table Name: accounts
Table Structure:
account_id (INT, Primary Key)
name (VARCHAR(50))
balance (DECIMAL(10,2))
Transaction Scenarios Implemented
Successful Transaction
Money transfer from one account to another using START TRANSACTION and COMMIT. Both updates are successfully completed and permanently saved.
Failed Transaction
Attempted transfer of an amount greater than the available balance. The transaction is cancelled using ROLLBACK to restore the previous state.
Atomicity Demonstration
If one query fails during a transaction, the entire transaction is rolled back. This follows the “All or Nothing” principle.
Isolation Levels
