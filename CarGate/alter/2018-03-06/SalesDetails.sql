alter table SalesDetails add UnitsWeightId int
alter table DeletedSalesDetails add UnitsWeightId int

alter table SalesDetails add UnitsWeightQty float
alter table DeletedSalesDetails add UnitsWeightQty float

alter table SalesDetails add PreQty float
alter table DeletedSalesDetails add PreQty float


alter table SalesDetails add SalesPriceTypeId float
alter table DeletedSalesDetails add SalesPriceTypeId float


go
ct 'SalesPriceTypes'
go
delete SalesPriceTypes
insert SalesPriceTypes(id,name) select 1,'ÇáÓÚÑ ÍÓÈ ÇáßãíÉ'
insert SalesPriceTypes(id,name) select 2,'ÇáÓÚÑ ÍÓÈ ÇáÚÏÏ'


go

