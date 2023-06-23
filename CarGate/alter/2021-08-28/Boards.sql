ct Boards
go

insert Boards (Id,name) select 1,'Cambridge'
insert Boards (Id,name) select 2,'Edexcel'
insert Boards (Id,name) select 3,'AQA'
go


ct SubjectLevels
go
insert SubjectLevels (Id,name) select 1,'Pre-IG'
insert SubjectLevels (Id,name) select 2,'OL'
insert SubjectLevels (Id,name) select 3,'AS'
insert SubjectLevels (Id,name) select 4,'A2'

go

CT Subjects
go
insert Subjects (Id,name) select 1,'Physics'
insert Subjects (Id,name) select 2,'Chemistry'
go

alter table Items add BoardId int not null default 0
alter table Items add SubjectLevelId int not null default 0
alter table Items add SubjectId int not null default 0
alter table Items add TeacherId int not null default 0

 go
 
 alter table  ProductionPlanDetails add Priority int not null default 0