DROP TABLE Transactions CASCADE CONSTRAINTS;
DROP TABLE Loans CASCADE CONSTRAINTS;
DROP TABLE Accounts CASCADE CONSTRAINTS;
DROP TABLE Employees CASCADE CONSTRAINTS;
DROP TABLE Customers CASCADE CONSTRAINTS;
DROP TABLE AuditLog CASCADE CONSTRAINTS;

-- ==========================================
-- CUSTOMERS
-- ==========================================

CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    DOB DATE NOT NULL,
    Balance NUMBER(12,2) DEFAULT 0,
    IsVIP CHAR(1) DEFAULT 'N',
    LastModified DATE DEFAULT SYSDATE
);

-- ==========================================
-- ACCOUNTS
-- ==========================================

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER NOT NULL,
    AccountType VARCHAR2(20),
    Balance NUMBER(12,2),
    LastModified DATE DEFAULT SYSDATE,

    CONSTRAINT FK_AccountCustomer
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

-- ==========================================
-- TRANSACTIONS
-- ==========================================

CREATE TABLE Transactions (
    TransactionID NUMBER PRIMARY KEY,
    AccountID NUMBER NOT NULL,
    TransactionDate DATE DEFAULT SYSDATE,
    Amount NUMBER(12,2),
    TransactionType VARCHAR2(20),

    CONSTRAINT FK_TransactionAccount
    FOREIGN KEY (AccountID)
    REFERENCES Accounts(AccountID)
);

-- ==========================================
-- LOANS
-- ==========================================

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER NOT NULL,
    LoanAmount NUMBER(12,2),
    InterestRate NUMBER(5,2),
    StartDate DATE,
    EndDate DATE,

    CONSTRAINT FK_LoanCustomer
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

-- ==========================================
-- EMPLOYEES
-- ==========================================

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Position VARCHAR2(50),
    Salary NUMBER(12,2),
    Department VARCHAR2(50),
    HireDate DATE
);

-- ==========================================
-- AUDIT LOG
-- ==========================================

CREATE TABLE AuditLog (
    LogID NUMBER PRIMARY KEY,
    TransactionID NUMBER,
    AccountID NUMBER,
    Amount NUMBER(12,2),
    TransactionType VARCHAR2(20),
    LogDate DATE
);

COMMIT;
