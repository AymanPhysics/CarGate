CREATE TABLE [dbo].[DeliveryOrderMaster](
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
 CONSTRAINT [PK_DeliveryOrder] PRIMARY KEY CLUSTERED 
(
	[Flag] ASC,
	[StoreId] ASC,
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

go
ALTER TABLE DeliveryOrderMaster ADD  DEFAULT (getdate()) FOR [InsertDate]
GO


