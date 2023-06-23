 
CREATE NONCLUSTERED INDEX InstallmentInvoicesDateils_Id
ON [dbo].[InstallmentInvoicesDateils] ([Id])
INCLUDE ([StoreId],[ToId],[InvoiceNo],[Flag]) 