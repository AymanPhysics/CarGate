 

CREATE TABLE [dbo].ItemCollections(
	[MainItemId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Unit] [nvarchar](1000) NULL,
	[Qty] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemCollections] PRIMARY KEY CLUSTERED 
(
	[MainItemId] ASC,
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


