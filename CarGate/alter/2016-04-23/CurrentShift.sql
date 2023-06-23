alter table employees add CurrentShift bigint
go
update employees set CurrentShift =1 where CurrentShift  is null
go
alter table EmpCloseShift add CurrentShift bigint
go
update EmpCloseShift set CurrentShift =1 where CurrentShift  is null
go
alter table EmpOutcome add CurrentShift bigint
go
update EmpOutcome set CurrentShift =1 where CurrentShift  is null
go
alter table Reservations add CurrentShift bigint
go
update Reservations set CurrentShift =1 where CurrentShift  is null
go
alter table Services add CurrentShift bigint
go
update Services set CurrentShift =1 where CurrentShift  is null
go
