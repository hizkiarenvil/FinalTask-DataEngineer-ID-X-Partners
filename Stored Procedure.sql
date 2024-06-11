------ Pembuatan STORED PROCEDURE

CREATE PROCEDURE DailyTransaction
    @start_date DATE,
    @end_date DATE
AS
BEGIN
    SELECT
        CONVERT(VARCHAR, t.TransactionDate, 23) AS Date,
        COUNT(*) AS TotalTransactions,
        SUM(t.amount) AS TotalAmount
    FROM
        FactTransaction t
    WHERE
        t.TransactionDate >= @start_date
        AND t.TransactionDate <= @end_date
    GROUP BY
        CONVERT(VARCHAR, t.TransactionDate, 23)
    ORDER BY
        Date;
END;

CREATE PROCEDURE BalancePerCustomer
    @name VARCHAR(255)
AS
BEGIN
    SELECT 
        c.CustomerName,
        a.AccountType,
        a.Balance,
        a.Balance + SUM(
            CASE 
                WHEN t.TransactionType = 'Deposit' THEN t.Amount
                ELSE -t.Amount
            END
        ) AS CurrentBalance
    FROM DimCustomer c
    JOIN DimAccount a ON c.CustomerID = a.CustomerID
    JOIN FactTransaction t ON a.AccountID = t.AccountID
    WHERE c.CustomerName LIKE '%' + @name + '%' AND a.Status = 'active'
    GROUP BY c.CustomerName, a.AccountType, a.Balance;
END;

------Menjalankan Stored Procedure
EXEC DailyTransaction @start_date = '2024-01-18', @end_date = '2024-01-20';
EXEC BalancePerCustomer @name = 'Shelly';
