ct OpenningHours
go

insert OpenningHours select 0,'8:00 AM',null,null
insert OpenningHours select 1,'8:30 AM',null,null
insert OpenningHours select 2,'9:00 AM',null,null
insert OpenningHours select 3,'9:30 AM',null,null
insert OpenningHours select 4,'10:00 AM',null,null
insert OpenningHours select 5,'10:30 AM',null,null
insert OpenningHours select 6,'11:00 AM',null,null
insert OpenningHours select 7,'11:30 AM',null,null
insert OpenningHours select 8,'12:00 PM',null,null
insert OpenningHours select 9,'12:30 PM',null,null
insert OpenningHours select 10,'1:00 PM',null,null
insert OpenningHours select 11,'1:30 PM',null,null
insert OpenningHours select 12,'2:00 PM',null,null
insert OpenningHours select 13,'2:30 PM',null,null
insert OpenningHours select 14,'3:00 PM',null,null
insert OpenningHours select 15,'3:30 PM',null,null
insert OpenningHours select 16,'4:00 PM',null,null
insert OpenningHours select 17,'4:30 PM',null,null
insert OpenningHours select 18,'5:00 PM',null,null
insert OpenningHours select 19,'5:30 PM',null,null
insert OpenningHours select 20,'6:00 PM',null,null
insert OpenningHours select 21,'6:30 PM',null,null
insert OpenningHours select 22,'7:00 PM',null,null
insert OpenningHours select 23,'7:30 PM',null,null
insert OpenningHours select 24,'8:00 PM',null,null
insert OpenningHours select 25,'8:30 PM',null,null
insert OpenningHours select 26,'9:00 PM',null,null
insert OpenningHours select 27,'9:30 PM',null,null
insert OpenningHours select 28,'10:00 PM',null,null
insert OpenningHours select 29,'10:30 PM',null,null
insert OpenningHours select 30,'11:00 PM',null,null
insert OpenningHours select 31,'11:30 PM',null,null
insert OpenningHours select 32,'12:00 AM',null,null

go

alter table BankCash6  add OpenningHoursFrom int,OpenningHoursTo int
alter table deletedBankCash6  add OpenningHoursFrom int,OpenningHoursTo int
