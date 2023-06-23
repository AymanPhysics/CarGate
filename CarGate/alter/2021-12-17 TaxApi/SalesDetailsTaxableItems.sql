
CREATE TABLE SalesDetailsTaxableItems(
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[ItemId] [int] NULL,
	AccNo [bigint] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[rate] [float] NOT NULL,
	[amount] [float] NOT NULL,
 CONSTRAINT [PK_SalesDetailsTaxableItems] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[Flag] ASC,
	[InvoiceNo] ASC,
	[Line] ASC
) ) ON [PRIMARY]
GO
