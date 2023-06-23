select * from SalesFlags
order by id


delete SalesFlags where id=28
insert SalesFlags
select 28,	'ÚÑÖ ÃÓÚÇÑ ãæÑÏ','ÇáãæÑÏ','ÇáØÇáÈ','0','0','0','0','ÚÑÖ ÃÓÚÇÑ'



go

select * into SalesAttachments from EntryAttachments where 1=2
go
alter table SalesAttachments  add Flag int,StoreId int