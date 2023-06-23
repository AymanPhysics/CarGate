USE [OMEGA]
GO

/****** Object:  Table [dbo].[Appartements]    Script Date: 12/06/2013 07:58:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appartements]') AND type in (N'U'))
DROP TABLE [dbo].[Appartements]
GO

USE [OMEGA]
GO

/****** Object:  Table [dbo].[Appartements]    Script Date: 12/06/2013 07:58:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Appartements](
	BuildingId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Discription] [nvarchar](1000) NULL,
	[Floor] [nvarchar](100) NULL,
	[Area] [decimal](20, 0) NULL,
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


