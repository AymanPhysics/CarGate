alter table customers add Ban int
go
update Customers set ban=0 where Ban is null