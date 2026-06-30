SELECT
    emp_id,
    emp_name,
    department,
    salary,
    joining_date
FROM {{ source('sales_db','employees') }}