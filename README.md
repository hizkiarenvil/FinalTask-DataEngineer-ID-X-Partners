# Project Title: FinalTask-DataEngineer-ID-X-Partners

## Project Overview
This virtual internship program serves as a Data Engineer role at ID/X Partners. The task involves creating a Data Warehouse for a banking industry client of ID/X Partners. The client faces challenges in extracting data from various sources simultaneously, leading to delays in data reporting and analysis. The available data sources include Excel and CSV files, as well as SQL Server databases containing transaction, account, customer, branch, city, and state information.

## Tasks
1. **Database Creation:** Create a new database named 'DWH' to serve as the Data Warehouse.
2. **Dimension and Fact Tables:**
   - Create three dimension tables: DimAccount, DimCustomer, DimBranch.
   - Create one fact table: FactTransaction. Ensure to define primary keys and foreign keys in each table.
3. **ETL Job with Talend:**
   - Develop an ETL job using Talend to move data from source to the Dimension tables.
   - Specifically format the DimCustomer table columns as CustomerID, CustomerName, Address, CityName, StateName, Age, Gender, Email. Convert all data to uppercase except for CustomerID, Age, and Email columns. Follow PascalCase naming conventions.
   - Create an ETL job to merge transaction data from transaction_excel, transaction_csv, and transaction_db into the FactTransaction table. Ensure no duplicate rows in FactTransaction.
4. **Stored Procedures:**
   - Create two stored procedures:
     - **DailyTransaction:** Calculate daily transaction count and total amount based on start_date and end_date parameters.
       Example output: Date, TotalTransactions, TotalAmount.
     - **BalancePerCustomer:** Calculate the current balance per customer considering transaction types (Deposit, Withdrawal) and account status (active).

## Technologies and Tools
- Programming Languages: SQL
- Database Management Systems: Microsoft SQL Server
- Tools: Talend for ETL processes

## Folder Structure
- **ETL_Jobs:** Contains Talend ETL job files.
- **Stored_Procedures:** Contains SQL scripts for stored procedures.
- **Documentation:** Includes project documentation, data model diagrams, and related files.
- **Data:** Holds sample data files (Excel, CSV) and SQL backup file for database restoration.

## Project Setup
1. Install SQL Server Management Studio (SSMS) for database operations.
2. Install Talend for ETL development.
3. Restore the provided sample database backup file for data sources.

## Contributors
- Hizkia - Data Engineer

## Additional Notes
- Ensure all code follows best practices and is well-documented.
- Test ETL processes and stored procedures thoroughly before deployment.
- Collaborate with team members and stakeholders for feedback and review.

This project aims to enhance data processing and reporting capabilities for ID/X Partners' banking client through efficient ETL processes and optimized data warehouse structures.
