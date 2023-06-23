drop table ImportMessageCostHistoryVal3
go
create table ImportMessageCostHistoryVal3(
MainOrderTypeId int,MainImportMessageId int,DeliveredDate datetime,OrderTypeId int,ImportMessageId int,MyFlag int,TableName nvarchar(100),
MainInvoiceNo bigint,InvoiceNo bigint,MotionDate datetime,MainAccNo nvarchar(100),SubAccNo bigint,Perc float,MainVal3 float,Val3 float)
go
drop table ImportMessageCostHistoryVal4
go
create table ImportMessageCostHistoryVal4(
MainOrderTypeId int,MainImportMessageId int,DeliveredDate datetime,OrderTypeId int,MyFlag int,TableName nvarchar(100),
MainInvoiceNo bigint,InvoiceNo bigint,MotionDate datetime,MainAccNo nvarchar(100),SubAccNo bigint,Perc float,MainVal4 float,SubVal4 float)
go
drop table ImportMessageCostHistoryVal4Detailed
go
create table ImportMessageCostHistoryVal4Detailed(
MainOrderTypeId int,MainImportMessageId int,DeliveredDate datetime,OrderTypeId int,ImportMessageId int,MyFlag int,TableName nvarchar(100),
MainInvoiceNo bigint,InvoiceNo bigint,MotionDate datetime,MainAccNo nvarchar(100),SubAccNo bigint,MainPerc float,SubPerc float,Perc float,MainVal4 float,SubVal4 float,Val4 float)


