alter TABLE RoomsData add
	[CaseName] [nvarchar](1000) NULL,
	[OperationType] [int] NULL,
	[Value] [float] NULL,
	[Payed] [float] NULL,
	[Remaining] [float] NULL,
	[ReservationDate] [datetime] NULL,
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
	RoomDetails [nvarchar](1000) NULL,
	[PostOperativeDiagnosis] [nvarchar](1000) NULL,
	[PathologySpecimen] [nvarchar](1000) NULL,
	[ClinicalData] [nvarchar](1000) NULL,
	[Recomendation] [nvarchar](1000) NULL,
	[SurgeonId] [int] NULL,
	[AssistantSurgeonId] [int] NULL,
	[AnesthetistId] [int] NULL,
	[ScrubNurseId] [int] NULL