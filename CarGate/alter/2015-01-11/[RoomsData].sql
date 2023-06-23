CREATE TABLE [dbo].[RoomsData](
	[RoomId] [int] ,
	Id [int] ,
	CaseId [int] NULL,
	DayDate datetime,
	ExitDate datetime,
	IsCurrent [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_RoomsData] PRIMARY KEY CLUSTERED 
(
	[RoomId],[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


alter table [RoomsData] add Time nvarchar(100)