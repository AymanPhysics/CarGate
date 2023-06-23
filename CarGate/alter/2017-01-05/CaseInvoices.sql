alter table CaseInvoices add Remaining float , RemainingMainAccNo nvarchar(100), RemainingSubAccNo bigint
go
update CaseInvoices set Remaining =Total-Bal, RemainingMainAccNo ='', RemainingSubAccNo =0 where RemainingSubAccNo is null

go

alter table CaseInvoices add Total00 float 