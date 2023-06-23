ct 'InpatientDepartments'
go
alter table Clinics add InpatientDepartmentId int not null default 0
alter table OperationsRooms add InpatientDepartmentId int not null default 0
alter table RoomTypes add InpatientDepartmentId int not null default 0
alter table Rooms add InpatientDepartmentId int not null default 0