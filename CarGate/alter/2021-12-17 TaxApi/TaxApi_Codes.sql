 
CREATE TABLE TaxApi_Codes(
	[Id] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_TaxApi_Codes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)