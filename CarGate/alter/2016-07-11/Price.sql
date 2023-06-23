alter table SalesDetailsComponants add Price float
go
update SalesDetailsComponants set Price=Value/Qty where Qty<>0 and Price is null
go
