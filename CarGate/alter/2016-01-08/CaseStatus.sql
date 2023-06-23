CREATE TABLE CaseStatus(
	[CaseId] [int] NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	InOut int,
) ON [PRIMARY]

GO

alter table Cases add InOut int
go
update Cases set InOut=1 where InOut is null