
update Customers 
set Points=isnull((
		select sum((case when Flag=13 then 1.0 else -1.0 end)*Total*0.05-DiscountValue)
		from SalesMaster
		where Flag in(13,14)
		and ToId=Id
		and DayDate>='2020-1-1'
	),0)

update Customers 
set Points=0
where Points<0