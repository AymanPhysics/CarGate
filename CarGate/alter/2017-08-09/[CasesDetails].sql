CREATE TABLE [dbo].[CasesDetails](
	 CaseId bigint,
	 TypeId bigint,
     CompanyId bigint,
     DoctorId bigint,
     OperationId bigint,
     [UserName] [int] NULL,
	[MyGetDate] [datetime] not NULL default Getdate(), 
	[Line] [int] IDENTITY(1,1) NOT NULL,
)  


go

select * from CasesDetails

--delete CasesDetails
insert CasesDetails(CaseId,TypeId,CompanyId,DoctorId,OperationId,UserName,MyGetDate)
select * from (
select Id,CaseTypeId,CompanyId,DoctorId,isnull((select top 1 OperationTypeId from OperationMotions where CaseId=Id order by InvoiceNo desc),0)OperationTypeId,UserName,MyGetDate
from cases
)Tbl
where CaseTypeId<>0 or OperationTypeId<>0
