alter table BankCash add CurrencyId int
alter table BankCash2 add CurrencyId int
go
update BankCash set CurrencyId=1 where CurrencyId is null
update BankCash2 set CurrencyId=1 where CurrencyId is null