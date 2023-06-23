alter table Credits add ApplyCurrencyCycle int
alter table Debits add ApplyCurrencyCycle int
go
update Credits set ApplyCurrencyCycle=0
update Debits set ApplyCurrencyCycle=0
go
