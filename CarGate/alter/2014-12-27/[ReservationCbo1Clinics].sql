CREATE TABLE [dbo].[ReservationCbo1Clinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo2Clinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo3Clinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CaseId] [int] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo4Clinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CaseId] [int] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationRaysClinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationTestsClinics](
	[ClinicId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes3] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
-----------------------------------------

CREATE TABLE [dbo].[ReservationCbo1Operations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo2Operations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo3Operations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CaseId] [int] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationCbo4Operations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[CaseId] [int] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationRaysOperations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ReservationTestsOperations](
	[OperationId] [int] NULL,
	[DayDate] [datetime] NULL,
	[ReservId] [int] NULL,
	[Notes1] [varchar](max) NULL,
	[Notes2] [varchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes3] [nvarchar](1000) NULL
) ON [PRIMARY]
GO


-----------------------------------------