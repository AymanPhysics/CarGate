alter table SalesDetails add ReceivedQty float
alter table deletedSalesDetails add ReceivedQty float
go
update SalesDetails set ReceivedQty =0
update deletedSalesDetails set ReceivedQty =0

