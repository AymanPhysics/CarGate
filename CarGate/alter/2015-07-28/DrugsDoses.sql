CREATE TABLE DrugsDoses(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Name2] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_DrugsDoses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)
