alter table ImportMessagesDetails add Perc float
go
update ImportMessagesDetails set Perc =0 where Perc is null
go
alter table SalesMaster add Perc float
go
update SalesMaster set Perc =0 where Perc is null
go

alter table deletedSalesMaster add Perc float
go
update deletedSalesMaster set Perc =0 where Perc is null
go
