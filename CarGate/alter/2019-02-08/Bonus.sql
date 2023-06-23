alter table items add Bonus float
go
update items set Bonus =0
go
alter table items add Target float
go
update items set Target =0
go
alter table SalesDetails add Bonus float
alter table deletedSalesDetails add Bonus float
go
update SalesDetails set Bonus =0
update deletedSalesDetails set Bonus =0
go
alter table SalesDetails add Target float
alter table deletedSalesDetails add Target float
go
update SalesDetails set Target =0
update deletedSalesDetails set Target =0
go
alter table SalesDetails add TotalBonus float
alter table deletedSalesDetails add TotalBonus float
go
update SalesDetails set TotalBonus =0
update deletedSalesDetails set TotalBonus =0
go
