/*============================================================
Task 13: Settle a receivable exactly once

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied tables:
- RT13_Receivable: Unsettled bill balances.
- RT13_Settlement: Exactly one settlement per bill.

Deliverable
-------------
Create a procedure named RT13_Settle.
Required procedure: RT13_Settle(p_bill IN NUMBER,p_amount IN NUMBER).

Requirement
-------------
Settle an existing unpaid bill exactly once. Accept only a positive amount equal to AmountDue. Record one matching settlement and its settlement time together. Missing bills, incorrect amounts and repeated settlement raise -20113. Failures must leave no partial changes. Protect the bill against conflicting simultaneous settlement.

Total Marks: 8
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK13');
    -- TODO: implement Task 13 below this session block using only supplied base objects.
END;
/

