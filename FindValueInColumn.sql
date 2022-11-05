############### Find all rows containing letter 'A' in any column (query should not use OR) 

create table tble
(s_no number,
col1 varchar2(1),
col2 varchar2(1),
col3 varchar2(1),
col4 varchar2(1),
col5 varchar2(1));

insert all 
into tble values(1,'A','B','C','D','E')
into tble values(2,NULL,'A','B','C','D')
into tble values(3,'E',NULL,NULL,NULL,'E')
into tble values(4,NULL,'A','E',NULL,'D')
into tble values(5,'E','D','C','B',NULL)
select 1 from dual;

commit;

select * from tble;


select * from tble where 'A' in (col1,col2,col3,col4,col5);
select * from tble where col1||col2||col3||col4||col5 like '%A%';
select * from tble where instr(col1||col2||col3||col4||col5,'A')>0;
