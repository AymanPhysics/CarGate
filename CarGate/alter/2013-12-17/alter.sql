alter table NolonPrices add Price5 decimal(30,2)
go
update NolonPrices set Price5 =0
go

insert NolonPriceTypes select 5,'ﬂ”«Õ…',1,'2020-1-1'
go


