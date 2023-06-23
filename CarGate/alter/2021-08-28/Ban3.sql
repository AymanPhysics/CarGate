alter table customers add Ban3 int not null default 0 
go
alter table customers add DateOfBirth datetime not null default '1900-1-1'
go
update customers set DateOfBirth ='1900-1-1' where DateOfBirth is null
