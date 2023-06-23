CREATE TABLE RoomsNames(
	MainId int,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_RoomsNames] PRIMARY KEY CLUSTERED 
(
	MainId,[Id] ASC
)
)
go
CREATE TABLE ClinicsNames(
	MainId int,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ClinicsNames] PRIMARY KEY CLUSTERED 
(
	MainId,[Id] ASC
)
)
go
CREATE TABLE OperationsRoomsNames(
	MainId int,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_OperationsRoomsNames] PRIMARY KEY CLUSTERED 
(
	MainId,[Id] ASC
)
)
go

go
CREATE TABLE RoomTypesNames(
	MainId int,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_RoomTypesNames] PRIMARY KEY CLUSTERED 
(
	MainId,[Id] ASC
)
)
go
