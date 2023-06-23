alter table items add IsService int
go
update items set IsService =0 where IsService  is null
go
