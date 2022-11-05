--https://www.youtube.com/watch?v=UJ1s8HY4hn4
--Create New User

login as sysdba sys1234
alter session set "_ORACLE_SCRIPT" = TRUE;
create user hr identified by "hr1234";
grant unlimited tablespace to hr;
grant create session to hr;
grant create table to hr;
grant create procedure to hr;
grant create view to hr;
grant create Materialized View to hr;
grant create SYNONYM to hr;
grant create Trigger to hr;
grant create INDEXTYPE to hr;
grant create PUBLIC SYNONYM to hr;

--HR Schema tables - https://download.oracle.com/oll/tutorials/DBXETutorial/html/module2/les02_load_data_sql.htm
--Run script from above link to load HR schema tables
