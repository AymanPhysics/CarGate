alter TABLE [Entry2] drop  CONSTRAINT [PK_Entry2] 
go
alter table entry2 alter column Entry2TypeId bigint not null
go
alter table entry2 alter column Flag int null
go
alter TABLE [Entry2] add  CONSTRAINT [PK_Entry2] PRIMARY KEY CLUSTERED 
(
	Entry2TypeId ASC,
	[InvoiceNo] ASC
)
go



alter TABLE [Entry] drop  CONSTRAINT [PK_Entry] 
go
alter table entry alter column EntryTypeId bigint not null
go
alter TABLE [Entry] add  CONSTRAINT [PK_Entry] PRIMARY KEY CLUSTERED 
(
	EntryTypeId ASC,
	[InvoiceNo] ASC
)
go
