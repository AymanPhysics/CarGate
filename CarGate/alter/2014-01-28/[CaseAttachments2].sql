CREATE TABLE [dbo].[CaseAttachments2](
	EmpId int,
	DayDate datetime,
	ReservId int,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) 
