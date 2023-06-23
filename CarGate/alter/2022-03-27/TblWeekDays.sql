ct TblWeekDays
go
delete TblWeekDays
insert TblWeekDays(id,name) select 1,'Saturday'
insert TblWeekDays(id,name) select 2,'Sunday'
insert TblWeekDays(id,name) select 3,'Monday'
insert TblWeekDays(id,name) select 4,'Tuesday'
insert TblWeekDays(id,name) select 5,'Wednesday'
insert TblWeekDays(id,name) select 6,'Thursday'
insert TblWeekDays(id,name) select 7,'Friday'

 go
  
GO

CREATE TABLE [dbo].[BankCash62](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	TblWeekDayId [int] NOT NULL,
	[TeacherId] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[InsertDate] [datetime] NULL,
	[InsertUser] [int] NULL,
	[StoreId] [int] NULL,
	[RoomId] [int] NULL,
	[OpenningHoursFrom] [int] NULL,
	[OpenningHoursTo] [int] NULL,
 CONSTRAINT [PK_BankCash62] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[Flag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BankCash62] ADD  DEFAULT (getdate()) FOR [InsertDate]
GO

