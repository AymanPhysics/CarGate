ct PaymentDays
go
alter table InstallmentInvoicesMaster  add IsThisMonth int
GO
alter table InstallmentInvoicesMaster  add PaymentDay int
GO
alter table InstallmentInvoicesDateils  add PaymentDay int
go
alter table InstallmentCounts add Perc float
GO
alter table Statics add InstallStartYear int,InstallStartMonth int
go
update Statics set InstallStartYear =2016,InstallStartMonth =1
go

alter table InstallmentInvoicesMaster  add DocNo nvarchar(100)