delete OMEGA.dbo.degrees
insert OMEGA.dbo.degrees select 1,'اخصائى',null,null
insert OMEGA.dbo.degrees select 2,'استشارى',null,null
select * from OMEGA.dbo.degrees


select * from Test.dbo.a

select distinct [التخصص] from Test.dbo.a

update Test.dbo.a set [الدرجة العلمية] =1 where [الدرجة العلمية]='اخصائى'
update Test.dbo.a set [الدرجة العلمية] =2 where [الدرجة العلمية]='استشارى'