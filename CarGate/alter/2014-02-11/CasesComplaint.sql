CREATE TABLE CasesComplaint(
	CaseId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


CREATE TABLE Investigations(
	CaseId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


CREATE TABLE Gynecology(
	CaseId [int] NOT NULL,
	[Id] [int] NOT NULL,
	Utras [nvarchar](1000) NULL,
    Cervix [nvarchar](1000) NULL,
    Ovaries [nvarchar](1000) NULL,
    Valva [nvarchar](1000) NULL,
    Vagina [nvarchar](1000) NULL,
    [UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


    
    
    