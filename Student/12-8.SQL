/*============================================================
Task 12: Prevent overspending a promotion budget

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT12_PromoWallet: Promotion budget and accumulated spend.

Deliverable
-------------
Create a row trigger named RT12_BudgetGuard.
Required row trigger: RT12_BudgetGuard; timing before; events INSERT OR UPDATE; table RT12_PromoWallet.

Requirement
-------------
Enforce the promotion budget rule on inserted and changed wallet rows. Budget and Spent must be nonnegative, and Spent cannot exceed Budget. This also applies when Budget is reduced. Reject violations with -20112 and preserve the previous row.

Total Marks: 8
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK12');
    -- TODO: implement Task 12 below this session block using only supplied base objects.
END;
/

