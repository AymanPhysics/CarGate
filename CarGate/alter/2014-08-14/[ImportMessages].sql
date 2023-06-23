
/****** Object:  Table [dbo].[ImportMessages]    Script Date: 08/17/2014 17:10:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportMessages]') AND type in (N'U'))
DROP TABLE [dbo].[ImportMessages]
GO


CREATE TABLE [dbo].[ImportMessages](
	[StoreId] [int] not NULL,
	[Id] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[AccNo] [varchar](100) NULL,
	[DayDate] [datetime] NULL,
	[IsDelivered] [bigint] NULL,
	[DeliveredDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[OrderTypeId] [int] NULL,
	[ShipperId] [int] NULL,
	[ShippingLineId] [int] NULL,
	[ShippingCompanyId] [int] NULL,
	[ContainerSizeId] [int] NULL,
	[ContainerPrice] [float] NULL,
	[ContainerSizeCurrencyId] [int] NULL,
 CONSTRAINT [PK_ImportMessages] PRIMARY KEY CLUSTERED 
(
[StoreId] ,
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


