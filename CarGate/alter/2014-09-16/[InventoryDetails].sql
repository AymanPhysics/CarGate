--drop table [InventoryDetails]
CREATE TABLE [dbo].[InventoryDetails](
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[CurrentBal] [float] NULL,
	[RealBal] [float] NULL,
	[Deference] [float] NULL,
	Barcode nvarchar(100),
	Color bigint,
	Size bigint,
	UnitQty float,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL
) ON [PRIMARY]

GO


