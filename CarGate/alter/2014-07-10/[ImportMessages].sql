DROP TABLE [dbo].[ImportMessages]
CREATE TABLE [dbo].[ImportMessages](
	[Id] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[AccNo] [varchar](100) NULL,
	[DayDate] [datetime] NULL,
	[IsDelivered] [bigint] NULL,
	[DeliveredDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ImportMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
