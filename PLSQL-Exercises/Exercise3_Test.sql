SET SERVEROUTPUT ON;

-- =====================================================
-- TEST : ProcessMonthlyInterest
-- =====================================================

BEGIN
    ProcessMonthlyInterest;
END;
/

-- =====================================================
-- TEST : UpdateEmployeeBonus
-- =====================================================

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

-- =====================================================
-- TEST : TransferFunds
-- =====================================================

BEGIN
    TransferFunds(103,104,2000);
END;
/