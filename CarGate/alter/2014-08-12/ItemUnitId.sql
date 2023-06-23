CREATE TABLE ItemUnits(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_ItemUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert ItemUnits
select ROW_NUMBER()over(order by unit),Unit,1,GETDATE() from 
(
select distinct Unit from Items where Unit<>''
)tbl

select * from ItemUnits
go
alter table Items add ItemUnitId int
go
update Items set ItemUnitId=ISNULL((select ID from ItemUnits where Unit=ItemUnits.Name),0)
go
select * from Items_View