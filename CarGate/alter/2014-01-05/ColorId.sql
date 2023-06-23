CREATE TABLE Sizes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) 
go
CREATE TABLE SizesDetails(
	[SizeId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) 
go

CREATE TABLE ItemSizes(
	[ItemId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	Price float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) 
GO

--------------------------------
CREATE TABLE Colors(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) 
go
CREATE TABLE ColorsDetails(
	[ColorId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) 
go

alter table Items add SizeId int,ColorId int
go