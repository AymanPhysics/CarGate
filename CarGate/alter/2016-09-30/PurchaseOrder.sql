alter table Salesmaster add PurchaseOrder bigint
alter table deletedSalesmaster add PurchaseOrder bigint
go
update Salesmaster set PurchaseOrder =0 where PurchaseOrder  is null
update deletedSalesmaster set PurchaseOrder =0 where PurchaseOrder  is null
go
