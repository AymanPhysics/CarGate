alter table OperationTypeRooms add Price2 float
go
update OperationTypeRooms set Price2 =0 where Price2  is null
go
alter table OperationMotions add RoomValue2 float
go
update OperationMotions set RoomValue2 =0 where RoomValue2  is null
go
