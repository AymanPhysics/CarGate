alter table Saves add ApplyCurrencyCycle int
alter table Banks add ApplyCurrencyCycle int
go
update Saves set ApplyCurrencyCycle =0
update Banks set ApplyCurrencyCycle =0
