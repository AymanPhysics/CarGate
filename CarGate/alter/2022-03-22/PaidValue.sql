alter table BankCash6 add PaidValue real
alter table deletedBankCash6 add PaidValue real
go
update BankCash6 set PaidValue =Value where PaidValue  is null
