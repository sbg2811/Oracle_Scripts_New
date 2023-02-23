LOAD DATA
   INFILE 'DecimalDataload.txt'
   INTO TABLE T_DecimalLoad_Account
   (tx_type POSITION(1:10),
    acct    POSITION(13:17),
    amt     POSITION(20:24)  ":amt/100"
   )
