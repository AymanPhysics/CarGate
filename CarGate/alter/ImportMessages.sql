exec dbo.UpdateExchange
go
exec CalcAllImportMessages
go
exec CalcAvgCost '2014-12-31','2015-12-31'
go
exec CalcItemsBalCostGroup '2014-12-31','2015-12-31'