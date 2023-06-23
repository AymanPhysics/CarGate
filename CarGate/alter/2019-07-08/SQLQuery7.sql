CREATE NONCLUSTERED INDEX ix_Imp_2
ON [dbo].[ImportMessageCostHistoryVal4] ([DeliveredDate])
INCLUDE ([MainOrderTypeId],[MainImportMessageId],[OrderTypeId],[MainAccNo],[SubAccNo],[SubVal4])
GO

