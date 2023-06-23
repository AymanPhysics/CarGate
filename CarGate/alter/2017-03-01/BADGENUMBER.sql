alter table employees add BADGENUMBER int
go
update employees set BADGENUMBER =Id where BADGENUMBER  is null
go
