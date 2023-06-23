 update ItemS set Barcode= dbo.ean13(Id) where  LEN(Barcode)<13
