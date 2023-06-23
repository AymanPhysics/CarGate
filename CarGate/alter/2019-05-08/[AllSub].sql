



ALTER view [dbo].[AllSub]
as
select 0 LinkFile,cast(Id as bigint)Id,Name,MainAccId AccNo,Bal0,MainBal0,1 CurrencyId,0 ApplyCurrencyCycle,Exchange from Chart union all
select 1 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Customers union all
select 2 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Suppliers union all
select 3 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Debits union all
select 4 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Credits union all
select 5 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Saves union all
select 6 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Banks union all
select 7 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Sellers union all
select 8 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from MoneyChangers union all
select 9 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from OutComeTypes union all
select 10 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from InComeTypes union all
select 11 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from OrderTypes union all
select 12 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Assets union all
select 13 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Cases union all
select 14 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Teachers union all
select 15 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Investors union all
select 16 LinkFile,Id,Name,AccNo,Bal0,MainBal0,CurrencyId,ApplyCurrencyCycle,Exchange from Employees


GO


