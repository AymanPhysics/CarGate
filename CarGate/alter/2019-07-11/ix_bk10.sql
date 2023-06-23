CREATE NONCLUSTERED INDEX ix_bk10
ON [dbo].[BankCash_G2] ([Canceled],[CheckNo],[CheckTypeId])
INCLUDE ([BankCash_G2TypeId],[InvoiceNo],[Flag],[BankId],[CostTypeId],[LinkFile],[SubAccNo],[Value],[Notes],[CostCenterId],[PurchaseAccNo],[ImportMessageId],[StoreId],[StoreInvoiceNo],[CurrencyId2],[MainValue2],[MainLinkFile],[AnalysisId],[CostCenterSubId],[MainAccNo])
