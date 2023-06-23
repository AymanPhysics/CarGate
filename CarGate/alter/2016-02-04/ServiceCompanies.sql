 
CREATE TABLE [dbo].ServiceCompanies(
	[ServiceGroupId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	Price [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL, 
 CONSTRAINT [PK_ServiceCompanies] PRIMARY KEY CLUSTERED 
(
	[ServiceGroupId] ASC,
	[Id] ASC,
	CompanyId
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


