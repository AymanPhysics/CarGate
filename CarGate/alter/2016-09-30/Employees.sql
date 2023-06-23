alter table Employees add SalesPrice int,PurchasesPrice int,ImportPrice int
go
update Employees set SalesPrice =1,PurchasesPrice =1,ImportPrice =1 where ImportPrice  is null
go

