--DROP TABLE [dbo].[CasesHistoryAll]
GO

CREATE TABLE [dbo].[CasesHistoryAll](
	[InvoiceNo] [bigint] NULL,
	[CaseId] [bigint] NULL,
	[CaseName] [nvarchar](100) NULL,
	[TypeId] [bigint] NULL,
	[EntryDate] [datetime] NULL,
	[ExitGetDate] [datetime] NULL,
	[CaseTypeName] [varchar](4000) NULL,
	[Total] [float] NULL,
	[Discount] [float] NULL,
	[Value] [float] NULL,
	[Payed] [float] NULL,
	[Remaining] [float] NULL,
	[SurgeonId] [int] NULL,
	[T5_SurgeonName] [nvarchar](1000) NULL,
	[SurgeonId2] [int] NULL,
	[T10_SurgeonName2] [nvarchar](1000) NULL,
	[SurgeonId3] [int] NULL,
	[T10_SurgeonName3] [nvarchar](1000) NULL,
	[AnesthetistId] [int] NULL,
	[T10_AnesthetistName] [nvarchar](1000) NULL,
	[OperationTypeName] [nvarchar](max) NULL,
	[RoomName] [nvarchar](1000) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Line] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
