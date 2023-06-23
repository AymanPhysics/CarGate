alter table ItemCollectionMotionMaster add DayDate2 datetime,Done int
alter table deletedItemCollectionMotionMaster add DayDate2 datetime,Done int
go
update ItemCollectionMotionMaster set DayDate2=DayDate,Done=1,DayDate-=1
update deletedItemCollectionMotionMaster set DayDate2=DayDate,Done=1,DayDate-=1
go
