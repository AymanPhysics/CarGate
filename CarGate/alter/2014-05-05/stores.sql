alter TABLE stores add
	[CurrentShift] [int] NULL,
	[CurrentDate] [datetime] NULL
go
update Stores set [CurrentShift] =1,
	[CurrentDate]='2014-5-5'