alter table SalesMaster add CaseInvoiceNo bigint not null default(0)
alter table DeletedSalesMaster add CaseInvoiceNo bigint not null default(0)
alter table Services add CaseInvoiceNo bigint not null default(0)
alter table OperationMotions add CaseInvoiceNo bigint not null default(0)
alter table ClinicsHistory add CaseInvoiceNo bigint not null default(0)

select * from ClinicsHistory
