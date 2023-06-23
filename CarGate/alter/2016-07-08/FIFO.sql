--drop table FIFO
go
create table FIFO
(
TableName nvarchar(100),
StoreId bigint,
Flag int,
InvoiceNo bigint,
DayDate datetime,
ItemId bigint,
MainPrice Float,
Price Float,
Qty float,
PriceDate datetime,
Line int identity(1,1)
)



