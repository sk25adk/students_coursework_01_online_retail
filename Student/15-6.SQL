/*============================================================
Task 15: Revenue running total by day

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT15_SalesJournal: Independent daily sales/refund journal.
For the 0/1 flag columns (Refunded), 1 means true and 0 means false.

Deliverable
-------------
Create a view named RT15_DailyRevenue.
Required columns, in order: SaleDay, DayRevenue, CumulativeRevenue.

Requirement
-------------
Provide SaleDay, DayRevenue and CumulativeRevenue. Include successful sales only, combine sales on the same calendar day, and show revenue accumulated through each day in date order. Refunded receipts contribute nothing. Return one row per included day.

Total Marks: 6
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK15');
    -- TODO: implement Task 15 below this session block using only supplied base objects.
END;
/

