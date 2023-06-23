alter table OperationMotions add Dr1Perc float
go
update OperationMotions set Dr1Perc =100 where Dr1Perc  is null
go
alter table OperationMotions add Dr2Perc float
go
update OperationMotions set Dr2Perc =100 where Dr2Perc  is null
go
alter table OperationMotions add Dr3Perc float
go
update OperationMotions set Dr3Perc =100 where Dr3Perc  is null
go
alter table OperationMotions add AnesthetistPerc float
go
update OperationMotions set AnesthetistPerc =100 where AnesthetistPerc  is null
go
