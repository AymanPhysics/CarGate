alter table cases add Weight nvarchar(100), OperatedBefore int
go
update cases set Weight ='', OperatedBefore =0 where OperatedBefore  is null
go
