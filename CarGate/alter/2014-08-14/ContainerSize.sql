alter table ImportMessages add ShipperId int,ShippingLineId int,ShippingCompanyId int,ContainerSizeId int
go
update ImportMessages set ShipperId=0,ShippingLineId=0,ShippingCompanyId=0,ContainerSizeId=0

go
alter table ImportMessages add ContainerPrice float,ContainerSizeCurrencyId int
go
update ImportMessages set ContainerPrice =0,ContainerSizeCurrencyId=0


