create table AssetsDepreciationHistory
(
Daydate datetime,
Month int,
Year int,
AssetId bigint,
Value float
)
go

create table MachinesMotion
(
Daydate datetime,
MachineId bigint,
Value float
)
go

exec AddMyGetDate 'MachinesMotion'
go

ct 'Machines'