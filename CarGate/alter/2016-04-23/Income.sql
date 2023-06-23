alter table EmpCloseShift add Income float,Outcome float
go
update EmpCloseShift set Income =Bal0,Outcome =0  where Outcome  is null
go
