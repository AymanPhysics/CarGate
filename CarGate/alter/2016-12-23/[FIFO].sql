DROP TABLE [dbo].[FIFO]
GO
CREATE TABLE [dbo].[FIFO](
	[TableIndex] [int] NULL,
	[TableName] [nvarchar](100) NULL,
	[TblLine] [int] NULL,
	[MainTableIndex] [int] NULL,
	[MainTableName] [nvarchar](100) NULL,
	[MainLine] [bigint] NULL,
	[MainFlag] [int] NULL,
	[MainInvoiceNo] [int] NULL,
	[MainPrice] [float] NULL,
	[StoreId] [bigint] NULL,
	[Flag] [int] NULL,
	[InvoiceNo] [bigint] NULL,
	[DayDate] [datetime] NULL,
	[ItemId] [bigint] NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[PriceDate] [datetime] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
) ON [PRIMARY]
