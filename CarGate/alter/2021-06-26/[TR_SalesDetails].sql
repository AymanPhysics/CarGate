create trigger [dbo].[TR_SalesDetails] on [dbo].[SalesDetails]
FOR insert
as


declare @StoreId int,@Flag int,@InvoiceNo bigint
select @StoreId =StoreId ,@Flag =Flag ,@InvoiceNo =InvoiceNo from inserted


update SalesDetails
set UnitQty=1
where  UnitQty=0
and @StoreId =StoreId and @Flag =Flag and @InvoiceNo =InvoiceNo 

