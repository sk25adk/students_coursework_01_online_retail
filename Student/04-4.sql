/*============================================================
Task 4: Delivery lateness report

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT04_Dispatch: Dispatch promises and actual delivery dates.

Deliverable
-------------
Create a view named RT04_LateDispatches.
Required columns, in order: DispatchID, LateDays.

Requirement
-------------
Report DispatchID and LateDays for completed deliveries arriving after their promised calendar day. LateDays is the number of calendar days late; ignore time of day. Exclude pending and on-time deliveries. View row order is not assessed.

Total Marks: 4
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK04');
    -- TODO: implement Task 4 below this session block using only supplied base objects.
END;
/

