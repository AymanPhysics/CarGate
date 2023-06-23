CREATE TABLE [dbo].[CaseAttachments2Rooms](
	[RoomId] [int] NULL,
	[ReservId] [int] NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


