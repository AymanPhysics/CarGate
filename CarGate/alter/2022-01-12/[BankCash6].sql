 

--drop TABLE [dbo].[BankCash6]
go
CREATE TABLE [dbo].[BankCash6](
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NOT NULL,
	[TeacherId] [int] NULL,
	CenterValue [float] NULL,
	TeacherValue [float] NULL,
	[Value] [float] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	CustomerId [bigint] NULL,
	[InsertDate] [datetime] NULL,
	[InsertUser] [int] NULL,
 CONSTRAINT [PK_BankCash6] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC,
	[Flag] ASC,
	[BankId] ASC
) ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BankCash6] ADD  DEFAULT (getdate()) FOR [InsertDate]
GO


