--alter table RoomsDataPayments add Notes nvarchar(1000)



CREATE TABLE [dbo].[RoomsDataPayments](
	[RoomId] [int] NULL,
	[Id] [int] NULL,
	[IsCurrent] [int] NULL,
	[Value] [float] NULL,
	[UserNameId] [int] NULL,
	[UserFullName] [nvarchar](1000) NULL,
	[CurrentShift] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[Notes] [nvarchar](1000) NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[RoomsDataPayments] ADD  DEFAULT (getdate()) FOR [MyGetDate]
GO

