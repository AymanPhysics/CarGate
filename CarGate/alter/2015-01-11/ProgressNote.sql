CREATE TABLE ProgressNote(
	[CaseId] [int] NOT NULL,
	[Daydate] [datetime] NULL,
	[AimOfTheDay] [nvarchar](max) NULL,
	[Problem] [nvarchar](max) NULL,
	CasePlan [nvarchar](max) NULL,
	Note [nvarchar](max) NULL,
	[DoctorId] [nvarchar](max) NULL,
	[Time] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


	