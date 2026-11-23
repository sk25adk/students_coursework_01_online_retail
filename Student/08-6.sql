/*============================================================
Task 8: Approve a live quotation discount

Preparation
-------------
Run the supplied SetupCourseWork.sql once before attempting any task.
This task is independent; no other numbered task must be completed first.

Supplied table:
- RT08_Quote: Quotation validity and offered discount.

Deliverable
-------------
Create a procedure named RT08_ApproveOffer.
Required procedure: RT08_ApproveOffer(p_quote IN NUMBER,p_percent IN NUMBER).

Requirement
-------------
Approve a percentage discount on an existing quotation that has not expired. Accept percentages from 0 to 30 inclusive. Change OfferedPercent only; preserve BaseAmount. Missing or expired quotations and null or out-of-range percentages raise -20108 without changing data. Protect the quotation from conflicting simultaneous changes.

Total Marks: 6
============================================================*/

SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Supplied task identifier; leave this block in place.
BEGIN
    DBMS_SESSION.SET_IDENTIFIER('COURSEWORK_TASK08');
    -- TODO: implement Task 8 below this session block using only supplied base objects.
END;
/


CREATE OR REPLACE PROCEDURE RT08_ApproveOffer(
    p_quote   IN NUMBER,
    p_percent IN NUMBER
)
IS
    v_dummy NUMBER;
BEGIN
    IF p_percent IS NULL OR p_percent < 0 OR p_percent > 30 THEN
        RAISE_APPLICATION_ERROR(-20108, 'Invalid quote or percent');
    END IF;

    -- Lock the target quote row to prevent conflicting concurrent updates.
    SELECT 1
    INTO v_dummy
    FROM RT08_Quote
    WHERE QuoteID = p_quote
      AND ValidUntil >= TRUNC(SYSDATE)
    FOR UPDATE;

    UPDATE RT08_Quote
    SET OfferedPercent = p_percent
    WHERE QuoteID = p_quote;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20108, 'Invalid quote or percent');
END;
/