/*============================================================
Task 1: Clearance price selection

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT01_PriceCard: Standalone clearance price list.
For the 0/1 flag columns (Clearance), 1 means true and 0 means false.

Deliverable
-------------
Create a view named RT01_ClearancePrices.
Required columns, in order: ProductCode, Price.

Requirement
-------------
Return ProductCode and Price for products whose Clearance value is 1 and whose Price is 20 or less. Include a product priced exactly 20. Exclude products whose Clearance value is 0. View row order is not assessed.

Total Marks: 1
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK01');
    -- TODO: implement Task 1 below this session block using only supplied base objects.





END;
/

CREATE OR REPLACE VIEW RT01_ClearancePrices AS
SELECT
    ProductCode,
    Price
FROM RT01_PriceCard
WHERE Clearance = 1
  AND Price <= 20;


