
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeletedSalesDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DeletedSalesDetails]
GO

CREATE TABLE [dbo].[DeletedSalesDetails](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[QtySub] [float] NULL,
	[PriceSub] [float] NULL,
	[Value] [float] NULL,
	[IsPrinted] [int] NULL,
	[Line] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
	[Color] [int] NULL,
	[Size] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


