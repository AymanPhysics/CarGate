CREATE TABLE [dbo].[ImportMessagesDetailsSub](
	[StoreId] [bigint] NULL,
	[Id] [bigint] NULL,
	[InvoiceNo] [bigint] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
	ItemId bigint,
	ItemName nvarchar(100),
	Qty float,
	Qty2 float,
	Price float,
	Value float,
	SerialNo nvarchar(100)
) ON [PRIMARY]

GO