alter table BankCash_G2 add SystemUser int
go
update BankCash_G2 set SystemUser =username where SystemUser  is null
go
