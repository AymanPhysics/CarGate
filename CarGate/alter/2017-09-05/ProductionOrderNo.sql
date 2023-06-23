alter table SalesDetails add ProductionOrderNo bigint not null default 0
alter table DeletedSalesDetails add ProductionOrderNo bigint not null default 0
alter table SalesDetails add ProductionOrderFlag bigint not null default 0
alter table DeletedSalesDetails add ProductionOrderFlag bigint not null default 0
