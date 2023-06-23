USE [OMEGA]
GO

/****** Object:  Table [dbo].[ItemCollectionMotionMaster]    Script Date: 08/23/2016 03:15:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DeletedItemCollectionMotionMaster](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[DocNo] [varchar](4000) NULL,
	[ItemId] [bigint] NULL,
	[MainQty] [float] NULL,
	[MotionTypeId] [int] NULL,
	[Temp] [int] NULL,
	[SystemUser] [int] NOT NULL) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DeletedItemCollectionMotionMaster] ADD  DEFAULT ((0)) FOR [SystemUser]
GO


