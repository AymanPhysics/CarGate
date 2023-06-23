alter table InstallmentInvoicesMaster add Flag int not null default 0
alter table InstallmentInvoicesDateils add Flag int not null default 0
alter table InstallmentInvoicesDateilsPayments add Flag int not null default 0
alter table Investors add Mobile nvarchar(100) not null default ''
 