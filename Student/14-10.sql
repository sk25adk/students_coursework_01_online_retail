/*============================================================
Task 14: Reserve a basket line with captured pricing

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied tables:
- RT14_Buyer: Reservation buyers.
- RT14_Lot: Single-lot sale availability.
- RT14_Reservation: Captured-price stock reservations.
For the 0/1 flag columns (Enabled), 1 means true and 0 means false.

Deliverable
-------------
Create a procedure named RT14_Reserve.
Required procedure: RT14_Reserve(p_buyer IN NUMBER,p_sku IN VARCHAR2,p_units IN NUMBER,p_reservation OUT NUMBER).

Requirement
-------------
Reserve a positive whole number of units for an active buyer from an existing stock lot with sufficient availability. Record the buyer, SKU, quantity and current TicketPrice, reduce availability by the reserved units and return the new ReservationID. These changes succeed together. Missing, ineligible or invalid requests raise -20114 without partial changes. Protect the buyer and lot against conflicting changes.

Total Marks: 10
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK14');
    -- TODO: implement Task 14 below this session block using only supplied base objects.
END;
/

