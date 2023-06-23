CREATE TABLE DeletedDeliveryOrderDetails(
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[Line] [int] ,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Qty2] [float] NULL,
	[Qty3] [float] NULL,
	[SD_Notes] [nvarchar](1000) NULL

	)
go

CREATE TABLE DeletedDeliveryOrderMaster(
[DeletedDate] [datetime] NULL,
[UserDelete] [int] NULL,
[LastLine] [int] NULL,
[State] [varchar](100) NULL,
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[ToId] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[Cashier] [int] NULL,
	[DocNo] [nvarchar](100) NULL,
	[Temp] [int] NULL,
	[InsertDate] [datetime] NULL,
	[InsertUser] [int] NULL,
)
go
