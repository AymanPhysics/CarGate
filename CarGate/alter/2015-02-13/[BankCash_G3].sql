CREATE TABLE [dbo].[BankCash_G3](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[LinkFile] [int] NULL,
	
	FromSubAccNo [bigint] NULL,
	ToSubAccNo [bigint] NULL,
	
	[Value] [float] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CurrencyId] [int] NULL,
	[DocNo] [nvarchar](1000) NULL,
	[Exchange] [float] NULL,
	[MainValue] [float] NULL,
) ON [PRIMARY]
