 
CREATE TABLE [dbo].CallCenterCategories( 
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL, 
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_CallCenterCategoriess] PRIMARY KEY CLUSTERED 
( 
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


CREATE TABLE [dbo].CallCenter( 
	Line [int] identity(1,1),
	EmpId bigint,
	DayDate datetime,
	StartTime nvarchar(100),
	EndTime nvarchar(100),
	CategoryId bigint,
	CallerId nvarchar(100),
	CallerName nvarchar(1000),
	Address nvarchar(4000),
	Notes nvarchar(4000),
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


