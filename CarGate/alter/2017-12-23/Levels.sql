select Id,Name,MyGetDate,UserName into Levels from NLevels
go
create table LevelsMenuitems(LevelId bigint,Id bigint)
go
insert LevelsMenuitems select 1,1102
go
create table LevelsTabs(LevelId bigint,Id bigint)
go
insert LevelsTabs select 1,11
go
alter table LevelsMenuitems add AllowEdit int not null default 1
alter table LevelsMenuitems add AllowDelete int not null default 1
alter table LevelsMenuitems add AllowNavigate int not null default 1
alter table LevelsMenuitems add AllowPrint int not null default 1