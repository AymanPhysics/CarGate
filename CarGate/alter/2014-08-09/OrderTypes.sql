
CREATE TABLE [dbo].OrderTypes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Bal0] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[AccNo] [varchar](100) NULL,
	[CurrencyId] [int] NULL,
 CONSTRAINT [PK_OrderTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].OrderTypes ADD  DEFAULT ((0)) FOR [CurrencyId]
GO


