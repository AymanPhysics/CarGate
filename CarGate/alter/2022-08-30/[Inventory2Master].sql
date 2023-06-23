 
CREATE TABLE [dbo].[Inventory2Master](
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DocNo] [nvarchar](100) NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[InInvoiceNo] [int] NULL,
	[OutInvoiceNo] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
 CONSTRAINT [PK_Inventory2Master] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC,
	[InvoiceNo] ASC
) ) ON [PRIMARY]
GO


