
CREATE TABLE [dbo].ExternalDoctors(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	
	DepartmentId int, 
	EmpId int, 
	Address nvarchar(1000), 
	Floor nvarchar(100), 
	Appartment nvarchar(100), 
	Tel nvarchar(100), 
	Mobile nvarchar(100), 
	DescPerc float, 
	Type int,
	
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ExternalDoctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


