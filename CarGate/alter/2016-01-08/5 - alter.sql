alter table Hours add Name nvarchar(100)
go
update Hours set Name =Id
go
alter table Minutes add Name nvarchar(100)
go
update Minutes set Name =Id
go
