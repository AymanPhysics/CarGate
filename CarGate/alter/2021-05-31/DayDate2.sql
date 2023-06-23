alter table BankCash_G add DayDate2 datetime not null default '1900-1-1'
alter table DeletedBankCash_G add DayDate2 datetime not null default '1900-1-1'


alter table items add SystemUser int not null default 0
alter table items add UpdateDate datetime not null default '1900-1-1'

alter table items add Notes nvarchar(1000) not null default ''
alter table Customers add Person nvarchar(100) not null default ''
