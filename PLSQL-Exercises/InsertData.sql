   SET SERVEROUTPUT ON;

-- =====================================================
-- INSERT INTO CUSTOMERS
-- =====================================================

insert into customers values ( 1,
                               'John Doe',
                               date '1955-05-15',
                               15000,
                               'N',
                               sysdate );

insert into customers values ( 2,
                               'Jane Smith',
                               date '1990-07-20',
                               9000,
                               'N',
                               sysdate );

insert into customers values ( 3,
                               'Michael Johnson',
                               date '1960-10-10',
                               25000,
                               'N',
                               sysdate );

insert into customers values ( 4,
                               'Emily Davis',
                               date '1988-02-14',
                               8000,
                               'N',
                               sysdate );

insert into customers values ( 5,
                               'Robert Wilson',
                               date '1948-12-01',
                               18000,
                               'N',
                               sysdate );

insert into customers values ( 6,
                               'Sophia Brown',
                               date '1995-04-18',
                               12000,
                               'N',
                               sysdate );

insert into customers values ( 7,
                               'David Miller',
                               date '1978-09-25',
                               6500,
                               'N',
                               sysdate );

insert into customers values ( 8,
                               'Olivia Thomas',
                               date '1962-08-30',
                               30000,
                               'N',
                               sysdate );

insert into customers values ( 9,
                               'James Anderson',
                               date '1983-11-11',
                               11000,
                               'N',
                               sysdate );

insert into customers values ( 10,
                               'Emma Taylor',
                               date '1999-01-05',
                               5000,
                               'N',
                               sysdate );

-- =====================================================
-- INSERT INTO ACCOUNTS
-- =====================================================

insert into accounts values ( 101,
                              1,
                              'Savings',
                              15000,
                              sysdate );
insert into accounts values ( 102,
                              2,
                              'Checking',
                              9000,
                              sysdate );
insert into accounts values ( 103,
                              3,
                              'Savings',
                              25000,
                              sysdate );
insert into accounts values ( 104,
                              4,
                              'Checking',
                              8000,
                              sysdate );
insert into accounts values ( 105,
                              5,
                              'Savings',
                              18000,
                              sysdate );
insert into accounts values ( 106,
                              6,
                              'Savings',
                              12000,
                              sysdate );
insert into accounts values ( 107,
                              7,
                              'Checking',
                              6500,
                              sysdate );
insert into accounts values ( 108,
                              8,
                              'Savings',
                              30000,
                              sysdate );
insert into accounts values ( 109,
                              9,
                              'Checking',
                              11000,
                              sysdate );
insert into accounts values ( 110,
                              10,
                              'Savings',
                              5000,
                              sysdate );

-- =====================================================
-- INSERT INTO LOANS
-- =====================================================

insert into loans values ( 201,
                           1,
                           100000,
                           8.5,
                           sysdate - 365,
                           sysdate + 20 );

insert into loans values ( 202,
                           2,
                           50000,
                           9,
                           sysdate - 200,
                           sysdate + 200 );

insert into loans values ( 203,
                           3,
                           150000,
                           7.5,
                           sysdate - 100,
                           sysdate + 15 );

insert into loans values ( 204,
                           4,
                           80000,
                           8,
                           sysdate - 50,
                           sysdate + 120 );

insert into loans values ( 205,
                           5,
                           120000,
                           7,
                           sysdate - 500,
                           sysdate + 10 );

insert into loans values ( 206,
                           6,
                           75000,
                           8.2,
                           sysdate - 150,
                           sysdate + 60 );

insert into loans values ( 207,
                           8,
                           250000,
                           6.8,
                           sysdate - 400,
                           sysdate + 25 );

insert into loans values ( 208,
                           9,
                           95000,
                           8.8,
                           sysdate - 250,
                           sysdate + 180 );

-- =====================================================
-- INSERT INTO TRANSACTIONS
-- =====================================================

insert into transactions values ( 1001,
                                  101,
                                  sysdate - 10,
                                  500,
                                  'Deposit' );
insert into transactions values ( 1002,
                                  101,
                                  sysdate - 7,
                                  200,
                                  'Withdrawal' );
insert into transactions values ( 1003,
                                  102,
                                  sysdate - 5,
                                  700,
                                  'Deposit' );
insert into transactions values ( 1004,
                                  103,
                                  sysdate - 4,
                                  1500,
                                  'Deposit' );
insert into transactions values ( 1005,
                                  104,
                                  sysdate - 3,
                                  400,
                                  'Withdrawal' );
insert into transactions values ( 1006,
                                  105,
                                  sysdate - 2,
                                  1000,
                                  'Deposit' );
insert into transactions values ( 1007,
                                  106,
                                  sysdate - 2,
                                  600,
                                  'Deposit' );
insert into transactions values ( 1008,
                                  107,
                                  sysdate - 1,
                                  300,
                                  'Withdrawal' );
insert into transactions values ( 1009,
                                  108,
                                  sysdate - 1,
                                  2500,
                                  'Deposit' );
insert into transactions values ( 1010,
                                  109,
                                  sysdate,
                                  800,
                                  'Withdrawal' );
insert into transactions values ( 1011,
                                  110,
                                  sysdate,
                                  900,
                                  'Deposit' );
insert into transactions values ( 1012,
                                  103,
                                  sysdate - 15,
                                  1200,
                                  'Withdrawal' );
insert into transactions values ( 1013,
                                  105,
                                  sysdate - 12,
                                  650,
                                  'Deposit' );
insert into transactions values ( 1014,
                                  108,
                                  sysdate - 8,
                                  1800,
                                  'Withdrawal' );
insert into transactions values ( 1015,
                                  101,
                                  sysdate - 6,
                                  450,
                                  'Deposit' );

-- =====================================================
-- INSERT INTO EMPLOYEES
-- =====================================================

insert into employees values ( 1,
                               'Alice Johnson',
                               'Manager',
                               70000,
                               'HR',
                               date '2015-06-15' );

insert into employees values ( 2,
                               'Bob Brown',
                               'Developer',
                               60000,
                               'IT',
                               date '2017-03-20' );

insert into employees values ( 3,
                               'Chris Evans',
                               'Developer',
                               65000,
                               'IT',
                               date '2018-08-11' );

insert into employees values ( 4,
                               'David Wilson',
                               'Analyst',
                               55000,
                               'Finance',
                               date '2020-02-05' );

insert into employees values ( 5,
                               'Sophia Taylor',
                               'HR Executive',
                               50000,
                               'HR',
                               date '2021-04-10' );

insert into employees values ( 6,
                               'Ryan Clark',
                               'Tester',
                               48000,
                               'QA',
                               date '2019-07-21' );

insert into employees values ( 7,
                               'Grace Lee',
                               'Manager',
                               85000,
                               'Sales',
                               date '2014-10-01' );

insert into employees values ( 8,
                               'Daniel White',
                               'Developer',
                               62000,
                               'IT',
                               date '2022-01-17' );

-- =====================================================
-- COMMIT ALL CHANGES
-- =====================================================

commit;

-- =====================================================
-- VERIFY INSERTION
-- =====================================================

pro    ==============================
pro    DATA INSERTION COMPLETED
pro    ==============================

select count(*) as total_customers
  from customers;
select count(*) as total_accounts
  from accounts;
select count(*) as total_loans
  from loans;
select count(*) as total_transactions
  from transactions;
select count(*) as total_employees
  from employees;