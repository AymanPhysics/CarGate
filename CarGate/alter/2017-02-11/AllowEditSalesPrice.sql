alter table items add AllowEditSalesPrice int
go
update items set AllowEditSalesPrice =0 where AllowEditSalesPrice  is null
go
