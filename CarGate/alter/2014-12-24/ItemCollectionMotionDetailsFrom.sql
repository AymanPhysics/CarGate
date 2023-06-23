CREATE TABLE ItemCollectionMotionDetailsFrom(
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NULL,
	[DayDate] [datetime] NULL,
	[MainItemId] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[TotalQty] [float] NULL,
	[Price] [float] NULL,
	[Value] [float] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
	[SerialNo] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].ItemCollectionMotionDetailsFrom ADD  DEFAULT ((0)) FOR [SerialNo]
GO


CREATE TABLE ItemCollectionMotionDetailsTo(
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NULL,
	[DayDate] [datetime] NULL,
	[MainItemId] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[TotalQty] [float] NULL,
	[Price] [float] NULL,
	[Value] [float] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
	[SerialNo] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].ItemCollectionMotionDetailsTo ADD  DEFAULT ((0)) FOR [SerialNo]
GO


