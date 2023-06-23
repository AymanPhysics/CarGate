alter table ConferencesMaster add IsAttend int not null default 0
go
alter table Services add LabEmpIdReservation int not null default 0, LabDateTime datetime not null default '1900-01-01'
alter table Services add IsLabToLab int not null default 0
go
alter table deletedServices add LabEmpIdReservation int not null default 0, LabDateTime datetime not null default '1900-01-01'
alter table deletedServices add IsLabToLab int not null default 0
go
ct LabToLab
go
delete LabToLab
insert LabToLab(id,name) select 1,'Lab To Lab'

go

/****** Object:  Table [dbo].[ReservationsRoomsCanceled]    Script Date: 10/23/2019 08:56:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReservationsRoomsCanceled]') AND type in (N'U'))
DROP TABLE [dbo].[ReservationsRoomsCanceled]
GO



CREATE TABLE [dbo].[ReservationsRoomsCanceled](
	[RoomId] [int] NOT NULL,
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
	[MyLine] [int] NOT NULL,
	[OperationDetails] [nvarchar](1000) NULL,
	[PostOperativeDiagnosis] [nvarchar](1000) NULL,
	[PathologySpecimen] [nvarchar](1000) NULL,
	[ClinicalData] [nvarchar](1000) NULL,
	[Recomendation] [nvarchar](1000) NULL,
	[SurgeonId] [int] NULL,
	[AssistantSurgeonId] [int] NULL,
	[AnesthetistId] [int] NULL,
	[ScrubNurseId] [int] NULL,
	[HH1] [int] NULL,
	[MM1] [int] NULL,
	[Index1] [int] NULL,
	[HH2] [int] NULL,
	[MM2] [int] NULL,
	[Index2] [int] NULL,
	[OperationType2] [int] NULL,
	[OperationType3] [int] NULL,
	[NurseId] [int] NULL,
	[SurgeonId2] [int] NULL,
	[SurgeonId3] [int] NULL,
	[Outdate] [datetime] NULL
) ON [PRIMARY]

GO
