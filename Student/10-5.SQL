/*============================================================
Task 10: Rank competing supplier bids

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT10_Bid: Competing supplier quotations including freight.

Deliverable
-------------
Create a view named RT10_BidRanking.
Required columns, in order: SKU, VendorCode, LandedCost, CostRank.

Requirement
-------------
Provide SKU, VendorCode, LandedCost and CostRank for every bid. LandedCost includes unit cost and freight for one unit. Rank costs separately for each SKU, lowest first. Equal costs have the same rank and the next distinct cost gets the next consecutive rank.

Total Marks: 5
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK10');
    -- TODO: implement Task 10 below this session block using only supplied base objects.
END;
/

