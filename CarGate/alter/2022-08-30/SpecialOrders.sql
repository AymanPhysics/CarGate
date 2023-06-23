 

CREATE TABLE SpecialOrders(
	StoreId [int] NOT NULL,
	InvoiceNo [int] NOT NULL,
	 
	DayDate datetime, 
	SystemUser int, 
	UpdateDate datetime, 
	EntryUser int, 
	EntryDate datetime, 
	ToId int,
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_SpecialOrders] PRIMARY KEY CLUSTERED 
(
StoreId,
	InvoiceNo ASC
)
)

go
--drop table SpecialOrdersDetails
CREATE TABLE SpecialOrdersDetails(
	StoreId [int] NOT NULL,
	InvoiceNo [int] NOT NULL,
	 
	TypeId int,   
	Line bigint identity,
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 
)

go


ct SpecialOrderTypes
go
delete SpecialOrderTypes
insert SpecialOrderTypes(id,name) select 1,' „ «·ÿ·»'
insert SpecialOrderTypes(id,name) select 2,'„ÊÃÊœ ÊÃ«— ≈—”«·Â ··›—⁄'
insert SpecialOrderTypes(id,name) select 3,' „ «· ÕÊÌ· ··Ê—‘…'
insert SpecialOrderTypes(id,name) select 4,' „ «· ‰›Ì–'
insert SpecialOrderTypes(id,name) select 5,' „ «·»Ì⁄ »›« Ê—… —ﬁ„ ..'
