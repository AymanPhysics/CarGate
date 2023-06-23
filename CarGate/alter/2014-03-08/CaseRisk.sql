
CREATE TABLE [dbo].CaseRisk(
	[CaseId] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO



CREATE TABLE [dbo].CaseInFertility(
	[CaseId] [int] NOT NULL,
Daydate [nvarchar](max) NULL,
E2 [nvarchar](max) NULL,
HMG [nvarchar](max) NULL,
FSH [nvarchar](max) NULL,
against [nvarchar](max) NULL,
antagainst [nvarchar](max) NULL,
RT [nvarchar](max) NULL,
LT [nvarchar](max) NULL,
Endd [nvarchar](max) NULL,
Remarks [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO






