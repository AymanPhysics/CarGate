CREATE NONCLUSTERED INDEX ix_p_2
ON [dbo].[ProductionItemCollectionMotionMaster] ([Temp],[Flag],[DayDate])
INCLUDE ([StoreId],[ItemId],[Qty],[AvgCost])
GO
