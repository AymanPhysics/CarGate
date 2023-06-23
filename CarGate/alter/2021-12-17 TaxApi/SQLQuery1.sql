alter table salesmaster add TaxAmount float not null default 0
alter table deletedsalesmaster add TaxAmount float not null default 0


alter table SalesDetails add rate float not null default 0
alter table SalesDetails add amount float not null default 0
alter table deletedSalesDetails add rate float not null default 0
alter table deletedSalesDetails add amount float not null default 0


