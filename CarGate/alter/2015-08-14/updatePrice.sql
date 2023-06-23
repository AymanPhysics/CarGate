update T
set Price=(select top 1 Price-ItemDiscount from SalesDetails D where D.StoreId=T.StoreId and D.Flag=19 and D.InvoiceNo=T.InvoiceNo and D.ItemId=T.ItemId)
from ImportMessagesDetailsSub2 T

update T
set Value=Price*Qty
from ImportMessagesDetailsSub2 T
