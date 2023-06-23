ct InstallmentCounts
go
alter table statics add InstallRatio float
go

update statics set installratio=0.6



go


create table CustomerInsures
(
CustomerId int,
   Name nvarchar(1000),
  Mobile nvarchar(1000),
    Job nvarchar(1000),
  Address nvarchar(1000),
  Notes nvarchar(1000),
  MyGetDate datetime not null default getdate(),
  UserName int
        )