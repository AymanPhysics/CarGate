alter table ImportMessages add Bal0 float,val5 float
alter table ImportMessages drop column val5Main
go
update ImportMessages set Bal0 =0,val5 =0 where bal0 is null