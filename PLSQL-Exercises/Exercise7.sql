SET SERVEROUTPUT ON;

-- =====================================================
-- PACKAGE SPECIFICATION
-- =====================================================

CREATE OR REPLACE PACKAGE BankOperations AS

    PROCEDURE TransferFunds(
        p_fromAccount NUMBER,
        p_toAccount NUMBER,
        p_amount NUMBER
    );

    FUNCTION GetCustomerBalance(
        p_customerID NUMBER
    ) RETURN NUMBER;

END BankOperations;
/

-- =====================================================
-- PACKAGE BODY
-- =====================================================

CREATE OR REPLACE PACKAGE BODY BankOperations AS

    -- ================================================
    -- Transfer Funds Procedure
    -- ================================================

    PROCEDURE TransferFunds(
        p_fromAccount NUMBER,
        p_toAccount NUMBER,
        p_amount NUMBER
    )
    IS
        v_balance NUMBER;
    BEGIN

        SELECT Balance
        INTO v_balance
        FROM Accounts
        WHERE AccountID = p_fromAccount;

        IF v_balance >= p_amount THEN

            UPDATE Accounts
            SET Balance = Balance - p_amount
            WHERE AccountID = p_fromAccount;

            UPDATE Accounts
            SET Balance = Balance + p_amount
            WHERE AccountID = p_toAccount;

            COMMIT;

            DBMS_OUTPUT.PUT_LINE(
                'Funds transferred successfully.'
            );

        ELSE

            DBMS_OUTPUT.PUT_LINE(
                'Insufficient balance.'
            );

        END IF;

    END TransferFunds;

    -- ================================================
    -- Get Customer Balance Function
    -- ================================================

    FUNCTION GetCustomerBalance(
        p_customerID NUMBER
    )
    RETURN NUMBER
    IS
        v_balance NUMBER;
    BEGIN

        SELECT Balance
        INTO v_balance
        FROM Customers
        WHERE CustomerID = p_customerID;

        RETURN v_balance;

    END GetCustomerBalance;

END BankOperations;
/