DROP TABLE [dbo].[DoctorsCompanies]
GO
CREATE TABLE [dbo].[DoctorsCompanies](
	[CompanyId] [int] NOT NULL,
	
	 VisitingTypeId [int] ,
     DegreeId [int] ,
     Price float,
     Payed float,
     Remaining float,
     Notes  nvarchar(1000),
        
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_DoctorsCompanies] PRIMARY KEY CLUSTERED 
(
	VisitingTypeId ASC,
	DegreeId ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)