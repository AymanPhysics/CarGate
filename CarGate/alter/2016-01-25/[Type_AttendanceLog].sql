 
/****** Object:  UserDefinedTableType [dbo].[AttendanceLog]    Script Date: 01/25/2016 17:43:53 ******/
CREATE TYPE [dbo].[Type_AttendanceLog] AS TABLE(
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[State] [int] NULL
)
GO


 
ALTER proc [dbo].[SaveAttandanceLog]
@AttendanceLog as Type_AttendanceLog READONLY
--with encryption
as

insert AttendanceLog(EmpId,DayDate,State)
select EmpId,DayDate,State from @AttendanceLog

go

drop type AttendanceLog