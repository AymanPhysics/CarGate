alter table OperationTypes add IsStopped int
go
update OperationTypes set IsStopped =0 where IsStopped is null
go

