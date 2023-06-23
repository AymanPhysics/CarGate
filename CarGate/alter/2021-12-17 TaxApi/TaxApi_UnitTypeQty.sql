select * from items


go
alter table items add TaxApi_UnitTypeId nvarchar(100),TaxApi_UnitTypeQty float
go
update items set TaxApi_UnitTypeId='KGM',TaxApi_UnitTypeQty=1 where TaxApi_UnitTypeQty is null