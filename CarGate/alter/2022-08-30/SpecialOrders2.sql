 

CREATE TABLE SpecialOrders2(
	StoreId [int] NOT NULL,
	InvoiceNo [int] NOT NULL,
	 
	DayDate datetime, 
	SystemUser int, 
	UpdateDate datetime, 
	EntryUser int, 
	EntryDate datetime, 
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_SpecialOrders2] PRIMARY KEY CLUSTERED 
(
StoreId,
	InvoiceNo ASC
)
)

go
--drop table SpecialOrdersDetails
CREATE TABLE SpecialOrders2Details(
	StoreId [int] NOT NULL,
	InvoiceNo [int] NOT NULL,
	 
	TypeId int,   
	Line bigint identity,
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 
)

go
CREATE TABLE SpecialOrders2Details2(
	StoreId [int] NOT NULL,
	InvoiceNo [int] NOT NULL,
	 
	ItemId int,   
	ItemName [nvarchar](1000) NULL,
	TypeId int,   
	Line bigint identity,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 
)

go


ct SpecialOrder2Types
go
delete SpecialOrder2Types
insert SpecialOrder2Types(id,name) select 1,'«” ·«„ «·√Ê—œ—'
insert SpecialOrder2Types(id,name) select 2,' ÕÊÌ· ··„—«Ã⁄…'
insert SpecialOrder2Types(id,name) select 3,' „ «” ·«„ «·„»·€'
insert SpecialOrder2Types(id,name) select 4,' „ «· »œÌ· »ﬂ » √Œ—Ï'
insert SpecialOrder2Types(id,name) select 5,'·„ Ì „ «” ·«„ «·„»·€'
insert SpecialOrder2Types(id,name) select 6,'«·⁄„Ì· ÿ·» Ê÷⁄ «·„»·€  Õ  «·Õ”«»'
insert SpecialOrder2Types(id,name) select 7,' „ ⁄„· ›« Ê—… „— Ã⁄«  »—ﬁ„ ..'



go

ct SpecialOrder2Types2
go
delete SpecialOrder2Types2
insert SpecialOrder2Types2(id,name) select 1,'ﬁ»Ê·'
insert SpecialOrder2Types2(id,name) select 2,'—›÷'
