--nawar only 
update TTT
set
AvgCost=TT.Perc*TTT.Value
from ImportMessages T
left join ImportMessagesDetails TT on(T.OrderTypeId=TT.OrderTypeId and T.Id=TT.Id)
left join ImportMessagesDetailsSub2 TTT on(T.OrderTypeId=TTT.OrderTypeId and T.Id=TTT.Id and TT.InvoiceNo=TTT.InvoiceNo)
where year(t.DeliveredDate)=2016
and t.IsDelivered=1





update SalesMaster 
set AccNo=3201
where Flag=13
and AccNo=''



select distinct flag,accno
from SalesMaster 
order by flag,accno