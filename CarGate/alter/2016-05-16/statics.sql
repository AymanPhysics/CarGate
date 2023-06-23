alter table statics add OperationAccNo nvarchar(100),InPatientAccNo nvarchar(100)
go
update statics set OperationAccNo ='',InPatientAccNo =''
go
