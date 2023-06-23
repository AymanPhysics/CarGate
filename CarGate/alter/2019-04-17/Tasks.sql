select *,EmpId DidEmpId,GETDATE() DidDatetime,CAST('' as nvarchar(1000))DidNotes into Tasks from Schedule where 1=2

go

alter  TABLE [dbo].[Tasks] alter column [DidEmpId] [int]  NULL
alter  TABLE [dbo].[Tasks] alter column [DidDatetime] [datetime]  NULL