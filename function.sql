 
SELECT * from employee

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS 
$$
    SELECT COUNT(*) FROM employee;
$$;

SELECT emp_count();


CREATE or REPLACE FUNCTION delete_emp_count(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS 
$$
  DELETE from employee WHERE employee_id = p_emp_id
$$;

SELECT delete_emp_count(5)