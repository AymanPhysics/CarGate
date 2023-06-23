 
CREATE TABLE [dbo].[DeletedBankCash6](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	 
	[InvoiceNo] [int] NOT NULL,
	[Flag] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[BankId] [int] NOT NULL,
	[TeacherId] [int] NULL,
	[CenterValue] [float] NULL,
	[TeacherValue] [float] NULL,
	[Value] [float] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CustomerId] [bigint] NULL,
	[InsertDate] [datetime] NULL,
	[InsertUser] [int] NULL,
 )  