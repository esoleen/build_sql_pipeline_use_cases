CREATE TABLE zdc_employee_salaries AS
WITH cts_salary_over_100k AS (
    SELECT
        dept.name as department_name,
        COUNT(emp.id) as cnt_salary_over_100k
    FROM department dept
    LEFT JOIN employee emp ON dept.id = emp.department_id
    WHERE emp.salary > 100000
    GROUP BY dept.name
)
,cts_employee_per_dpt AS (
    SELECT
        dept.name as department_name,
        COUNT(emp.id) AS number_of_employees
    FROM department dept
    LEFT JOIN employee emp ON dept.id = emp.department_id
    GROUP BY dept.name
)
,employee_salaries AS (
    SELECT 
        sa.department_name,
        dpt.number_of_employees, 
        sa.cnt_salary_over_100k,
        (CAST(sa.cnt_salary_over_100k AS FLOAT) / CAST(dpt.number_of_employees AS FLOAT)) AS percentage_over_100k,
        ROW_NUMBER() OVER(ORDER BY dpt.number_of_employees DESC) AS rn
    FROM cts_employee_per_dpt dpt
    INNER JOIN cts_salary_over_100k sa ON dpt.department_name = sa.department_name
)
SELECT
    department_name,
    number_of_employees,
    percentage_over_100k
FROM employee_salaries 
WHERE rn < 3;