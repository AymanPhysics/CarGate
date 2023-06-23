update CheckTypes set Name='‘Ìﬂ' where Name='»‘Ìﬂ'
if not exists(select * from CheckTypes where Name='ﬂ„»Ì«·…')
begin
	update CheckTypes set Id+=1 where Id>2
	update BankCash_G2 set CheckTypeId+=1 where CheckTypeId>2
	insert CheckTypes select 3,'ﬂ„»Ì«·…',1,null
end
select * from CheckTypes order by Id
