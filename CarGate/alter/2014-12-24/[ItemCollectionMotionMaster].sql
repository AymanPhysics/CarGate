IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemCollectionMotionMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ItemCollectionMotionMaster]
GO
CREATE TABLE [dbo].[ItemCollectionMotionMaster](
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[DocNo] [varchar](4000) NULL,
	[ItemId] [bigint] NULL,
	[MainQty] [float] NULL,
 CONSTRAINT [PK_ItemCollectionMotionMaster] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


