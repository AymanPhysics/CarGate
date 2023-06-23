alter table salesmaster add BankId int
alter table deletedsalesmaster add BankId int
go
update salesmaster set BankId =0 where BankId  is null
update deletedsalesmaster set BankId =0 where BankId  is null

go
