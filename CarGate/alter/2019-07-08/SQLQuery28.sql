CREATE NONCLUSTERED INDEX ix_sd_3
ON [dbo].[SalesDetails] ([Flag])
INCLUDE ([StoreId],[InvoiceNo],[ItemId],[Qty],[UnitQty],[AvgCost])
