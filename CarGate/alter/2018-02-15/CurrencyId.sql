alter table entrydt add CurrencyId int 
alter table deletedentrydt add CurrencyId int 
alter table entrydt add Exchange int 
alter table deletedentrydt add Exchange int 

go

update EntryDt set MainDebit=Debit,MainCredit=Credit,CurrencyId=1 where CurrencyId is null

update EntryDt set Exchange=1 where Exchange is null



go

alter table CostCenterSubs add MainCostCenterId bigint , SubType int