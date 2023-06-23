 
CREATE NONCLUSTERED INDEX InstallmentInvoicesMaster_AddedValue
ON [dbo].[InstallmentInvoicesMaster] ([AddedValue])
INCLUDE ([StoreId],[InvoiceNo],[Flag])
GO

