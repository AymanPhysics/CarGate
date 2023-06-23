alter table salesmaster add ReservToId int
alter table deletedsalesmaster add ReservToId int
go
update salesmaster set ReservToId=0
update deletedsalesmaster set ReservToId=0
go


alter table salesdetails add ItemDiscount float
alter table deletedsalesdetails add ItemDiscount float
go
update salesdetails set ItemDiscount=0
update deletedsalesdetails set ItemDiscount=0
go

alter table salesmaster add Exchange float
alter table deletedsalesmaster add Exchange float
go
update salesmaster set Exchange=1
update deletedsalesmaster set Exchange=1
go
