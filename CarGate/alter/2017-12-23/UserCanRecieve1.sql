alter table employees add UserCanRecieve1 int ,UserCanRecieve2 int
go
update employees set UserCanRecieve1 =0,UserCanRecieve2 =0 where UserCanRecieve2  is null
go
