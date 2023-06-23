alter table statics add SalesDiscountMainAccNo nvarchar(100),SalesDiscountSubAccNo int
go
update statics set SalesDiscountMainAccNo ='',SalesDiscountSubAccNo =0
--update statics set SalesDiscountMainAccNo ='420301',SalesDiscountSubAccNo =0