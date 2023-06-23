create table ImportMessages
(AccNo varchar(100),
Id bigint,
Name  varchar(100),
DayDate datetime,
IsDelivered bigint,
DeliveredDate datetime,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ImportMessages] PRIMARY KEY CLUSTERED 
(
	AccNo,[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
go
create table ImportMessagesDetails
(AccNo varchar(100),
Id bigint,
StoreId bigint,
 InvoiceNo bigint,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 )