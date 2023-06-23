drop TABLE [dbo].[BankCash_G2]
go
CREATE TABLE [dbo].[BankCash_G2](
	BankCash_G2TypeId int not null,
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NULL,
	[CostTypeId] [int] NULL,
	[LinkFile] [int] NULL,
	[SubAccNo] [int] NULL,
	[Value] [float] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CostCenterId] [int] NULL,
	[CurrencyId] [int] NULL,
	[DocNo] [nvarchar](1000) NULL,
	[PurchaseAccNo] [varchar](100) NULL,
	[ImportMessageId] [bigint] NULL,
	[StoreId] [bigint] NULL,
	[StoreInvoiceNo] [bigint] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[BankCash_G2] ADD  DEFAULT ((0)) FOR [CostTypeId]
GO

ALTER TABLE [dbo].[BankCash_G2] ADD  DEFAULT ((0)) FOR [LinkFile]
GO


ALTER TABLE [dbo].[BankCash_G2] ADD  DEFAULT ((0)) FOR BankCash_G2TypeId 
GO

