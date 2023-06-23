alter table entrydt add	
	[CostTypeId] [int] NULL,
	[PurchaseAccNo] [varchar](100) NULL,
	[ImportMessageId] [bigint] NULL,
	[StoreId] [bigint] NULL,
	[StoreInvoiceNo] [bigint] NULL
go
update entrydt set
	[CostTypeId] =0,
	[PurchaseAccNo] =0,
	[ImportMessageId] =0,
	[StoreId] =0,
	[StoreInvoiceNo] =0
	where [StoreInvoiceNo]  is null
go
alter table Entry2 add	
	[CostTypeId] [int] NULL,
	[PurchaseAccNo] [varchar](100) NULL,
	[ImportMessageId] [bigint] NULL,
	[StoreId] [bigint] NULL,
	[StoreInvoiceNo] [bigint] NULL
go
update Entry2 set
	[CostTypeId] =0,
	[PurchaseAccNo] =0,
	[ImportMessageId] =0,
	[StoreId] =0,
	[StoreInvoiceNo] =0
	where [StoreInvoiceNo]  is null
go
