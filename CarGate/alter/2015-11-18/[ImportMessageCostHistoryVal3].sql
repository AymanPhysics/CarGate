/****** Object:  Table [dbo].[ImportMessageCostHistoryVal3]    Script Date: 11/18/2015 19:22:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportMessageCostHistoryVal3]') AND type in (N'U'))
DROP TABLE [dbo].[ImportMessageCostHistoryVal3]
GO

CREATE TABLE [dbo].[ImportMessageCostHistoryVal3](
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
	[Perc] [float] NULL,
	[MainVal3] [float] NULL,
	[Val3] [float] NULL
) ON [PRIMARY]

GO


