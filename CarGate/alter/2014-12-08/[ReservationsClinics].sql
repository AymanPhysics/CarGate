drop TABLE [dbo].[ReservationsClinics]
go
CREATE TABLE [dbo].[ReservationsClinics](
	[ClinicId] [int] NOT NULL,
	[DayDate] [datetime] NOT NULL,
	[ReservId] [int] NOT NULL,
	[Time] [varchar](10) NULL,
	[CaseId] [int] NULL,
	[CaseName] [nvarchar](1000) NULL,
	[VisitingType] [int] NULL,
	[Value] [float] NULL,
	[Payed] [float] NULL,
	[Remaining] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[ReservationDate] [datetime] NULL,
	[Posted] [int] NULL,
	[Details] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Done] [int] NULL,
	[RemainingDate] [datetime] NULL,
	[SerialId] [int] NULL,
	[Canceled] [int] NULL,
	[EmpIdReservation] [int] NULL,
	[EmpIdRemaining] [int] NULL,
	[EmpIdCanceled] [int] NULL,
	[CanceledDate] [datetime] NULL,
	[SerialId2] [int] NULL,
	[Returned] [int] NULL,
	[ReturnedDate] [datetime] NULL,
	[EmpIdReturned] [int] NULL,
	[Utras] [nvarchar](1000) NULL,
	[Cervix] [nvarchar](1000) NULL,
	[Ovaries] [nvarchar](1000) NULL,
	[Valva] [nvarchar](1000) NULL,
	[Vagina] [nvarchar](1000) NULL,
	[E2] [nvarchar](1000) NULL,
	[HMG] [nvarchar](1000) NULL,
	[FSH] [nvarchar](1000) NULL,
	[Against] [nvarchar](1000) NULL,
	[Antagonist] [nvarchar](1000) NULL,
	[RT] [nvarchar](1000) NULL,
	[LT] [nvarchar](1000) NULL,
	[EEnd] [nvarchar](1000) NULL,
	[RRemarks] [nvarchar](1000) NULL,
	[PB] [nvarchar](1000) NULL,
	[Remarks1] [nvarchar](1000) NULL,
	[Remarks2] [nvarchar](1000) NULL,
	[NextVisitDate] [datetime] NULL,
	[Investigations] [nvarchar](1000) NULL,
	[IsEditing] [int] NULL,
	[MyLine] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ReservationsClinics] PRIMARY KEY CLUSTERED 
(
	[ClinicId] ASC,
	[DayDate] ASC,
	[ReservId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ReservationsClinics] ADD  CONSTRAINT [DF_ReservationsClinics_Posted]  DEFAULT ((0)) FOR [Posted]
GO


drop TABLE [dbo].[ReservationsOperations]
go
CREATE TABLE [dbo].[ReservationsOperations](
	OperationsRoomId [int] NOT NULL,
	[DayDate] [datetime] NOT NULL,
	[ReservId] [int] NOT NULL,
	[Time] [varchar](10) NULL,
	[CaseId] [int] NULL,
	[CaseName] [nvarchar](1000) NULL,
	[OperationType] [int] NULL,
	[Value] [float] NULL,
	[Payed] [float] NULL,
	[Remaining] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[ReservationDate] [datetime] NULL,
	[Posted] [int] NULL,
	[Details] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Done] [int] NULL,
	[RemainingDate] [datetime] NULL,
	[SerialId] [int] NULL,
	[Canceled] [int] NULL,
	[EmpIdReservation] [int] NULL,
	[EmpIdRemaining] [int] NULL,
	[EmpIdCanceled] [int] NULL,
	[CanceledDate] [datetime] NULL,
	[SerialId2] [int] NULL,
	[Returned] [int] NULL,
	[ReturnedDate] [datetime] NULL,
	[EmpIdReturned] [int] NULL,
	[Utras] [nvarchar](1000) NULL,
	[Cervix] [nvarchar](1000) NULL,
	[Ovaries] [nvarchar](1000) NULL,
	[Valva] [nvarchar](1000) NULL,
	[Vagina] [nvarchar](1000) NULL,
	[E2] [nvarchar](1000) NULL,
	[HMG] [nvarchar](1000) NULL,
	[FSH] [nvarchar](1000) NULL,
	[Against] [nvarchar](1000) NULL,
	[Antagonist] [nvarchar](1000) NULL,
	[RT] [nvarchar](1000) NULL,
	[LT] [nvarchar](1000) NULL,
	[EEnd] [nvarchar](1000) NULL,
	[RRemarks] [nvarchar](1000) NULL,
	[PB] [nvarchar](1000) NULL,
	[Remarks1] [nvarchar](1000) NULL,
	[Remarks2] [nvarchar](1000) NULL,
	[NextVisitDate] [datetime] NULL,
	[Investigations] [nvarchar](1000) NULL,
	[IsEditing] [int] NULL,
	[MyLine] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ReservationsOperations] PRIMARY KEY CLUSTERED 
(
	OperationsRoomId ASC,
	[DayDate] ASC,
	[ReservId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ReservationsOperations] ADD  CONSTRAINT [DF_ReservationsOperations_Posted]  DEFAULT ((0)) FOR [Posted]
GO


