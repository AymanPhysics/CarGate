CREATE TABLE TeachersPayments(
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	GroupId[int] NOT NULL,
	TypeId[int] NOT NULL,
	[Value] [float] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
 CONSTRAINT [PK_TeachersPayments] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo]
)
)
