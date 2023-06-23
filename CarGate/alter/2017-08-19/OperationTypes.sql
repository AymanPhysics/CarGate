alter table OperationTypes add CalcBefore int not null default 0, CalcAfter int not null default 1
alter table OperationTypes add CalcConsumablesValue int not null default 1,CalcItems int not null default 0
alter table OperationPackageDescriptions add ConsumablesValue float not null default 0, NoOfDays int not null default 99
alter table OperationDescriptions add ConsumablesValue float not null default 0, NoOfDays int not null default 99

go

CREATE TABLE OperationItems(
	OperationTypeId [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	Qty float ,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_OperationItems] PRIMARY KEY CLUSTERED 
(
	OperationTypeId ,[ItemId] 
)
)