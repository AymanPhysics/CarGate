alter table salesmaster add CostCenterId bigint not null default 0
go
alter table deletedsalesmaster add CostCenterId bigint not null default 0

go


update SalesMaster set 
CostCenterId=ToId,ToId=0
where Flag IN(2,3,4,5)