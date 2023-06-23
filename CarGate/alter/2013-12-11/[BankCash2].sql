CREATE TABLE [dbo].[BankCash2](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NULL,
	OutComeTypeId [int] NULL,
	[Value] [decimal](12, 2) NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CostCenterId] [int] NULL
) ON [PRIMARY]

GO


