###############Find employees having salary greater than avg salary of dept employee belongs

create table employee_sal
(empid number,
empname varchar2(50),
dept varchar2(10),
salary number);

insert all
into employee_sal values (1,'Mahesh',10,50000)
into employee_sal values (2,'Mukhesh',10,45000)
into employee_sal values (3,'Paresh',10,23000)
into employee_sal values (4,'Lovkesh',20,45333)
into employee_sal values (5,'Rakhesh',20,76556)
into employee_sal values (6,'Parekh',30,87667)
into employee_sal values (7,'Anand',30,44555)
into employee_sal values (8,'Milind',30,31313)
into employee_sal values (9,'Lalan',30,35555)
into employee_sal values (10,'Sarang',40,42424)
into employee_sal values (11,'Amey',40,22323)
into employee_sal values (12,'Nipun',50,33555)
select 1 from dual;

commit;

select *
from 
employee_sal a, 
(select dept,avg(salary) avg_sal 
from 
employee_sal 
group by dept 
order by dept) b
where a.salary > b.avg_sal
and a.dept = b.dept;

############### Cumulative Salary

drop table emp_new2;

create table emp_new2
(empid number,
empname varchar2(30),
deptno number,
salary number);

insert all 
into emp_new2 values(101,'Shakira',10,800)
into emp_new2 values(102,'JLo',10, 1000)
into emp_new2 values(103,'Ricky',20, 5000)
into emp_new2 values(104,'Tom',10, 10000)
into emp_new2 values(105,'Backy',30,15000)
into emp_new2 values(106,'Gaga',40, 20000)
into emp_new2 values(107,'Justine',20, 25000)
select 1 from dual;

commit;

select * from emp_new2;

select empid, empname, salary, deptno,
sum(salary) over() cum_sal1,
sum(salary) over(order by empid) ,
sum(salary) over(partition by deptno order by empid) cum_sal2,
sum(salary) over(partition by deptno order by empid rows between unbounded preceding and current row) cum_sal3
from emp_new2; 

drop table tx_amount;
create table tx_amount
(tx_no number,
tx_type varchar2(2),
tx_date date,
account_no number,
amount number);

insert all 
into tx_amount values(1,'C','10-Feb-2022',1234567,100)
into tx_amount values(2,'D','15-Mar-2022',1234567,50)
into tx_amount values(4,'C','30-Apr-2022',4567890,300)
into tx_amount values(6,'C','22-Mar-2022',4567890,300)
into tx_amount values(7,'C','15-Apr-2022',4567890,130)
into tx_amount values(8,'D','1-Mar-2022',4567890,10)
select 1 from dual;

commit;

select * from tx_amount;

select TX_NO, TX_DATE, ACCOUNT_NO,TX_TYPE, AMOUNT,
sum(decode(tx_type,'C', AMOUNT, 'D', AMOUNT*-1)) over (partition by account_no) cum_sum
from tx_amount;

select count(distinct tx_type) from tx_amount where amount<100 or amount>100;
select * from tx_amount where amount<100;
