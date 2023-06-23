alter table OperationMotions add CompanyId bigint
go
update OperationMotions set CompanyId =dbo.GetCaseCompanyId(CaseId) where CompanyId  is null
go 
 