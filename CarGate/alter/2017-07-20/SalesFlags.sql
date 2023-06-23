select * from SalesFlags

delete SalesFlags where id in(33,34)
insert SalesFlags select 33,'ÇáÊÕÏíÑ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1,'ßÔİ ÍÓÇÈ'
insert SalesFlags select 34,'ãÑÏæÏÇÊ ÇáÊÕÏíÑ','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1,'ßÔİ ÍÓÇÈ'

