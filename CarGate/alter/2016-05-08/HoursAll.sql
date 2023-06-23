create table HoursAll(Id int,Name nvarchar(100))
go
delete HoursAll
insert HoursAll select 0,'12 AM'
insert HoursAll select 1,'1 AM'
insert HoursAll select 2,'2 AM'
insert HoursAll select 3,'3 AM'
insert HoursAll select 4,'4 AM'
insert HoursAll select 5,'5 AM'
insert HoursAll select 6,'6 AM'
insert HoursAll select 7,'7 AM'
insert HoursAll select 8,'8 AM'
insert HoursAll select 9,'9 AM'
insert HoursAll select 10,'10 AM'
insert HoursAll select 11,'11 AM'
insert HoursAll select 12,'12 PM'
insert HoursAll select 13,'1 PM'
insert HoursAll select 14,'2 PM'
insert HoursAll select 15,'3 PM'
insert HoursAll select 16,'4 PM'
insert HoursAll select 17,'5 PM'
insert HoursAll select 18,'6 PM'
insert HoursAll select 19,'7 PM'
insert HoursAll select 20,'8 PM'
insert HoursAll select 21,'9 PM'
insert HoursAll select 22,'10 PM'
insert HoursAll select 23,'11 PM'


select * from HoursAll