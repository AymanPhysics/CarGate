 

CREATE TABLE [dbo].VisitingTypeDegrees(
	[DegreeId] [int] NOT NULL,
	[VisitingTypeId] [int] NOT NULL,
	[Price] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_VisitingTypeDegrees] PRIMARY KEY CLUSTERED 
(
	[VisitingTypeId] ASC,
	[DegreeId] ASC
)  
)