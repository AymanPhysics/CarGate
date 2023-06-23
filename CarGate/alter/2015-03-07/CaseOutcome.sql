 
CREATE TABLE [dbo].CaseOutcome(
	 [Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL, 
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_CaseOutcome] PRIMARY KEY CLUSTERED 
(
 [Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) 
go
delete CaseOutcome
insert CaseOutcome select 1,'Died',null,null
insert CaseOutcome select 2,'Improved',null,null
insert CaseOutcome select 3,'Completed',null,null
go
alter table cases add CaseOutcomeId int