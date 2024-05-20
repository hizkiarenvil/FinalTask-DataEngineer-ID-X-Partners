CREATE DATABASE DWH;


USE DWH;
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Address VARCHAR(255),
    CityName VARCHAR(50),
    StateName VARCHAR(50),
    Age VARCHAR(3),
    Gender VARCHAR(10),
    Email VARCHAR(50)
);

CREATE TABLE DimAccount (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(10),
    Balance INT,
    DateOpened DATETIME2(0),
    status VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID)
);

CREATE TABLE DimBranch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(50),
    BranchLocation VARCHAR(50)
);
CREATE TABLE FactTransaction (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATETIME2(0),
    Amount INT,
    TransactionType VARCHAR(50),
    BranchID INT
    
    FOREIGN KEY (AccountID) REFERENCES DimAccount(AccountID),
    FOREIGN KEY (BranchID) REFERENCES DimBranch(BranchID)
);
