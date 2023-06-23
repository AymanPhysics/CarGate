alter table SalesDetails add SD_Notes nvarchar(1000)
alter table deletedSalesDetails add SD_Notes nvarchar(1000)
go
update SalesDetails set SD_Notes ='' where SD_Notes  is null
update DeletedSalesDetails set SD_Notes ='' where SD_Notes  is null
