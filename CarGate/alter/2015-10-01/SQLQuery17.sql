-- nawar
select * from Statics
alter table statics add YearProfitAccNo nvarchar(100)
go
update statics set YearProfitAccNo ='210302'
go

--omega
select * from Statics
alter table statics add YearProfitAccNo nvarchar(100)
go
delete chart where id='2306'
insert chart
select '2306','ÃÑÈÇÍ ÇáÚÇã','23','1','1','1','2015-10-01 04:48:21.100','0','3','3','0','0','1','',NULL,NULL,NULL,NULL,'0'
select * from chart where id='2306'
go
update statics set YearProfitAccNo ='2306'
go