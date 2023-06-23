CREATE NONCLUSTERED INDEX ix_sd_2
ON [dbo].[SalesDetails] ([ItemId],[Flag])
INCLUDE ([StoreId],[InvoiceNo],[Qty])
GO




CREATE NONCLUSTERED INDEX ix_sd_4
ON [dbo].[SalesDetails] (StoreId,[Flag],InvoiceNo)
INCLUDE (ItemId,[Qty])
GO

CREATE NONCLUSTERED INDEX ix_sm_4
ON [dbo].[Salesmaster] (DayDate)
INCLUDE (StoreId,[Flag],InvoiceNo,ToId,SaveId,BankId,Notes)
GO
