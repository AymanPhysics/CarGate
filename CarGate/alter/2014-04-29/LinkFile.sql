alter table linkfile add MotionType int
go
update LinkFile set MotionType=0
update LinkFile set MotionType=1 where id in(2,4)

select * from LinkFile

