drop TABLE CaseDataAttachments
CREATE TABLE CaseDataAttachments(
	[CaseId] [int] NOT NULL,
	Mykey nvarchar(100) NOT NULL,
	MyFlag nvarchar(100) NOT NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
