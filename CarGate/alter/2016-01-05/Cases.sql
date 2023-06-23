alter table Cases add ApplyCurrencyCycle int
go
update Cases set ApplyCurrencyCycle=0
go

select * from LinkFile
delete LinkFile where Id=13
insert LinkFile select 13,'«·„—÷Ï','Cases',0
select * from LinkFile