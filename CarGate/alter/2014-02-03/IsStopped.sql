alter table ServiceTypes add IsStopped int
go
update ServiceTypes set IsStopped =0
