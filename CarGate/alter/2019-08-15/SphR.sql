alter table salesmaster add SphR nvarchar(100), SphL nvarchar(100), CylR nvarchar(100), CylL nvarchar(100), AxisR nvarchar(100), AxisL nvarchar(100)
alter table deletedsalesmaster add SphR nvarchar(100), SphL nvarchar(100), CylR nvarchar(100), CylL nvarchar(100), AxisR nvarchar(100), AxisL nvarchar(100)
alter table salesmaster add DoctorId int
alter table deletedsalesmaster add DoctorId int
go
ct Doctors