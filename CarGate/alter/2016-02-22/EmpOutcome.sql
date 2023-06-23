create table EmpOutcome
(
EmpId bigint,
DayDate datetime,
Id bigint,
ToName nvarchar(100),
Value float,
Notes nvarchar(1000),
IsClosed int default(0),
UserName int,
MyGetDate datetime
)
go
create table EmpCloseShift
(
EmpId bigint,
DayDate datetime,
Value float,
Bal0 float,
Diff float,
Notes nvarchar(1000),
UserName int,
MyGetDate datetime
)
go
alter table Reservations add  IsClosed int default(0)
alter table services add  IsClosed int default(0)
go
update Reservations set IsClosed=ISNULL(IsClosed,0)
update services set IsClosed=ISNULL(IsClosed,0)