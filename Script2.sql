WITH employee AS (
    SELECT employee_id, department_id FROM HR.employees
), department AS (
    SELECT department_id, location_id FROM HR.departments
)
SELECT department.location_id, COUNT(employee.employee_id) AS Num_of_Employees from department
JOIN employee ON department.department_id = employee.department_id
GROUP BY ROLLUP (department.location_id)
ORDER BY department.location_id;
-- felt like i have to use grouping keywords, chapter 13.