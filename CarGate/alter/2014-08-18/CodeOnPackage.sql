alter table items add CodeOnPackage nvarchar(100)
go
update items set CodeOnPackage =''
go
alter table salesmaster add VersionNo nvarchar(100)
alter table deletedsalesmaster add VersionNo nvarchar(100)
go
update salesmaster set VersionNo =''
update deletedsalesmaster  set VersionNo =''
go

