USE [Attendance]
GO

/****** Object:  Trigger [dbo].[Tr_CheckInOut]    Script Date: 03/01/2017 13:07:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[Tr_CheckInOut]
   ON  [dbo].[CHECKINOUT]
   AFTER INSERT,DELETE,Update
AS 
BEGIN
	
	delete Tbl
	from OMEGA.dbo.AttendanceLog Tbl
	left join OMEGA.dbo.Employees E on(Tbl.EmpId=E.Id)
	where exists
	(
		select U.BadgeNumber,T.CheckTime,(case T.CheckType when 'I' then 0 else 1 end) 
		from inserted T
		left join USERINFO U on(T.USERID=U.USERID)
		where U.BadgeNumber=E.BADGENUMBER
		and T.CheckTime=Tbl.DayDate
		and (case T.CheckType when 'I' then 0 else 1 end)=Tbl.State
	)
	
	insert OMEGA.dbo.AttendanceLog
	select E.Id,T.CheckTime,(case T.CheckType when 'I' then 0 else 1 end) 
	from inserted T
	left join USERINFO U on(T.USERID=U.USERID)
	left join OMEGA.dbo.Employees E on(U.BADGENUMBER=E.BADGENUMBER)
	where E.Id is not null
	and not exists(
	select TT.EmpId
	from OMEGA.dbo.AttendanceLog TT
	where TT.EmpId=E.Id and TT.DayDate=T.CHECKTIME
	)

	select E.Id,U.BadgeNumber,T.CheckTime,(case T.CheckType when 'I' then 0 else 1 end) 
	from inserted T
	left join USERINFO U on(T.USERID=U.USERID)
	left join OMEGA.dbo.Employees E on(U.BADGENUMBER=E.BADGENUMBER)
	where E.Id is not null
		
END

GO


