alter table salesmaster add CurrencyId int
alter table deletedsalesmaster add CurrencyId int
go
update salesmaster set CurrencyId =1
update deletedsalesmaster set CurrencyId =1
go

