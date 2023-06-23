 

CREATE TABLE [dbo].[Inventory2Details](
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[CurrentBal] [float] NULL,
	Qty [float] NULL, 
	[Barcode] [nvarchar](100) NULL, 
	[UnitQty] [float] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[SalesPrice] [float] NULL
) ON [PRIMARY]
GO


