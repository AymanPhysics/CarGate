--drop table SalesDeliveryHistory
go
create table SalesDeliveryHistory(StoreId int,InvoiceNo bigint,DayDate datetime,
CustomerId int,Bal0 float,SalesDetailsInvoiceNo bigint,SalesDetailsLine bigint,
UserName int,MyGetDate datetime default(GetDate()),SalesManId int)