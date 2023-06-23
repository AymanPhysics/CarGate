ALTER TABLE [dbo].[BankCash_G2] ADD  CONSTRAINT [PK_BankCash_G2] PRIMARY KEY CLUSTERED 
(
	[BankCash_G2TypeId] ASC,
	[InvoiceNo] ASC,
	[Flag] ASC,
	[Line] ASC
)