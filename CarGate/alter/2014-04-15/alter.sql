alter table items add Flag int
go
update items set Flag =ISNULL(Flag ,0)
go
