
go
ct 'Infertirity'
go
ct 'Pregnancy'
go


CREATE TABLE Informations(
	[CaseId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_Informations] PRIMARY KEY CLUSTERED 
(
	CaseId,[Id] ASC
)
)
go



alter table  Informations alter column Name nvarchar(4000)
alter table Infertirity  alter column Name nvarchar(4000)
alter table Pregnancy  alter column Name nvarchar(4000)



go


drop TABLE ContactUs
go
CREATE TABLE ContactUs(
	[CaseId] [int] NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] not null default GetDate(),
Title nvarchar(4000),
Message nvarchar(4000),
Line int identity)
go


ct 'Gallery'
go
alter table Gallery add Image image
alter table Gallery add AttachedName nvarchar(100)

go


select * into GalleryMain from Gallery
go
ct 'Survey'
go


create table SurveyHistory
(CaseId int,QuestionId int,QuestionName nvarchar(1000),Answer int,Line int identity,MyGetDate datetime not null default getdate())
go
