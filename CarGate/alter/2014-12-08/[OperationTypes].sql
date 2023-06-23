CREATE TABLE [dbo].[OperationTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[SerialId] [int] NULL,
 CONSTRAINT [PK_OperationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


