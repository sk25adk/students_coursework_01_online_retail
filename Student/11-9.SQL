/*============================================================
Task 11: Transfer stock between depot cells

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT11_Cell: Independent inter-depot inventory cells.

Deliverable
-------------
Create a procedure named RT11_Transfer.
Required procedure: RT11_Transfer(p_sku IN VARCHAR2,p_from IN NUMBER,p_to IN NUMBER,p_units IN NUMBER).

Requirement
-------------
Move a positive whole number of units of the requested SKU between two different depots. Both depot cells must exist and the source must have sufficient stock. Debit and credit the same number of units as one operation. Any invalid request raises -20111 and leaves both cells unchanged. Protect both cells against concurrent changes in ascending DepotID order.

Total Marks: 9
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK11');
    -- TODO: implement Task 11 below this session block using only supplied base objects.
END;
/

