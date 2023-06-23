
alter table statics add PreventItemDoublication int not null default 0

alter table statics add ShowNotifications int not null default 0

alter table statics add ShowWeightQty int not null default 0

--update statics set PreventItemDoublication =1
--update statics set ShowNotifications =1
--update statics set ShowWeightQty =1

update statics set RptFromToday=1


update SalesPriceTypes set name='«·”⁄— Õ”» «·Ê“‰' where id=2