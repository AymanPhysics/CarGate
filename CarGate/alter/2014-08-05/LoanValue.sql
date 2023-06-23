alter table SalaryHistory add LoanValue float
go
update SalaryHistory set LoanValue =Value15
go
select distinct LoanValue from SalaryHistory
select * from SalaryHistory where LoanValue=0