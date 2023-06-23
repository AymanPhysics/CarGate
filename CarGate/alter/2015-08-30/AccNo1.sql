alter table OrderTypes add AccNo1 nvarchar(100)
go
update OrderTypes set AccNo1 ='' where AccNo1 is null
go
