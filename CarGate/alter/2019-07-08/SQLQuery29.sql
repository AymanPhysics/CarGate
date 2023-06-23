CREATE NONCLUSTERED INDEX ix_sm_1
ON [dbo].[SalesMaster] ([Temp],[Flag],[DayDate])
INCLUDE ([StoreId],[InvoiceNo])
GO
