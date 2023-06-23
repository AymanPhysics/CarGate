
/****** Object:  Table [dbo].[ImportMessagesDetails]    Script Date: 08/17/2014 17:11:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportMessagesDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ImportMessagesDetails]
GO


CREATE TABLE [dbo].[ImportMessagesDetails](
	[StoreId] [bigint] NULL,
	[Id] [bigint] NULL,
	[InvoiceNo] [bigint] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[SupplierId] [bigint] NULL,
	[SupplierName] [nvarchar](100) NULL
) ON [PRIMARY]

GO


