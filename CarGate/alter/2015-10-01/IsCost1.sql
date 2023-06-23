alter table entry2 add IsCost1 int,IsCost2 int
go
update entry2 set IsCost1 =1,IsCost2 =0 where IsCost1 is null
go
