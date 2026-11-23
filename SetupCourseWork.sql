SET SERVEROUTPUT ON
SET DEFINE OFF
WHENEVER SQLERROR EXIT FAILURE ROLLBACK

-- Instructor-supplied setup, independent of every assessed task.
@@CourseWorkDB.sql
@@SeedData.sql
COMMIT;
