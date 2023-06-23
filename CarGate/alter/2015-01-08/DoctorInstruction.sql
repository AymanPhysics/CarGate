drop TABLE DoctorInstruction
go
CREATE TABLE DoctorInstruction(
	[CaseId] [int] NOT NULL,
	[Daydate] datetime NULL,
	
	AimOfTheDay [nvarchar](max) NULL,
	Notes [nvarchar](max) NULL,
	
	DrugId [nvarchar](max) ,
	DoseId [nvarchar](max) ,
	RouteId [nvarchar](max) ,
	DoctorId [nvarchar](max) ,
	Time [nvarchar](max) NULL,
	NurseId [nvarchar](max)  NULL,
	
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


