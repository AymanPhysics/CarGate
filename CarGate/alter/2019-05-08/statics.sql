alter table statics add SalaryAddMonth int ,SalaryAddDay int 
go

update statics set SalaryAddMonth =1,SalaryAddDay =-1
--update statics set SalaryAddMonth =0,SalaryAddDay =25
go

alter table statics add SalaryAccNo bigint not null default 0
go
--update statics set SalaryAccNo =5105

go
alter table salaryhistory add DayDate datetime 