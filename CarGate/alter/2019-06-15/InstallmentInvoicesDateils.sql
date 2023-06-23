
alter table InstallmentInvoicesDateils add MainValue float 
go
alter table InstallmentInvoicesDateils add DelayedDate datetime 
go
update InstallmentInvoicesDateils set Mainvalue =value where Mainvalue  is null


go

alter table statics add InstallProfitAccNo bigint
alter table statics add InstallSalesAddAccNo bigint
go
--update statics set InstallProfitAccNo =50005
--update statics set InstallSalesAddAccNo = 50006
go
