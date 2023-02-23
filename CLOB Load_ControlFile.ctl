load data
infile 'data_file.txt'
into table T_CLOBLOAD
fields terminated by '|'
(A_no ,
file_name char(100),
file_data lobfile(file_name) terminated by EOF)