alter table salesdetails add ItemDiscountPerc float
alter table deletedsalesdetails add ItemDiscountPerc float
go
update SalesDetails set ItemDiscountPerc=ISNULL(ItemDiscountPerc,0) 
update deletedsalesdetails set ItemDiscountPerc=ISNULL(ItemDiscountPerc,0) 
