alter table employees add EditPrices int
go
update employees set EditPrices =0 where EditPrices is null
go
