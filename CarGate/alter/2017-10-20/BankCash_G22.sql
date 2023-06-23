select * into BankCash_G22 from BankCash_G2 where 1=2
select * into DeletedBankCash_G22 from DeletedBankCash_G2 where 1=2
go




ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___BankC__3B61941E]  DEFAULT ((0)) FOR [BankCash_G2TypeId]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___CostT__39794BAC]  DEFAULT ((0)) FOR [CostTypeId]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___LinkF__3A6D6FE5]  DEFAULT ((0)) FOR [LinkFile]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___MainA__156C6320]  DEFAULT ('') FOR [MainAccNo]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___Inser__43F17C88]  DEFAULT (getdate()) FOR [InsertDate]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___Analy__79C448AB]  DEFAULT ((0)) FOR [AnalysisId]
GO

ALTER TABLE [dbo].[BankCash_G22] ADD  CONSTRAINT [DF__BankCash_G22___CostC__7AB86CE4]  DEFAULT ((0)) FOR [CostCenterSubId]
GO


