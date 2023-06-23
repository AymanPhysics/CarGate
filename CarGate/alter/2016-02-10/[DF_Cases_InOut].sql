ALTER TABLE [dbo].[Cases] DROP CONSTRAINT [DF_Cases_InOut]
GO
ALTER TABLE [dbo].[Cases] ADD  CONSTRAINT [DF_Cases_InOut]  DEFAULT ((1)) FOR [InOut]
GO


