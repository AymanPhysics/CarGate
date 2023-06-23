drop table Entry
CREATE TABLE Entry(
	[InvoiceNo]  [int] NOT NULL,
	DayDate datetime,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)


drop table EntryDt
CREATE TABLE EntryDt(
	[InvoiceNo]  [int] NOT NULL,
	Debit float,
	Credit float,
	[MainAccNo] [int] NULL,
	[SubAccNo] [int] NULL,
	[CostCenterId] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[DocNo] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)
