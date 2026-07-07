SET SERVEROUTPUT ON;

-- =====================================================
-- SCENARIO 1
-- Automatically update the LastModified
-- date whenever a customer record is updated.
-- =====================================================

CREATE OR REPLACE TRIGGER UpdateCustomerLastModified
BEFORE UPDATE ON Customers
FOR EACH ROW
BEGIN

    :NEW.LastModified := SYSDATE;

END;
/

-- =====================================================
-- SCENARIO 2
-- Maintain an audit log whenever a new
-- transaction is inserted.
-- =====================================================

CREATE OR REPLACE TRIGGER LogTransaction
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN

    INSERT INTO AuditLog
    VALUES(
        :NEW.TransactionID,
        :NEW.TransactionID,
        :NEW.AccountID,
        :NEW.Amount,
        :NEW.TransactionType,
        SYSDATE
    );

END;
/

-- =====================================================
-- SCENARIO 3
-- Ensure withdrawals do not exceed the
-- available balance and deposits are positive.
-- =====================================================

CREATE OR REPLACE TRIGGER CheckTransactionRules
BEFORE INSERT ON Transactions
FOR EACH ROW

DECLARE
    v_balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = :NEW.AccountID;

    IF :NEW.TransactionType = 'Withdrawal' THEN

        IF :NEW.Amount > v_balance THEN
            RAISE_APPLICATION_ERROR(
                -20010,
                'Withdrawal exceeds available balance.'
            );
        END IF;

    ELSIF :NEW.TransactionType = 'Deposit' THEN

        IF :NEW.Amount <= 0 THEN
            RAISE_APPLICATION_ERROR(
                -20011,
                'Deposit amount must be positive.'
            );
        END IF;

    END IF;

END;
/