/***********Analysis of employee records***************/

/*******How to select all records from a table*******/

select * from JC_Employee_Master

select employee_number,last_name, first_name, employee_status, hire_date, last_date_worked, job_title, job_code, home_branch
from JC_Employee_Master

/*******To get the last time employee was hired********/

select employee_number,last_name,first_name,employee_status,hire_date
from JC_Employee_Master
