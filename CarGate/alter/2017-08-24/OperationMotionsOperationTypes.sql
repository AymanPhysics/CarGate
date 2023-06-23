CREATE TABLE OperationMotionsOperationTypes(
	InvoiceNo [bigint] NOT NULL,
	OperationTypeId int,
	Perc float,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 
)
delete OperationMotionsOperationTypes 
insert OperationMotionsOperationTypes select InvoiceNo,OperationTypeId,100,UserName,MyGetDate from OperationMotions where OperationTypeId<>0
insert OperationMotionsOperationTypes select InvoiceNo,OperationTypeId2,100,UserName,MyGetDate from OperationMotions where OperationTypeId2<>0
insert OperationMotionsOperationTypes select InvoiceNo,OperationTypeId3,100,UserName,MyGetDate from OperationMotions where OperationTypeId3<>0

select * from OperationMotionsOperationTypes
select * from OperationMotions

alter table OperationMotions drop column OperationTypeId
alter table OperationMotions drop column OperationTypeId2
alter table OperationMotions drop column OperationTypeId3
go


