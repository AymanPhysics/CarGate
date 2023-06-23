CREATE NONCLUSTERED INDEX ix_sm_51
ON [dbo].[SalesMaster] ([Temp],[Flag],[DayDate])
INCLUDE ([StoreId],[InvoiceNo],[ToId])
GO

