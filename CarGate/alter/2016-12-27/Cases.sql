alter table Cases add Barcode nvarchar(100)
alter table deletedCases add Barcode nvarchar(100)
go
update Cases set Barcode= dbo.ean13(Id)