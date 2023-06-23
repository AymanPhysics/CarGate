 

CREATE TABLE [dbo].[DeletedServices](
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[DrId] [int] NULL,
	[CsId] [int] NULL,
	[DrValue] [float] NULL,
	[CsValue] [float] NULL,
	[CoValue] [float] NULL,
	[Value] [float] NULL,
	[ServiceGroupId] [int] NULL,
	[ServiceTypeId] [int] NULL,
	[CaseId] [int] NULL,
	[Canceled] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[SerialId] [int] NULL,
	[Payed] [float] NULL,
	[Remaining] [float] NULL,
	[Done] [int] NULL,
	[RemainingDate] [datetime] NULL,
	[EmpIdReservation] [int] NULL,
	[EmpIdRemaining] [int] NULL,
	[EmpIdCanceled] [int] NULL,
	[CanceledDate] [datetime] NULL,
	[SerialId2] [int] NULL,
	[Returned] [int] NULL,
	[ReturnedDate] [datetime] NULL,
	[EmpIdReturned] [int] NULL,
	[IsEditing] [int] NULL,
	[MyLine] [int] NULL,
	[IsClosed] [int] NULL,
	[CompanyId] [bigint] NULL,
	[PreValue] [float] NULL,
	[PrePayed] [float] NULL,
	[PreRemaining] [float] NULL,
	[Qty] [float] NULL,
	[CurrentShift] [bigint] NULL,
	[InsertedDate] [datetime] NULL,
	[RefereId] [bigint] NULL,
	[Flag] [int] NOT NULL,
	[CaseInvoiceNo] [bigint] NOT NULL,
	[IsAutomatic] [int] NOT NULL,
	[IsPosted] [int] NULL,
	[LabEmpIdReservation] [int] NOT NULL,
	[LabDateTime] [datetime] NOT NULL,
	[IsLabToLab] [int] NOT NULL,
	[IsLabToLabDone] [int] NOT NULL,
	[IsLabToLabDoneEmpId] [int] NOT NULL,
	[IsLabToLabDoneGetdate] [datetime] NOT NULL,
	[IsLabToLabPrice] [float] NOT NULL,
	[EmpIdReservationDateTime] [datetime] NULL,
	[EmpIdRemainingDateTime] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [IsAutomatic]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [LabEmpIdReservation]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ('1900-01-01') FOR [LabDateTime]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [IsLabToLab]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [IsLabToLabDone]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [IsLabToLabDoneEmpId]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ('1900-1-1') FOR [IsLabToLabDoneGetdate]
GO

ALTER TABLE [dbo].[DeletedServices] ADD  DEFAULT ((0)) FOR [IsLabToLabPrice]
GO

