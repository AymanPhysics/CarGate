
CREATE TABLE [dbo].[DeletedBankCash_G2](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	[BankCash_G2TypeId] [int] NOT NULL,
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
	[StoreInvoiceNo] [bigint] NULL,
	[Exchange] [float] NULL,
	[MainValue] [float] NULL,
	[CheckTypeId] [int] NULL,
	[CheckNo] [nvarchar](100) NULL,
	[CheckDate] [datetime] NULL,
	[CheckBankId] [int] NULL,
	[CurrencyId2] [int] NULL,
	[MainValue2] [float] NULL,
	[Exchange2] [float] NULL,
	[MainLinkFile] [int] NULL,
	[MainValue2Ded] [float] NULL,
	[Value2Ded] [float] NULL,
	[DedNotes] [nvarchar](100) NULL,
	[Line] [bigint] ,
	[SystemUser] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DeletedBankCash_G2] ADD  DEFAULT ((0)) FOR [BankCash_G2TypeId]
GO

ALTER TABLE [dbo].[DeletedBankCash_G2] ADD  DEFAULT ((0)) FOR [CostTypeId]
GO

ALTER TABLE [dbo].[DeletedBankCash_G2] ADD  DEFAULT ((0)) FOR [LinkFile]
GO


