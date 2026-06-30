WITH employee_data AS (

    SELECT
        emp_id,
        emp_name,
        department,
        salary
    FROM {{ ref('stg_employees') }}

)

SELECT
    emp_id,
    emp_name,
    department,
    salary,

    CASE
        WHEN salary >= 75000 THEN 'HIGH'
        ELSE 'LOW'
    END AS salary_band

FROM employee_data;