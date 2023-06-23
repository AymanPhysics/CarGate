CREATE TABLE OperationDescriptions(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	DegreeId int,
	Value float,
	Dr1Perc float,
	Dr2Perc float,
	Dr3Perc float,
	AnesthetistPerc float,
	RoomValue float,
	InsAmount float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)
go
alter table OperationTypes add OperationDescriptionId int
go
CREATE TABLE OperationPackageDescriptions(
	OperationTypeId [int] NOT NULL,
	DegreeId int,
	Value float,
	Dr1Perc float,
	Dr2Perc float,
	Dr3Perc float,
	AnesthetistPerc float,
	RoomValue float,
	InsAmount float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)