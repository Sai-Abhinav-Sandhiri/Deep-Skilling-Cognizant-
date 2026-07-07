   SET SERVEROUTPUT ON;

-- =====================================================
-- SCENARIO 1
-- Apply a 1% discount to loan interest rates
-- for customers above 60 years old.
-- =====================================================

declare
   v_age number;
begin
   dbms_output.put_line('========== SCENARIO 1 ==========');
   for cust in (
      select customerid,
             dob
        from customers
   ) loop

        -- Calculate customer age
      v_age := floor(months_between(
         sysdate,
         cust.dob
      ) / 12);

        -- Apply discount if age > 60
      if v_age > 60 then
         update loans
            set
            interestrate = interestrate - 1
          where customerid = cust.customerid;

         dbms_output.put_line('Customer ID '
                              || cust.customerid
                              || ' ('
                              || v_age
                              || ' years)' || ' -> Interest rate updated.');

      end if;

   end loop;

   commit;
end;
/

-- =====================================================
-- SCENARIO 2
-- Promote customers with balance > 10000
-- =====================================================

begin
   dbms_output.put_line(chr(10));
   dbms_output.put_line('========== SCENARIO 2 ==========');
   for cust in (
      select customerid,
             balance
        from customers
   ) loop
      if cust.balance > 10000 then
         update customers
            set
            isvip = 'Y'
          where customerid = cust.customerid;

         dbms_output.put_line('Customer '
                              || cust.customerid || ' promoted to VIP.');
      end if;
   end loop;

   commit;
end;
/

-- =====================================================
-- SCENARIO 3
-- Print reminders for loans due
-- within the next 30 days.
-- =====================================================

begin
   dbms_output.put_line(chr(10));
   dbms_output.put_line('========== SCENARIO 3 ==========');
   for loan in (
      select c.name,
             l.loanid,
             l.enddate
        from customers c
        join loans l
      on c.customerid = l.customerid
       where l.enddate between sysdate and sysdate + 30
   ) loop
      dbms_output.put_line('Reminder: '
                           || loan.name
                           || ' | Loan ID: '
                           || loan.loanid
                           || ' | Due Date: ' || to_char(
         loan.enddate,
         'DD-MON-YYYY'
      ));
   end loop;

end;
/