/****** Object:  Table [dbo].[ImportMessageCostHistoryVal4Detailed]    Script Date: 11/18/2015 19:26:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportMessageCostHistoryVal4Detailed]') AND type in (N'U'))
DROP TABLE [dbo].[ImportMessageCostHistoryVal4Detailed]
GO
CREATE TABLE [dbo].[ImportMessageCostHistoryVal4Detailed](
	[MainOrderTypeId] [int] NULL,
	[MainImportMessageId] [int] NULL,
	[DeliveredDate] [datetime] NULL,
	[OrderTypeId] [int] NULL,
	[ImportMessageId] [int] NULL,
	StoreId int,
	StoreInvoiceNo int,
	[MyFlag] [int] NULL,
	[TableName] [nvarchar](100) NULL,
	[MainInvoiceNo] [bigint] NULL,
	[InvoiceNo] [bigint] NULL,
	[MotionDate] [datetime] NULL,
	[MainAccNo] [nvarchar](100) NULL,
	[SubAccNo] [bigint] NULL,
	[MainPerc] [float] NULL,
	[SubPerc] [float] NULL,
	[Perc] [float] NULL,
	[MainVal4] [float] NULL,
	[SubVal4] [float] NULL,
	[Val4] [float] NULL
) ON [PRIMARY]

GO


