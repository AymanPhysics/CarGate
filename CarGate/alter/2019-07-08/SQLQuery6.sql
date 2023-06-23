CREATE NONCLUSTERED INDEX ix_Imp_1
ON [dbo].[ImportMessageCostHistoryVal4] ([DeliveredDate])
INCLUDE ([MainOrderTypeId],[MainImportMessageId],[OrderTypeId],[SubVal4])
GO
