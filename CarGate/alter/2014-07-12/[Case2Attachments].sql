 
CREATE TABLE [dbo].[Case2Attachments](
	[CaseId] [int] NOT NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


