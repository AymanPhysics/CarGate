alter table employees add
FromHHTemp int,FromMMTemp int,ToHHTemp int,ToMMTemp int,TotalHoursTemp int,TotalMinutesTemp int,FromDate datetime,ToDate datetime
go

update employees set
FromHHTemp=0,FromMMTemp=0,ToHHTemp=0,ToMMTemp=0,TotalHoursTemp=0,TotalMinutesTemp=0,FromDate ='1900-1-1',ToDate ='1900-1-1'
where FromHHTemp is null
