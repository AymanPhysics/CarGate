update SalesMaster
set AccNo=(select AccNo1 from OrderTypes where Id=OrderTypeId)
where Flag in(19,20)