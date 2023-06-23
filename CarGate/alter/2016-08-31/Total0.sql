alter table CaseInvoices add Total0 float 
go
update CaseInvoices set Total0 =0 where Total0  is null
go
