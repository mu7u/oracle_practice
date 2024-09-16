WITH department AS (
    SELECT department_name FROM HR.departments WHERE manager_id IS NULL
)
SELECT SUBSTR(REVERSE(department_name), 1, 3) FROM department;