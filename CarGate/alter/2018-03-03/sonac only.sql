ct 'UnitsWeights'
go
alter table UnitsWeights add Weights float
go
delete UnitsWeights
insert UnitsWeights(id,name,Weights)
select * from ist_CostControl2017.dbo.Units


go
