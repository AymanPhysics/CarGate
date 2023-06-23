alter table Statics add CurrentShift int
alter table Statics add CurrentDate datetime
go
update Statics set CurrentDate ='2014-04-01',CurrentShift =1
