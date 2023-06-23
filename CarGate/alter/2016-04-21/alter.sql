alter table BankCash_G3 add FromLinkFile int,ToLinkFile int
go
update BankCash_G3 set FromLinkFile=LinkFile,ToLinkFile=LinkFile
go
alter table BankCash_G3 drop column LinkFile
go

