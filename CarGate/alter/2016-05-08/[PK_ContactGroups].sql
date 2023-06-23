CREATE TABLE [dbo].ContactGroups(
	[Id] [int] NOT NULL,
	[Name] [varchar](4000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ContactGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)
go
CREATE TABLE [dbo].ContactTypes(
	ContactGroupId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [varchar](4000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ContactContactTypes] PRIMARY KEY CLUSTERED 
(
	ContactGroupId ,[Id] ASC
)
)
go
drop TABLE [dbo].Contacts
go
CREATE TABLE [dbo].Contacts(
	Line [int] identity(1,1),
	CallerId [varchar](100) NULL,
	CallerName [varchar](4000) NULL,
	ContactGroupId int,
	ContactTypeId int,
	Address1 [varchar](4000) NULL,
	Address2 [varchar](4000) NULL,
	Email [varchar](4000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
)


