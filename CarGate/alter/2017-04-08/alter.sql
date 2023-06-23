update ProductionItemCollectionMotionFlags set Id+=30 where ID between 10 and 20
update ProductionItemCollectionMotionMaster set Flag+=30 where Flag between 10 and 20
update ProductionItemCollectionMotionDetailsTo set Flag+=30 where Flag between 10 and 20

    

insert ProductionItemCollectionMotionFlags(Id,Name)
select ID+10,Name+' -  ’ÊÌ—' From ProductionItemCollectionMotionFlags
where ID<10

insert ProductionItemCollectionMotionFlags(Id,Name)
select ID+20,Name+' -  Œ—Ì„ Ê €·Ì›' From ProductionItemCollectionMotionFlags
where ID<10

insert ProductionItemCollectionMotionFlags(Id,Name)
select ID+30,Name+' - „—«Ã⁄…' From ProductionItemCollectionMotionFlags
where ID<10

go

alter table ProductionItemCollectionMotionFlags add Flag int
go
UPDATE ProductionItemCollectionMotionFlags SET Flag =(iD-iD % 10)/10+1
GO

select * From ProductionItemCollectionMotionFlags 
order by id