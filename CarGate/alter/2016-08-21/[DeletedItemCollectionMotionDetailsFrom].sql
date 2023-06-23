USE [OMEGA]
GO

/****** Object:  Table [dbo].[ItemCollectionMotionDetailsFrom]    Script Date: 08/23/2016 03:15:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DeletedItemCollectionMotionDetailsFrom](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
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
	[Line] [int]  ,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
	[SerialNo] [int] NULL,
	[AvgCost] [float] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DeletedItemCollectionMotionDetailsFrom] ADD  DEFAULT ((0)) FOR [SerialNo]
GO


