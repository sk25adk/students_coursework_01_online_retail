/*============================================================
Task 7: Weight-band carriage charge

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT07_Slab: Carriage tariffs by weight interval.

Deliverable
-------------
Create a function named RT07_Carriage.
Required function: RT07_Carriage(p_weight IN NUMBER). Return type: NUMBER.

Requirement
-------------
Return the carriage charge for the supplied weight. Each band excludes its lower boundary and includes its upper boundary. Null, zero or negative weight raises -20107; no matching band raises -20108; more than one matching band raises -20109.

Total Marks: 7
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK07');
    -- TODO: implement Task 7 below this session block using only supplied base objects.
END;
/

