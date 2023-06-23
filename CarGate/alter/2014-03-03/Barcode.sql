alter table items add Barcode nvarchar(100)
go
update items set Barcode=''
