alter table Reservations add CompanyId bigint
alter table Services add CompanyId bigint
go
update Reservations set CompanyId =(select T.CompanyId from cases T where T.Id=CaseId)
update Services set CompanyId =(select T.CompanyId from cases T where T.Id=CaseId)
go
