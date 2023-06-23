CREATE NONCLUSTERED INDEX ix_it_1
ON [dbo].[Items] ([GroupId],[TypeId])
INCLUDE ([Id],[Name])
GO
