CREATE NONCLUSTERED INDEX ix_p_1
ON [dbo].[ProductionItemCollectionMotionMaster] ([Temp],[Flag],[DayDate])
INCLUDE ([StoreId],[InvoiceNo],[OreStoreId])
GO

