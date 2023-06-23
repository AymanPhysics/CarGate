ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((0)) FOR [Ban]
go
update Customers set Ban=0 where Ban is null
