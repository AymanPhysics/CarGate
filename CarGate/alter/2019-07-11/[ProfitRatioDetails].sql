alter TABLE [ProfitRatioDetails] alter column ItemId bigint not null
alter TABLE [ProfitRatioDetails] alter column [DayDate] datetime not null
go
alter TABLE [ProfitRatioDetails] add CONSTRAINT [PK_ProfitRatioDetails] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[DayDate] ASC
)
go
alter table SalesDetails add constraint PK_SalesDetails primary key clustered(StoreId,Flag,InvoiceNo,Line)