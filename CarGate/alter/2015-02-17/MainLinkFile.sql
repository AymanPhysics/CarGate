alter table BankCash_G2  add MainLinkFile int
go
update BankCash_G2 set BankCash_G2TypeId=Flag*1000+BankCash_G2TypeId
go
update BankCash_G2 set MainLinkFile=5 where Flag in(1,2)
update BankCash_G2 set MainLinkFile=6 where Flag in(3,4)
update BankCash_G2 set MainLinkFile=3 where Flag in(5,6)
go
update BankCash_G2 set Flag=1 where Flag in(3,5)
update BankCash_G2 set Flag=2 where Flag in(4,6)
update BankCash_G2Types set Flag=1 where Flag in(3,5)
update BankCash_G2Types set Flag=2 where Flag in(4,6)
go
update BankCash_G2Types set Id=Flag*1000+Id
go