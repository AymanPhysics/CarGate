
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ItemColle__Seria__1EDA6409]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ItemCollectionMotionDetails] DROP CONSTRAINT [DF__ItemColle__Seria__1EDA6409]
END
GO
DROP TABLE [dbo].[ItemCollectionMotionDetails]
GO

CREATE TABLE [dbo].[ItemCollectionMotionDetails](
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NULL,
	[DayDate] [datetime] NULL,
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

ALTER TABLE [dbo].[ItemCollectionMotionDetails] ADD  DEFAULT ((0)) FOR [SerialNo]
GO


