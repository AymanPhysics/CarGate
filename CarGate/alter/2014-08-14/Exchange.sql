alter table BankCash_G2 add Exchange float,MainValue float
go
update BankCash_G2 set Exchange =1,MainValue =Value
go
