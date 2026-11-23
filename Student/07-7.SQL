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



CREATE OR REPLACE FUNCTION RT07_Carriage(p_weight IN NUMBER)
RETURN NUMBER
IS
    v_match_count NUMBER;
    v_charge      NUMBER;
BEGIN
    IF p_weight IS NULL OR p_weight <= 0 THEN
        RAISE_APPLICATION_ERROR(-20107, 'Weight must be greater than zero');
    END IF;

    SELECT COUNT(*), MIN(Charge)
    INTO v_match_count, v_charge
    FROM RT07_Slab
    WHERE p_weight > FromWeight
      AND p_weight <= ToWeight;

    IF v_match_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20108, 'No matching weight band');
    ELSIF v_match_count > 1 THEN
        RAISE_APPLICATION_ERROR(-20109, 'Multiple matching weight bands');
    END IF;

    RETURN v_charge;
END;
