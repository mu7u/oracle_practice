WITH department AS (
    SELECT department_name FROM HR.departments WHERE manager_id IS NULL
)
select SUBSTR(department_name, 5,1) from department;