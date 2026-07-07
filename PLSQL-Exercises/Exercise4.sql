SET SERVEROUTPUT ON;

-- =====================================================
-- SCENARIO 1
-- Calculate the age of a customer
-- from the date of birth.
-- =====================================================

CREATE OR REPLACE FUNCTION CalculateAge(
    p_dob IN DATE
)
RETURN NUMBER
IS
    v_age NUMBER;
BEGIN

    v_age := FLOOR(MONTHS_BETWEEN(SYSDATE, p_dob) / 12);

    RETURN v_age;

END;
/

-- =====================================================
-- SCENARIO 2
-- Calculate the monthly installment
-- for a loan.
-- =====================================================

CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
    p_loanAmount IN NUMBER,
    p_interestRate IN NUMBER,
    p_years IN NUMBER
)
RETURN NUMBER
IS
    v_monthlyInstallment NUMBER;
BEGIN

    v_monthlyInstallment :=
        (p_loanAmount +
        (p_loanAmount * p_interestRate * p_years / 100))
        / (p_years * 12);

    RETURN ROUND(v_monthlyInstallment, 2);

END;
/

-- =====================================================
-- SCENARIO 3
-- Check whether an account has
-- sufficient balance.
-- =====================================================

CREATE OR REPLACE FUNCTION HasSufficientBalance(
    p_accountID IN NUMBER,
    p_amount IN NUMBER
)
RETURN BOOLEAN
IS
    v_balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = p_accountID;

    IF v_balance >= p_amount THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;

END;
/