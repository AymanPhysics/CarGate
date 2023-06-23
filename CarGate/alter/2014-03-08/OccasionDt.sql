CREATE TABLE [dbo].OccasionDt(
	[InvoiceNo] [int] NOT NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	
	SalesPrice [float] NULL,
	DiscPerc [float] NULL,
	DiscValue [float] NULL,
	SalesPriceAfter [float] NULL,
	
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
) ON [PRIMARY]
