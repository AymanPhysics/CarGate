alter table statics add CheckItemBal int not null default 1

alter table statics add ShowPurchasePrice int not null default 0


alter table salesdetails add PurchasePrice real not null default 0
alter table deletedsalesdetails add PurchasePrice real not null default 0
