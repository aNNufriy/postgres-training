CREATE OR REPLACE FUNCTION getNthHighestSalary(N INTEGER) RETURNS INTEGER
AS $$
BEGIN
  N := N-1;
  IF N<0 then
    RETURN NULL;
  ELSE
    RETURN (SELECT DISTINCT(salary) FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET N);
  END IF;
END; $$ LANGUAGE plpgsql;

SELECT 0 var,NULL expected, getNthHighestSalary(0) actual;
SELECT 1 var,300  expected, getNthHighestSalary(1) actual;
SELECT 2 var,200  expected, getNthHighestSalary(2) actual;
SELECT 3 var,100  expected, getNthHighestSalary(3) actual;
SELECT 4 var,NULL expected, getNthHighestSalary(4) actual;
