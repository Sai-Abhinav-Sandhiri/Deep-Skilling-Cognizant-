SET SERVEROUTPUT ON;

-- =====================================================
-- TEST : SCENARIO 1
-- =====================================================

UPDATE Customers
SET Balance = Balance + 1000
WHERE CustomerID = 1;

COMMIT;

SELECT CustomerID,
       LastModified
FROM Customers
WHERE CustomerID = 1;

-- =====================================================
-- TEST : SCENARIO 2
-- =====================================================

INSERT INTO Transactions
VALUES(
    1016,
    101,
    SYSDATE,
    500,
    'Deposit'
);

COMMIT;

SELECT *
FROM AuditLog;

-- =====================================================
-- TEST : SCENARIO 3
-- =====================================================

INSERT INTO Transactions
VALUES(
    1017,
    102,
    SYSDATE,
    20000,
    'Withdrawal'
);