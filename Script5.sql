WITH department AS (
    SELECT department_name FROM HR.departments WHERE manager_id IS NULL
)
SELECT department_name, REPLACE(SYS_CONNECT_BY_PATH(SUBSTR(department_name, LEVEL*-1, 1), '/'), '/') reversed_string 
FROM department
WHERE connect_by_isleaf = 1 
CONNECT BY PRIOR department_name = department_name 
    AND PRIOR sys_guid() IS NOT NULL 
    AND LEVEL <= length(department_name);