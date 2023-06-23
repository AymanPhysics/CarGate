alter table Companies add CasePerc float
go
update Companies set CasePerc =100 where CasePerc is null

select * from Companies
