alter table items add Limit decimal(30,0)
go
update items set Limit =ISNULL(Limit ,0)
go
