--LOAD IMPLIED DECIMAL INTO DATABASE
--DATAFILE LOCATION
--C:\Users\sarik\Desktop\Backup\1.SQLLoadFiles\sqlldr others\DecimalDataLoad.txt
--CONTROL FILE LOCATION
--C:\Users\sarik\Desktop\Backup\1.SQLLoadFiles\sqlldr others\DecimalDataLoad.CTL
CREATE TABLE T_DecimalLoad_Account
  (
    tx_type CHAR(15),
    acct    NUMBER,
    amt     NUMBER
  );
SELECT * FROM T_DECIMALLOAD_ACCOUNT;
--RUN SQLLDR COMMAND FROM CMD PROMPT AND CHECK THE DATA
--CONTROL FILE, DECIMAL DATA INSERT, SQL OPERATOR DIVIDE BY 100 PUT ON EVERY ROW

