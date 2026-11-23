/*============================================================
Task 5: Prevent below-cost pricing

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT05_CostCard: Cost-floor price cards.

Deliverable
-------------
Create a row trigger named RT05_CostFloor.
Required row trigger: RT05_CostFloor; timing before; events INSERT OR UPDATE OF Cost,SalePrice; table RT05_CostCard.

Requirement
-------------
Enforce the price rule on every inserted row and every change to Cost or SalePrice. A sale price below cost must raise error -20105 and leave the attempted change unapplied. A sale price equal to cost is allowed. Do not add audit rows.

Total Marks: 9
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK05');
    -- TODO: implement Task 5 below this session block using only supplied base objects.
END;
/

CREATE OR REPLACE TRIGGER RT05_CostFloor
BEFORE INSERT OR UPDATE OF Cost, SalePrice
ON RT05_CostCard
FOR EACH ROW
BEGIN
    IF :NEW.SalePrice < :NEW.Cost THEN
        RAISE_APPLICATION_ERROR(-20105, 'SalePrice cannot be below Cost');
    END IF;
END;
/





