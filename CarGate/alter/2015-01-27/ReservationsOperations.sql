alter table ReservationsOperations add OperationDetails nvarchar(1000),PostOperativeDiagnosis nvarchar(1000),PathologySpecimen nvarchar(1000),ClinicalData nvarchar(1000),Recomendation nvarchar(1000)
alter table ReservationsOperations add SurgeonId int,AssistantSurgeonId int,AnesthetistId int,ScrubNurseId int
