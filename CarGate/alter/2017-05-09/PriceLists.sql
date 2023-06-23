ct 'PriceLists'
go

CREATE TABLE ItemPriceLists(
	ItemId bigint NOT NULL,
	PriceListId [int] NOT NULL,
	SalesPrice float,
	SalesPriceSub float,
	SalesPriceSub2 float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ItemPriceLists] PRIMARY KEY CLUSTERED 
(
	ItemId,PriceListId
)
)