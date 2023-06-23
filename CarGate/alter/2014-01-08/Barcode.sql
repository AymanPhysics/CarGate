alter table SalesDetails add Barcode nvarchar(100),Color int,Size int
go
update SalesDetails set Barcode='',Color=0,Size=0
go
