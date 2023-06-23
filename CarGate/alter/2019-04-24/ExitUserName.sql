alter table RoomsData add ExitUserName int
alter table Tasks add PreventDone int

go
CREATE TABLE [dbo].[TasksUsers](
	[MyLine] [bigint]  NOT NULL,
	[UserName] [int] NOT NULL,
	[MyGetDate] [datetime] NOT NULL
) ON [PRIMARY]

GO

 
CREATE TABLE [dbo].InpatientDepartmentsSub(
	InpatientDepartmentId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_InpatientDepartmentsSub] PRIMARY KEY CLUSTERED 
(
	InpatientDepartmentId ASC,
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





alter table Clinics add InpatientDepartmentsSubId int not null default 0
alter table OperationsRooms add InpatientDepartmentsSubId int not null default 0
alter table RoomTypes add InpatientDepartmentsSubId int not null default 0
alter table Rooms add InpatientDepartmentsSubId int not null default 0
go
