select * from SalesFlags

delete SalesFlags where id in(35,36)
insert SalesFlags select 35,'ãÈíÚÇÊ áãÓÊËãÑ','ÇáãÓÊËãÑ','ÇáÈÇÆÚ',-1,0,1,1,'ßÔİ ÍÓÇÈ'
insert SalesFlags select 36,'ãÑÏæÏÇÊ ãÈíÚÇÊ áãÓÊËãÑ','ÇáãÓÊËãÑ','ÇáÈÇÆÚ',1,1,0,-1,'ßÔİ ÍÓÇÈ'

