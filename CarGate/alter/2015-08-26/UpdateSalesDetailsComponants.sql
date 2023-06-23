declare @tbl table(Flag bigint,StoreId bigint,InvoiceNo bigint,Line int identity(1,1))
insert @tbl
select Flag ,StoreId ,InvoiceNo
from SalesMaster

declare @x int=1,@max int=(select MAX(Line) from @tbl)
while @x<=@max
begin
	declare @Flag bigint,@StoreId bigint,@InvoiceNo bigint
	select @Flag=Flag,@StoreId=StoreId,@InvoiceNo=InvoiceNo from @tbl where Line=@x
	exec UpdateSalesDetailsComponants @Flag,@StoreId,@InvoiceNo	
	set @x+=1
end


--delete SalesDetailsComponants

select * from SalesDetailsComponants
