alter table salesdetails add ExpDate nvarchar(10),ExpireDate datetime
alter table deletedsalesdetails add ExpDate nvarchar(10),ExpireDate datetime
go
update salesdetails set ExpDate ='',ExpireDate ='1900-1-1' where ExpDate is null
update deletedsalesdetails set ExpDate ='',ExpireDate ='1900-1-1' where ExpDate is null

go
alter table items add IsHiddenFromLimit int not null default 0