alter table Employees add UserCanRptExportButton int 
go
update Employees set UserCanRptExportButton =1 where UserCanRptExportButton is null
go
