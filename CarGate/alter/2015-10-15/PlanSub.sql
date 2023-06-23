drop TABLE [dbo].PlanSub
go
CREATE TABLE [dbo].PlanSub(
	DayDate datetime,
	[Id] [int] NULL,
	Name nvarchar(100),
	[Id2] [int] NULL,
	Name2 nvarchar(100),
	FromHour int,
	FromHourIndexId int,
	ToHour int,
	ToHourIndexId int,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

drop table HourIndex 
go
create table HourIndex 
(Id int,Name nvarchar(100))
go
insert HourIndex select 0,'AM'
insert HourIndex select 1,'PM'
go

drop table PlanSubFlags 
go
create table PlanSubFlags (Id int,Name nvarchar(100))
go
delete PlanSubFlags 
insert PlanSubFlags select 1,'‰«∆»'
insert PlanSubFlags select 2,'√Œ’«∆Ì'
insert PlanSubFlags select 3,'«” ‘«—Ì'
go
