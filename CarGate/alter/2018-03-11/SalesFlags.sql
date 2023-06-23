select * from salesflags
order by id



delete salesflags where id in(29,30)
insert SalesFlags select 29,'„‘ —Ì«  Œ«—ÃÌ…','«·„Ê—œ','«·ÿ«·»',1,1,0,1,'ﬂ‘› Õ”«»'
insert SalesFlags select 30,'„—œÊœ«  „‘ —Ì«  Œ«—ÃÌ…','«·„Ê—œ','«·ÿ«·»',-1,0,1,-1,'ﬂ‘› Õ”«»'


go

alter table statics add OP_AccNo nvarchar(100),R_OP_AccNo nvarchar(100)
go
update statics set OP_AccNo ='',R_OP_AccNo =''
--Nawar
--update statics set OP_AccNo ='4201',R_OP_AccNo ='3204'
