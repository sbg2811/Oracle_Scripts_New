drop table t_seqload;

CREATE TABLE T_SEQLoad
  (seq_number NUMBER, data1 NUMBER, data2 CHAR(15)
  );
  
drop SEQUENCE s_seqload;

CREATE SEQUENCE S_SEQLOAD START WITH 1 INCREMENT BY 1;

select * from t_seqload;

delete from t_seqload;