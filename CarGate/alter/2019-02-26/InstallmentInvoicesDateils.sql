create table InstallmentInvoicesMaster(
StoreId int,
ToId bigint,
InvoiceNo bigint,
TotalValue float,
DownPayment float,
InstallCount  float,
PaymentDay  float,
MyGetDate datetime default getdate()
)
go
create table InstallmentInvoicesDateils(
StoreId int,
ToId bigint,
InvoiceNo bigint,
Id int,
DayDate datetime,
Value float,
MyGetDate datetime default getdate()
)
go
alter table InstallmentInvoicesDateils add UserName int

alter table InstallmentInvoicesDateils add TypeName nvarchar(100)

go


create table InstallmentInvoicesDateilsPayments(
StoreId int,
ToId bigint,
InvoiceNo bigint,
Id int,
PaymentsInvoiceNo int,
DayDate datetime,
Value float,
Notes nvarchar(1000),
MyGetDate datetime default getdate(),
UserName int
)
go
alter table InstallmentInvoicesDateilsPayments add SaveId int