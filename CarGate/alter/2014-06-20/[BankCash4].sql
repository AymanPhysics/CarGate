CREATE TABLE [dbo].[BankCash4](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NOT NULL,
	MoneyChangerId [int] NULL,
	Qty [float] , 
	Price [float] ,
	[Value] [float] NULL,
	
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CurrencyId] [int] NULL,
 CONSTRAINT [PK_BankCash4] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[Flag] ASC,
	[BankId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

