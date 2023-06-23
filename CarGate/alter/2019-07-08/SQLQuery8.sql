CREATE NONCLUSTERED INDEX ix_bk_2
ON [dbo].[BankCash_G2] ([Canceled],[CostTypeId])
INCLUDE ([InvoiceNo],[Flag],[DayDate],[LinkFile],[SubAccNo],[Value],[Notes],[CostCenterId],[PurchaseAccNo],[ImportMessageId],[StoreId],[StoreInvoiceNo],[CheckTypeId],[CheckNo],[CurrencyId2],[MainValue2],[AnalysisId],[CostCenterSubId],[MainAccNo])
GO

