alter table Customers add[CurrencyId] [int] NULL
go
alter table Customers add[ApplyCurrencyCycle] [int] NULL
go
alter table Customers add[MainBal0] [float] NULL
go
alter table Customers add[Exchange] [float] 
go
update Customers set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Customers set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Customers set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Customers set[Exchange] =ISNULL([Exchange] ,1)

go


alter table Suppliers add[CurrencyId] [int] NULL
go
alter table Suppliers add[ApplyCurrencyCycle] [int] NULL
go
alter table Suppliers add[MainBal0] [float] NULL
go
alter table Suppliers add[Exchange] [float] 
go
update Suppliers set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Suppliers set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Suppliers set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Suppliers set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Debits add[CurrencyId] [int] NULL
go
alter table Debits add[ApplyCurrencyCycle] [int] NULL
go
alter table Debits add[MainBal0] [float] NULL
go
alter table Debits add[Exchange] [float] 
go
update Debits set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Debits set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Debits set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Debits set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Credits add[CurrencyId] [int] NULL
go
alter table Credits add[ApplyCurrencyCycle] [int] NULL
go
alter table Credits add[MainBal0] [float] NULL
go
alter table Credits add[Exchange] [float] 
go
update Credits set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Credits set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Credits set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Credits set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Saves add[CurrencyId] [int] NULL
go
alter table Saves add[ApplyCurrencyCycle] [int] NULL
go
alter table Saves add[MainBal0] [float] NULL
go
alter table Saves add[Exchange] [float] 
go
update Saves set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Saves set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Saves set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Saves set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Banks add[CurrencyId] [int] NULL
go
alter table Banks add[ApplyCurrencyCycle] [int] NULL
go
alter table Banks add[MainBal0] [float] NULL
go
alter table Banks add[Exchange] [float] 
go
update Banks set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Banks set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Banks set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Banks set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Sellers add[CurrencyId] [int] NULL
go
alter table Sellers add[ApplyCurrencyCycle] [int] NULL
go
alter table Sellers add[MainBal0] [float] NULL
go
alter table Sellers add[Exchange] [float] 
go
update Sellers set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Sellers set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Sellers set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Sellers set[Exchange] =ISNULL([Exchange] ,1)

go

alter table MoneyChangers add[CurrencyId] [int] NULL
go
alter table MoneyChangers add[ApplyCurrencyCycle] [int] NULL
go
alter table MoneyChangers add[MainBal0] [float] NULL
go
alter table MoneyChangers add[Exchange] [float] 
go
update MoneyChangers set[CurrencyId] =ISNULL([CurrencyId] ,1)
update MoneyChangers set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update MoneyChangers set[MainBal0] =ISNULL([MainBal0] ,bal0)
update MoneyChangers set[Exchange] =ISNULL([Exchange] ,1)

go

alter table OutComeTypes add[CurrencyId] [int] NULL
go
alter table OutComeTypes add[ApplyCurrencyCycle] [int] NULL
go
alter table OutComeTypes add[MainBal0] [float] NULL
go
alter table OutComeTypes add[Exchange] [float] 
go
update OutComeTypes set[CurrencyId] =ISNULL([CurrencyId] ,1)
update OutComeTypes set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update OutComeTypes set[MainBal0] =ISNULL([MainBal0] ,bal0)
update OutComeTypes set[Exchange] =ISNULL([Exchange] ,1)

go

alter table InComeTypes add[CurrencyId] [int] NULL
go
alter table InComeTypes add[ApplyCurrencyCycle] [int] NULL
go
alter table InComeTypes add[MainBal0] [float] NULL
go
alter table InComeTypes add[Exchange] [float] 
go
update InComeTypes set[CurrencyId] =ISNULL([CurrencyId] ,1)
update InComeTypes set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update InComeTypes set[MainBal0] =ISNULL([MainBal0] ,bal0)
update InComeTypes set[Exchange] =ISNULL([Exchange] ,1)

go

alter table OrderTypes add[CurrencyId] [int] NULL
go
alter table OrderTypes add[ApplyCurrencyCycle] [int] NULL
go
alter table OrderTypes add[MainBal0] [float] NULL
go
alter table OrderTypes add[Exchange] [float] 
go
update OrderTypes set[CurrencyId] =ISNULL([CurrencyId] ,1)
update OrderTypes set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update OrderTypes set[MainBal0] =ISNULL([MainBal0] ,bal0)
update OrderTypes set[Exchange] =ISNULL([Exchange] ,1)

go

alter table Assets add[CurrencyId] [int] NULL
go
alter table Assets add[ApplyCurrencyCycle] [int] NULL
go
alter table Assets add[MainBal0] [float] NULL
go
alter table Assets add[Exchange] [float] 
go
update Assets set[CurrencyId] =ISNULL([CurrencyId] ,1)
update Assets set[ApplyCurrencyCycle] =ISNULL([ApplyCurrencyCycle] ,0)
update Assets set[MainBal0] =ISNULL([MainBal0] ,bal0)
update Assets set[Exchange] =ISNULL([Exchange] ,1)

go
