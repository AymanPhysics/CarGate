alter table employees add AccNo nvarchar(100)
go
update employees set AccNo ='' where AccNo  is null
go
