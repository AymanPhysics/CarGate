select distinct RoomId from OperationTypeRooms


alter table OperationTypeRooms add RoomTypeId int
go

update OperationTypeRooms set RoomTypeId= where RoomId=1
update OperationTypeRooms set RoomTypeId= where RoomId=2
update OperationTypeRooms set RoomTypeId= where RoomId=3
update OperationTypeRooms set RoomTypeId= where RoomId=4
update OperationTypeRooms set RoomTypeId= where RoomId=5
update OperationTypeRooms set RoomTypeId= where RoomId=10
update OperationTypeRooms set RoomTypeId= where RoomId=11
update OperationTypeRooms set RoomTypeId= where RoomId=12
update OperationTypeRooms set RoomTypeId= where RoomId=13
update OperationTypeRooms set RoomTypeId= where RoomId=14
update OperationTypeRooms set RoomTypeId= where RoomId=15
update OperationTypeRooms set RoomTypeId= where RoomId=16



--delete OperationTypeRooms where RoomId=1
--delete OperationTypeRooms where RoomId=2
--delete OperationTypeRooms where RoomId=3
--delete OperationTypeRooms where RoomId=4
--delete OperationTypeRooms where RoomId=5
--delete OperationTypeRooms where RoomId=10
--delete OperationTypeRooms where RoomId=11
--delete OperationTypeRooms where RoomId=12
--delete OperationTypeRooms where RoomId=13
--delete OperationTypeRooms where RoomId=14
--delete OperationTypeRooms where RoomId=15
--delete OperationTypeRooms where RoomId=16
go

alter table OperationTypeRooms drop column RoomId 
go
