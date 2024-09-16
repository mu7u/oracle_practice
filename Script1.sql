WITH emp AS (
	SELECT employee_id, last_name, salary, department_id, DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) HighestSalary FROM HR.employees
)
SELECT department_id, employee_id, last_name, salary FROM emp WHERE HighestSalary = 1;