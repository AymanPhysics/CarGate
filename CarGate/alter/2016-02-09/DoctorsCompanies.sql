

drop TABLE [dbo].DoctorsCompanies
go
CREATE TABLE [dbo].DoctorsCompanies(
	DoctorId [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	DetectionPrice [float] NULL,
	ConsultationPrice float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_DoctorsCompanies] PRIMARY KEY CLUSTERED 
(
	DoctorId ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


