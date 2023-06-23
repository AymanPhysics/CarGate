alter table  ReservationsOperations add OperationType2 int,OperationType3 int
go
update ReservationsOperations set OperationType2 =0,OperationType3 =0 where OperationType3  is null
go
alter table  OperationMotions add OperationTypeId2 int,OperationTypeId3 int
go
update OperationMotions set OperationTypeId2 =0,OperationTypeId3 =0 where OperationTypeId3  is null
go
alter table  OperationMotions add RoomId int
go
update OperationMotions set RoomId=0 where RoomId is null
go

alter table  OperationTypes add ConsumablesValue int
go
update OperationTypes set ConsumablesValue=0 where ConsumablesValue is null
go
alter table  OperationMotions add ConsumablesValue int
go
update OperationMotions set ConsumablesValue=0 where ConsumablesValue is null
go
