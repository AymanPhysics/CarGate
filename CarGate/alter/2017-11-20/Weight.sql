select * from OMEGA.dbo.Suppliers
select * from S_SonacAlex.dbo.Suppliers
select * from S_OLD.dbo.Suppliers


delete S_SonacAlex.dbo.Suppliers
insert S_SonacAlex.dbo.Suppliers
select ltrim(rtrim(Code)),ltrim(rtrim(Name)),0,0,0,Address,'','','','',0,0,1,null,ltrim(rtrim(Account)),1,'','','',0,0,0,0,0,0
from S_OLD.dbo.Suppliers
order by Code

update S_SonacAlex.dbo.chart
set LinkFile =1,bal0=0,MainBal0=0
where id in(select T.AccNo from S_SonacAlex.dbo.Customers T)


select * from S_SonacAlex.dbo.LinkFile 

select * from Clients 
