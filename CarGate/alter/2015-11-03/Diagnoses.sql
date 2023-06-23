CREATE TABLE DiagnoseGroups(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_DiagnoseGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)
GO
CREATE TABLE Diagnoses(
	[GroupId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_Diagnoses] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[Id] ASC
)
)

GO




alter table Reservations add Details2 nvarchar(400),Details3 nvarchar(400),Details4 nvarchar(400)