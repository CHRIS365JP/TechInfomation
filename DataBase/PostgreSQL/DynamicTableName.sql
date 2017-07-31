-- Dynamic Table
DROP FUNCTION IF EXISTS FunctionName(INTEGER);
DROP TYPE IF EXISTS TypeName;
CREATE TYPE TypeName AS (column_id INTEGER, column_1 VARCHAR(255),column_2 TIMESTAMP);
CREATE OR REPLACE FUNCTION FunctionName(id INTEGER)
RETURNS SETOF TypeName
AS $$
DECLARE 
rec TypeName%RowType;
BEGIN
FOR rec IN  EXECUTE 'select column_id, column_1, column_2 from table_prefix_'|| id  LOOP

RETURN NEXT rec;
END LOOP;
-- EXCEPTION WHEN others THEN RETURN;
RETURN;
END;
$$ LANGUAGE plpgsql;
