alter table salesmaster add Shipping float,Freight float,CustomClearance float
alter table deletedsalesmaster add Shipping float,Freight float,CustomClearance float
go
update salesmaster set Shipping =0,Freight =0,CustomClearance =0
update deletedsalesmaster set Shipping =0,Freight =0,CustomClearance =0
go
