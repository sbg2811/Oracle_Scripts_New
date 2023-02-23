drop table t_clobload;
create table t_clobload
(
a_no number,
file_name varchar2(100),
file_data clob
);

select * from t_clobload;

delete from t_clobload;

--go on command prompt, go in directory where control .ctl and .txt data file
--resides and execute prompt
--sqlldr control=control_file.ctl (give control file name)
--enter username, password
--check control log for any errors