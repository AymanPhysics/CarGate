alter table ServiceGroups add IsTotal int
go
update ServiceGroups set IsTotal =0 where IsTotal  is null
go
