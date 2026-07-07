SET SERVEROUTPUT ON;

-- =====================================================
-- SCENARIO 1
-- Display all customers with their account balance.
-- =====================================================

DECLARE

    CURSOR CustomerCursor IS
        SELECT CustomerID, Name, Balance
        FROM Customers;

    v_customer CustomerCursor%ROWTYPE;

BEGIN

    OPEN CustomerCursor;

    LOOP

        FETCH CustomerCursor INTO v_customer;

        EXIT WHEN CustomerCursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Customer ID : ' || v_customer.CustomerID ||
            ' | Name : ' || v_customer.Name ||
            ' | Balance : ' || v_customer.Balance
        );

    END LOOP;

    CLOSE CustomerCursor;

END;
/

-- =====================================================
-- SCENARIO 2
-- Display all loans with interest rate.
-- =====================================================

DECLARE

    CURSOR LoanCursor IS
        SELECT LoanID,
               CustomerID,
               LoanAmount,
               InterestRate
        FROM Loans;

    v_loan LoanCursor%ROWTYPE;

BEGIN

    OPEN LoanCursor;

    LOOP

        FETCH LoanCursor INTO v_loan;

        EXIT WHEN LoanCursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Loan ID : ' || v_loan.LoanID ||
            ' | Customer : ' || v_loan.CustomerID ||
            ' | Amount : ' || v_loan.LoanAmount ||
            ' | Interest : ' || v_loan.InterestRate || '%'
        );

    END LOOP;

    CLOSE LoanCursor;

END;
/

-- =====================================================
-- SCENARIO 3
-- Display all employees of a given department.
-- =====================================================

DECLARE

    CURSOR EmployeeCursor IS
        SELECT EmployeeID,
               Name,
               Department,
               Salary
        FROM Employees
        WHERE Department = 'IT';

    v_employee EmployeeCursor%ROWTYPE;

BEGIN

    OPEN EmployeeCursor;

    LOOP

        FETCH EmployeeCursor INTO v_employee;

        EXIT WHEN EmployeeCursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Employee ID : ' || v_employee.EmployeeID ||
            ' | Name : ' || v_employee.Name ||
            ' | Salary : ' || v_employee.Salary
        );

    END LOOP;

    CLOSE EmployeeCursor;

END;
/