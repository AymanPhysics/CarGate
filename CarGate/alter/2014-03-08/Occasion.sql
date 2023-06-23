CREATE TABLE Occasion(
	[InvoiceNo] [int] NOT NULL,
	FromDate[datetime] NULL,
	FromHour int,
	FromMinute int,
	ToDate [datetime],
	ToHour int, 
	ToMinute int,
	
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)
)