   LOAD DATA
   INFILE *
   INTO TABLE T_SEQLoad
   FIELDS TERMINATED BY ","
   TRAILING NULLCOLS
   (data1,
    data2,
    seq_number "s_seqload.nextval"
   )
   BEGINDATA
   11111,AAAAAAAAAA
   22222,BBBBBBBBBB
