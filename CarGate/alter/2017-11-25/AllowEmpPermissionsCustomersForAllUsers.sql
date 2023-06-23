alter table statics add AllowEmpPermissionsCustomersForAllUsers int not null default 1
go
--if Nawar
--update statics set AllowEmpPermissionsCustomersForAllUsers =0