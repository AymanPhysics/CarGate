
ALTER TABLE [dbo].[InstallmentInvoicesDateilsPayments] alter column StoreId int not null
ALTER TABLE [dbo].[InstallmentInvoicesDateilsPayments] alter column [InvoiceNo] bigint not null
ALTER TABLE [dbo].[InstallmentInvoicesDateilsPayments] alter column [Id] bigint not null
ALTER TABLE [dbo].[InstallmentInvoicesDateilsPayments] alter column [PaymentsInvoiceNo] bigint not null
ALTER TABLE [dbo].[InstallmentInvoicesDateilsPayments] alter column [Flag] int not null


go

alter TABLE [dbo].[InstallmentInvoicesDateilsPayments] 
add CONSTRAINT [PK_InstallmentInvoicesDateilsPayments] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[InvoiceNo] ASC,
	[Id] ASC,
	[PaymentsInvoiceNo] ASC,
	[Flag] ASC
) 
