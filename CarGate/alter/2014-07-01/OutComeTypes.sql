select * from [dbo].OutComeTypes
drop TABLE [dbo].OutComeTypes
go
CREATE TABLE [dbo].OutComeTypes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Bal0] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[AccNo] [varchar](100) NULL,
	[CurrencyId] [int] DEFAULT (0),
 CONSTRAINT [PK_OutComeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].InComeTypes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Bal0] [float] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[AccNo] [varchar](100) NULL,
	[CurrencyId] [int] DEFAULT (0),
 CONSTRAINT [PK_InComeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
