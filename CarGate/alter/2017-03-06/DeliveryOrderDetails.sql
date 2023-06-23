CREATE TABLE [dbo].DeliveryOrderDetails(
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Qty2] [float] NULL,
	[Qty3] [float] NULL,
	[SD_Notes] [nvarchar](1000) NULL
) ON [PRIMARY]

GO
