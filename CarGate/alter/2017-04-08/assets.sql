alter table assets add Notes nvarchar(100) not null default ''
alter table assets add DepreciationAccNo nvarchar(100) not null default ''
alter table assets add CompoundDepreciationAccNo nvarchar(100) not null default ''
alter table assets add SalesPrice float not null default 0
alter table assets add PreviousCompoundValue float not null default 0
alter table assets add DepreciationRate float not null default 0
alter table assets add DayDate datetime not null default '1900-1-1'
alter table assets add IsStopped int not null default 0
