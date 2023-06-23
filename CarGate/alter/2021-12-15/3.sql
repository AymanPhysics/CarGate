ALTER TABLE [dbo].[InstallmentInvoicesMaster]ADD  CONSTRAINT [PK_InstallmentInvoicesMaster] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[InvoiceNo] ASC,
	[Flag] ASC
) 