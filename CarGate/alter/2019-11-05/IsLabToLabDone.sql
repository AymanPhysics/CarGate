alter table Services add IsLabToLabDone int not null default 0
alter table Services add IsLabToLabDoneEmpId int not null default 0
alter table Services add IsLabToLabDoneGetdate datetime not null default '1900-1-1'
alter table Services add IsLabToLabPrice float not null default 0


alter table deletedServices add IsLabToLabDone int not null default 0
alter table deletedServices add IsLabToLabDoneEmpId int not null default 0
alter table deletedServices add IsLabToLabDoneGetdate datetime not null default '1900-1-1'
alter table deletedServices add IsLabToLabPrice float not null default 0


go

alter table ServiceTypes add Cost float  not null default 0
go
alter table cases add constraint df_InOut default 1 for InOut 
go
--update cases set InOut =1
go

