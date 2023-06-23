alter table Clinics add RoomTypeId int
alter table OperationsRooms add RoomTypeId int
alter table Rooms add RoomTypeId int
go
update Clinics set  RoomTypeId =0 where RoomTypeId is null
update OperationsRooms set  RoomTypeId =0 where RoomTypeId is null
update Rooms set  RoomTypeId =0 where RoomTypeId is null
go
exec AddMenu 28