/*============================================================
Task 2: Replenishment gaps view

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT02_Bin: Stock-bin thresholds.

Deliverable
-------------
Create a view named RT02_ReorderList.
Required columns, in order: BinID, SKU, MissingUnits.

Requirement
-------------
Return BinID, SKU and MissingUnits for bins holding less stock than their reorder threshold. MissingUnits is the extra stock needed to reach that threshold. Exclude bins already at or above their threshold.

Total Marks: 7
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK02');
    -- TODO: implement Task 2 below this session block using only supplied base objects.
END;
/

CREATE OR REPLACE VIEW RT02_ReorderList AS SELECT BINID, SKU, (REORDERAT - ONHAND) AS MissingUnits FROM RT02_Bin WHERE ONHAND < REORDERAT;





