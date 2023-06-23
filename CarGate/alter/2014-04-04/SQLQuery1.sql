alter table MyImages alter column Notes nvarchar(4000)
alter table ReservationTests add Notes3 nvarchar(1000)
go
update ReservationTests set Notes3 =ISNULL(Notes3 ,'')
go

CREATE TABLE [dbo].[CasesComplaintDt](
	[CaseId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Daydate] [datetime] NULL,
	[Mykey] [int] NULL,
	[MyFlag] [nvarchar](100) NULL,
	
	Notes1 [nvarchar](100) NULL,
	Notes2 [nvarchar](100) NULL,
	
) 

