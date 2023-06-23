alter table CaseInvoices add FromDate datetime , ToDate datetime 
go
update CaseInvoices set FromDate ='1900-1-1', ToDate =DayDate where ToDate is null
go
alter table CaseInvoices add Discount float
go
update CaseInvoices set Discount =0 where Discount  is null
go

alter table CaseInvoices add Bal float
go
update CaseInvoices set Bal =0 where Bal is null
go
