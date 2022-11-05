############### Insert/Update DML Operation if there is any errornous record, still continue insert/update operation

create table emp_1
(empid number,
empname varchar2(50),
dept varchar2(10),
salary number);

insert all
into emp_1 values (1,'Mahesh',10,50000)
into emp_1 values (2,'Mukhesh',10,45000)
into emp_1 values (3,'Paresh',10,23000)
into emp_1 values (4,'Lovkesh',20,45333)
into emp_1 values (5,'Rakhesh',20,76556)
into emp_1 values (6,'Parekh',30,87667)
into emp_1 values (7,'Anand',30,44555)
into emp_1 values (8,'Milind',30,31313)
into emp_1 values (9,'Lalan',30,35555)
select 1 from dual;

create table emp_2
(empid number,
empname varchar2(5),
dept varchar2(10),
salary number);

begin
dbms_errlog.create_error_log(dml_table_name => 'EMP_2');
end;
/

select * from ERR$_EMP_2;

insert into emp_2 select * from emp_1 log errors into ERR$_EMP_2 reject limit unlimited;

select * from emp_2;

update emp_2 
set EMPNAME = 'ANANDIK'
where EMPID = 7
log errors into ERR$_EMP_2 reject limit unlimited;

create or replace trigger emp_2_tr
before delete on emp_2 for each row 
declare
lv_temp number;
begin
lv_temp := 1/0;
end;
