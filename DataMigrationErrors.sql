select employee_id , first_name||' '||last_name name
from employees;

--ename is 15 varchar size limit
create table T_Employees_Insert
( employee_id number,
 ename varchar2(15)    
 );
 
--Below insert operation will fail, due to ename size limitations.

insert into T_Employees_Insert
select employee_id , first_name||' '||last_name name
from employees;

---the solution
exec dbms_errlog.create_error_log('T_Employees_Insert');
desc err$_T_Employees_Insert;

--below insert operation will go through without any errors and 
--rejected records are catured in error package

insert into T_Employees_Insert 
select employee_id , first_name||' '||last_name name
from hr.employees
log errors reject limit unlimited;

--this shows how many records not successfully inserted due to ename size limitation
select * from err$_T_Employees_Insert;