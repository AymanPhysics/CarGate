alter table Companies add Perc float
go
update  Companies set Perc =ISNULL(Perc ,0)
go
