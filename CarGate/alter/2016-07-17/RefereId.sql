alter table Services add RefereId bigint
go
update  Services set RefereId =0 where RefereId is null
go

alter table Reservations add RefereId bigint
go
update Reservations  set RefereId =0 where RefereId is null
go

alter table OperationMotions add RefereId bigint
go
update  OperationMotions set RefereId =0 where RefereId is null
go
 