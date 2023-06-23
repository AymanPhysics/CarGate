CREATE NONCLUSTERED INDEX ix_sd_1
ON [dbo].[SalesDetails] ([Flag])
INCLUDE ([StoreId],[InvoiceNo],[ItemId],[Qty])
