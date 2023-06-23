CREATE NONCLUSTERED INDEX ix_bk_5
ON [dbo].[BankCash_G2] ([Canceled],[CheckNo],[CheckTypeId])
INCLUDE ([BankCash_G2TypeId],[InvoiceNo],[Flag],[BankId],[CostTypeId],[LinkFile],[SubAccNo],[Value],[Notes],[CostCenterId],[CurrencyId],[PurchaseAccNo],[ImportMessageId],[StoreId],[StoreInvoiceNo],[MainValue],[MainLinkFile],[AnalysisId],[CostCenterSubId])
GO
