ct 'SalesTypes'
go
delete SalesTypes
insert SalesTypes(Id,Name)select 1,'»Ì⁄ „»«‘—'
insert SalesTypes(Id,Name)select 2,'œÌ·Ì›—Ì'
insert SalesTypes(Id,Name)select 3,'«” ·«„ „‰ «·„ﬂ »'
go
alter table salesmaster add SalesTypeId int not null default(0)
alter table deletedsalesmaster add SalesTypeId int
go
alter table SalesDetails add IsDelivered int not null default(1)
alter table deletedSalesDetails add IsDelivered int
go

alter table SalesDetails add SalesManId int not null default(0)
alter table deletedSalesDetails add SalesManId int
go

--riviera center
--update Statics set 
--S_AccNo1='',S_AccNo2='',S_AccNo3='',S_AccNo4='',
--P_AccNo1='',P_AccNo2='',P_AccNo3='',P_AccNo4=''