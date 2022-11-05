###############Table having duplicate records, can not delete existing duplicate records from prod, how can we prevent further duplicate inserts

drop table emp_new;

create table emp_new 
(empid number,
empname varchar2(14));

insert all
into emp_new values (101,'Raghu')
into emp_new values (102,'Ashok')
into emp_new values (101,'Nihar')
select 1 from dual;

commit;

--To limit further Duplicate Entries, Puting PK constraint as below gives error 
--ORA-02437: cannot validate (SYS.EMP_ID_PK) as duplicate records are there

alter table emp_new add constraint emp_id_pk primary key(empid); 

-- Adding deferrable novalidate will allow for PK constraint and prevent further duplicate entries

--below gives error ORA-02437: cannot validate (SYS.EMP_ID_PK) as duplicate records are there
alter table emp_new add constraint emp_id_pk primary key(empid); 
--to prevent further duplicate inserts add constraint with deferrable novalidate
alter table emp_new add constraint emp_id_pk primary key(empid) deferrable novalidate; 
