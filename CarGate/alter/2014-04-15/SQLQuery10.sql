alter table cases add DateOfBirthCount int,MarriageDate datetime,MarriageDateCount int
go
update cases set DateOfBirthCount =DATEDIFF(year,dateofbirth,getdate()),MarriageDate =null,MarriageDateCount =0
go
