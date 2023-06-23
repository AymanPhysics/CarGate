CREATE NONCLUSTERED INDEX ix_bk_1
ON [dbo].[BankCash_G2] ([DayDate],[CheckTypeId])
INCLUDE ([CheckNo])
GO
