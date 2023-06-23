alter table cases add EntryDate nvarchar(100)
go
update cases set EntryDate =MyGetDate where EntryDate  is null
go
alter table cases add UpdateDate nvarchar(100)
go
update cases set UpdateDate =MyGetDate where UpdateDate  is null
go
alter table cases add EntryUser int
go
update cases set EntryUser =SystemUser where EntryUser is null
go

