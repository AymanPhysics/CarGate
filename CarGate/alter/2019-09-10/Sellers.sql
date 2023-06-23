select * from Sellers


--delete Sellers
--insert Sellers(Id,Name,AccNo,Bal0,CurrencyId,MainBal0,Exchange,ApplyCurrencyCycle)
--select Id,Name,isnull((select top 1 Id From Chart where LinkFile=7),''),0,1,0,1,0 from Employees where Waiter=1


go

alter table Customers drop constraint DF__Customers__Selle__69943B9A
alter table Customers drop column SellerId 

go
alter table Customers add CashierId int not null default 0
go

alter table linkfile add ShowInBankCash_G2 int not null default 1
go
update linkfile set ShowInBankCash_G2 =0 where id not in(5,6)
go
