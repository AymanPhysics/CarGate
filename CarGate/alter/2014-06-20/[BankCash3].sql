CREATE TABLE [dbo].[BankCash3](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NOT NULL,

	[MainAccNo] [varchar](100) NULL,
	[Value] [float] NULL,
	[Cash] [int] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CurrencyId] [int] NULL,
	ImportMessageId int, 
	StoreId int, 
	StoreInvoiceNo int
 CONSTRAINT [PK_BankCash3] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[Flag] ASC,
	[BankId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
