/*============================================================
Task 9: Realised margin percentage

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT09_ReceiptLine: Realised sales and captured costs.

Deliverable
-------------
Create a function named RT09_MarginPct.
Required function: RT09_MarginPct(p_sku IN VARCHAR2). Return type: NUMBER.

Requirement
-------------
Return the realised margin percentage for a product using captured sold prices, costs and quantities across its receipt lines. Margin is the share of total sales remaining after total cost; quantities affect both totals. Round the final percentage to two decimals. No matching lines, a null SKU or zero sales returns zero.

Total Marks: 8
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK09');
    -- TODO: implement Task 9 below this session block using only supplied base objects.
END;
/

