CREATE TABLE [dbo].[CaseAttachments2Clinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[CaseAttachments2Operations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
