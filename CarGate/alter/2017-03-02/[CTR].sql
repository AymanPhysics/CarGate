create proc [dbo].[CTR](@TableName as nvarchar(1000))
--with encryption
as

declare @SQL nvarchar(1000)='
CREATE trigger TR_'+@TableName+' on '+@TableName+'
FOR insert
as
update '+@TableName+' set InsertUser=Username where InsertUser is null
'

Print @sql

exec (@sql)

