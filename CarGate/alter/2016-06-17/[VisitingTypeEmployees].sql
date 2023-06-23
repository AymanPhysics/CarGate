CREATE TABLE [dbo].[VisitingTypeEmployees](
	[EmpId] [int] NOT NULL,
	[VisitingTypeId] [int] NOT NULL,
	[Price] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_VisitingTypeEmployees] PRIMARY KEY CLUSTERED 
(
	[VisitingTypeId] ASC,
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
insert VisitingTypeEmployees([EmpId],[VisitingTypeId],[Price]) select [Id],1,DetectionPrice from Employees where Doctor=1
insert VisitingTypeEmployees([EmpId],[VisitingTypeId],[Price]) select [Id],2,ConsultationPrice from Employees where Doctor=1
