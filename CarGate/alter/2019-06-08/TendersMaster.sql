 
CREATE TABLE [dbo].TendersMaster(
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	
	ToId bigint , 
	ReservToId int , 
	Total float, 
	Temp int
	CONSTRAINT [PK_TendersMaster] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

go
alter table TendersMaster add Total2 float, Net float
GO
 

CREATE TABLE [dbo].TendersDetails(
	[InvoiceNo] [int] NOT NULL,
	
	[Barcode] [nvarchar](100) NULL, 
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[Value] [float] NULL, 
	
	[UnitId2] [int] NULL,
	[UnitQty2] [float] NULL,
	[Qty2] [float] NULL,
	[Price2] [float] NULL,
	[Value2] [float] NULL, 
	
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	SD_Notes nvarchar(1000),
	IsValid int
) ON [PRIMARY]

GO
 