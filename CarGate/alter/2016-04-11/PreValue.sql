alter table Services add PreValue float,PrePayed float,PreRemaining float,Qty float
go
update Services set PreValue =Value ,PrePayed =Payed ,PreRemaining =Remaining ,Qty =1 where Qty  is null
go
