alter table ImportMessagesDetails add DocNo nvarchar(100)
alter table ImportMessagesDetails add DeliveryDate datetime
go
update ImportMessagesDetails set DeliveryDate='1900-01-01'