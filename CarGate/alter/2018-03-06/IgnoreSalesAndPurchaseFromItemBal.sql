alter table statics add IgnoreSalesAndPurchaseFromItemBal int
go
update statics set IgnoreSalesAndPurchaseFromItemBal=0
go
--if SonacAlex
--update statics set IgnoreSalesAndPurchaseFromItemBal=1