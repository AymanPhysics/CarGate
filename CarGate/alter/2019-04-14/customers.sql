alter table customers add EmpId int, Notes nvarchar(1000)
alter table customers add NationalId nvarchar(100)

alter table InstallmentInvoicesMaster add AddedValue float,NetValue float
alter table InstallmentInvoicesDateils add MainDayDate datetime
alter table InstallmentInvoicesDateils add Notes nvarchar(1000)