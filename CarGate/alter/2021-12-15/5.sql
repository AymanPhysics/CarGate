
ALTER TABLE [dbo].[InstallmentInvoicesDateils] alter column StoreId int not null
ALTER TABLE [dbo].[InstallmentInvoicesDateils] alter column [InvoiceNo] bigint not null
ALTER TABLE [dbo].[InstallmentInvoicesDateils] alter column [Id] bigint not null 
ALTER TABLE [dbo].[InstallmentInvoicesDateils] alter column [Flag] int not null

go

alter TABLE [dbo].[InstallmentInvoicesDateils]add
 CONSTRAINT [PK_InstallmentInvoicesDateils] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[InvoiceNo] ASC,
	[Id] ASC,
	[Flag] ASC
)
 