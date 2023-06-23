CREATE TABLE Assets(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Bal0] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[AccNo] [varchar](100) NULL,
	[Address] [nvarchar](1000) NULL,
	[Tel] [nvarchar](1000) NULL,
	[Mobile] [nvarchar](1000) NULL,
	[CurrencyId] [int] NULL,
	[ApplyCurrencyCycle] [int] NULL,
	[MainBal0] [float] NULL,
	[Exchange] [float] NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].Assets ADD  DEFAULT ((0)) FOR [CurrencyId]
GO

ALTER TABLE [dbo].Assets ADD  DEFAULT ((0)) FOR [MainBal0]
GO

ALTER TABLE [dbo].Assets ADD  DEFAULT ((1)) FOR [Exchange]
GO


