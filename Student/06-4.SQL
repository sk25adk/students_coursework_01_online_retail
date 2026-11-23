/*============================================================
Task 6: Till tender reconciliation

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT06_Tender: Till payment-method totals.

Deliverable
-------------
Create a view named RT06_TillTotals.
Required columns, in order: TillCode, CashTotal, CardTotal.

Requirement
-------------
For each till, report TillCode, CashTotal and CardTotal. Include all payments for that till and show zero for a payment method with no receipts. View row order is not assessed.

Total Marks: 4
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK06');
    -- TODO: implement Task 6 below this session block using only supplied base objects.
END;
/


CREATE OR REPLACE VIEW RT06_TillTotals AS
SELECT
    TillCode,
    NVL(SUM(CASE WHEN Method = 'CASH' THEN Amount END), 0) AS CashTotal,
    NVL(SUM(CASE WHEN Method = 'CARD' THEN Amount END), 0) AS CardTotal
FROM RT06_Tender
GROUP BY TillCode;




