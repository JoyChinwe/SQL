
/*******select some records from a table....where statament****/

/******To get all the avtive employee*******/

select employee_number,last_name,first_name,employee_status
from JC_Employee_Master
where employee_status ='A'

/******write a query to get the result from employee that has the last name Bleckman*****/

select *
from JC_Employee_Master
where last_name= 'bleckman'
