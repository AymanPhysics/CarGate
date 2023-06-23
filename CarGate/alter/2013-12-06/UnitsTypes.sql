USE [OMEGA]
GO

/****** Object:  Table [dbo].[Appartements]    Script Date: 12/06/2013 08:34:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].UnitsTypes(
	BuildingId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Discription] [nvarchar](1000) NULL,
	Price decimal(20,0) NULL,
	[Area] [decimal](20, 0) NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


