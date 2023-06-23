USE [OMEGA]
GO

/****** Object:  Table [dbo].[Teachers]    Script Date: 11/14/2017 11:17:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

drop TABLE [dbo].[Teachers]
go
CREATE TABLE [dbo].[Teachers](
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
	[MainBal0] [float] NULL,
	[Exchange] [float] NULL,
	[ApplyCurrencyCycle] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


