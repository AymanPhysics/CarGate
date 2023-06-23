alter table ServiceTypes add CompanyValue float
go
update ServiceTypes set CompanyValue =CoValue
go

alter table CaseInvoices add Perc0 float
go
update CaseInvoices set Perc0 =12.5 where Perc0 is null


go

alter table statics add CaseInvoicesPerc0 float
go
update statics set CaseInvoicesPerc0 =0