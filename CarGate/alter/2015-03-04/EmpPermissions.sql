create table EmpPermissions
(
LinkFile bigint,
EmpId bigint,
Id bigint
)
go
insert EmpPermissions select 5,* from EmpSaves
insert EmpPermissions select 6,* from EmpBanks

go
drop table EmpSaves
drop table EmpBanks

go
drop function dbo.Fn_EmpBanks
drop function dbo.Fn_EmpDebits
drop function dbo.Fn_EmpSaves
drop function dbo.Fn_EmpSuppliers
