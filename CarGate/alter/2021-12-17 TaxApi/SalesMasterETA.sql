drop table SalesMasterETA
go
create table SalesMasterETA(
StoreId bigint,
Flag bigint,
InvoiceNo bigint,
Notes Nvarchar(1000),
uuid Nvarchar(1000),
DocumentDetails Nvarchar(1000),
longId Nvarchar(1000),
)
go

alter table salesmaster add IsDebit int not null default 0
alter table deletedsalesmaster add IsDebit int not null default 0

go
ct TokenPins
