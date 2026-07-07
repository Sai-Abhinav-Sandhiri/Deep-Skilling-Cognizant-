SET SERVEROUTPUT ON;

-- =====================================================
-- TEST : TransferFunds Procedure
-- =====================================================

BEGIN

    BankOperations.TransferFunds(
        105,
        106,
        1000
    );

END;
/

-- =====================================================
-- TEST : GetCustomerBalance Function
-- =====================================================

DECLARE

    v_balance NUMBER;

BEGIN

    v_balance :=
        BankOperations.GetCustomerBalance(1);

    DBMS_OUTPUT.PUT_LINE(
        'Customer Balance : ' ||
        v_balance
    );

END;
/