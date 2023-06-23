alter table SalesMaster add AccNo nvarchar(100)
go
alter table deletedSalesMaster add AccNo nvarchar(100)
go
update SalesMaster set AccNo =''
update SalesMaster set AccNo ='411' where Flag in(11,13,15,17,21,23)
update SalesMaster set AccNo ='331' where Flag in(12,14,16,18,22,24)
update SalesMaster set AccNo ='311' where Flag in(9,19)
update SalesMaster set AccNo ='431' where Flag in(10,20)

