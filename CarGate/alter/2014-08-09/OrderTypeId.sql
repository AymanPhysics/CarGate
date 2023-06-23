alter table SalesMaster add OrderTypeId int
alter table deletedSalesMaster add OrderTypeId int
go
update SalesMaster set OrderTypeId =0
update deletedSalesMaster set OrderTypeId =0
go
alter table ImportMessages add OrderTypeId int
go
update ImportMessages set OrderTypeId =0
go
