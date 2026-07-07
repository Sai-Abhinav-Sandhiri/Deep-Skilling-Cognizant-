SET SERVEROUTPUT ON;

-- =====================================================
-- TEST : CalculateAge
-- =====================================================

DECLARE
    v_age NUMBER;
BEGIN

    v_age := CalculateAge(DATE '1955-05-15');

    DBMS_OUTPUT.PUT_LINE(
        'Customer Age : ' || v_age
    );

END;
/

-- =====================================================
-- TEST : CalculateMonthlyInstallment
-- =====================================================

DECLARE
    v_installment NUMBER;
BEGIN

    v_installment :=
        CalculateMonthlyInstallment(
            100000,
            8.5,
            5
        );

    DBMS_OUTPUT.PUT_LINE(
        'Monthly Installment : ' ||
        v_installment
    );

END;
/

-- =====================================================
-- TEST : HasSufficientBalance
-- =====================================================

DECLARE
    v_result BOOLEAN;
BEGIN

    v_result := HasSufficientBalance(
                    101,
                    5000
                );

    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE(
            'Sufficient Balance Available.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Insufficient Balance.'
        );
    END IF;

END;
/