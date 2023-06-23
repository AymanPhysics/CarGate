alter table CaseInvoices add Total01 float,ConsumablesValue float
go
update CaseInvoices set Total01 =0,ConsumablesValue =0 where ConsumablesValue  is null
go
