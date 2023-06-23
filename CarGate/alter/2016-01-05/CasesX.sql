alter table Cases add ApplyCurrencyCycle int
go
alter table Cases add Bal0 float,MainBal0 float,AccNo nvarchar(100),Exchange float,CurrencyId int
go
update Cases set ApplyCurrencyCycle =0 where ApplyCurrencyCycle  is null
go
update Cases set Bal0 =0,MainBal0 =0,AccNo ='',Exchange =1.,CurrencyId =1 where CurrencyId  is null
go
