CREATE TABLE EmpShifts(
	[Id] [int] NOT NULL,
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	Morning int, 
	Afternoon int
 CONSTRAINT [PK_EmpShifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


