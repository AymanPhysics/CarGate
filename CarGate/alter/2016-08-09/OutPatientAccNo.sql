alter table Statics add OutPatientAccNo nvarchar(100),OutPatientSubAccNo int
go

update Statics set OutPatientAccNo =InPatientAccNo ,OutPatientSubAccNo =InPatientSubAccNo 
go
update Statics set OutPatientAccNo ='',OutPatientSubAccNo =''
go

