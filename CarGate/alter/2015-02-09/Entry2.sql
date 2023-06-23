CREATE TABLE [dbo].[Entry2](
	[InvoiceNo] [int] NOT NULL,
	Flag int,
	[DayDate] [datetime] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
	Value float, 
	Value1 float, 
	MainAccNo1 [nvarchar](100), 
	SubAccNo1 bigint, 
	CurrencyId1 bigint, 
	Value2 float, 
	MainAccNo2 [nvarchar](100), 
	SubAccNo2 bigint, 
	CurrencyId2 bigint, 
	Canceled int
 CONSTRAINT [PK_Entry2] PRIMARY KEY CLUSTERED 
(
	Flag,[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

