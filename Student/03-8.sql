/*============================================================
Task 3: Discounted invoice calculation

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT03_Line: Discounted invoice lines.

Deliverable
-------------
Create a function named RT03_InvoiceDue.
Required function: RT03_InvoiceDue(p_invoice IN NUMBER). Return type: NUMBER.

Requirement
-------------
Return the amount due for the requested invoice, using each line's quantity, captured price and percentage discount. Round the completed invoice total to two decimal places. An unknown or null invoice number returns zero.

Total Marks: 8
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK03');
    -- TODO: implement Task 3 below this session block using only supplied base objects.
END;
/



CREATE OR REPLACE FUNCTION RT03_InvoiceDue(p_invoice IN NUMBER)
RETURN NUMBER
IS
    v_total NUMBER;
BEGIN
    IF p_invoice IS NULL THEN
        RETURN 0;
    END IF;

    SELECT NVL(SUM(Units * ChargedPrice * (1 - DiscountPct / 100)), 0)
    INTO v_total
    FROM RT03_Line
    WHERE InvoiceNo = p_invoice;

    RETURN ROUND(v_total, 2);
END;






