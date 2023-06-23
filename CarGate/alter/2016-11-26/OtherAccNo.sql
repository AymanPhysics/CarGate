alter table statics add OtherAccNo nvarchar(100),OtherSubAccNo int
go
update statics set OtherAccNo ='',OtherSubAccNo=0
go


alter table statics add CaseInvoicesDiscountAccNo nvarchar(100),CaseInvoicesDiscountSubAccNo int
go
update statics set CaseInvoicesDiscountAccNo ='',CaseInvoicesDiscountSubAccNo=0
go


