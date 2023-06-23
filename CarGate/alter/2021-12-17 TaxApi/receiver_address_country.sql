update Customers set receiver_address_country='EG',receiver_type='P'


go



create table TaxApi_TeceiverTypes(Code nvarchar(1),Name nvarchar(100))
go
delete TaxApi_TeceiverTypes
insert TaxApi_TeceiverTypes 
select 'P','‘Œ’'
union
select 'B','√⁄„«·'
union
select 'F','√Ã‰»Ì'
