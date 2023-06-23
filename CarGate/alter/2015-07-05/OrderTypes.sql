alter table OrderTypes add AccNo2 nvarchar(100),AccNo3 nvarchar(100)
go
update OrderTypes set AccNo2='',AccNo3=''
go
