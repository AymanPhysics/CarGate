select * into Entry2Types from BankCash_G2Types where 1=2
select * into EntryTypes from BankCash_G2Types where 1=2

insert Entry2Types select 3,1,'íæãíÉ ÚÇãÉ',1,1000000,null,null

select * into EmpEntry2Types from EmpBankCash_G2Types where 1=2
select * into EmpEntryTypes from EmpBankCash_G2Types where 1=2

insert EntryTypes select 4,1,'íæãíÉ ÚÇãÉ',1,1000000,null,null

go
alter table Entry2 add Entry2TypeId  bigint 
alter table Entry add EntryTypeId bigint 
alter table EntryDt add EntryTypeId bigint 
alter table EntryAttachments add EntryTypeId bigint 
go
update Entry2 set Entry2TypeId =1 where Entry2TypeId is null
update Entry set EntryTypeId =1 where EntryTypeId is null
update EntryDt set EntryTypeId =1 where EntryTypeId is null
update EntryAttachments set EntryTypeId =1 where EntryTypeId is null
go

