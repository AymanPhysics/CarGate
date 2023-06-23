CREATE TABLE [dbo].[EmpCustomers]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpSuppliers]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpDebits]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpCredits]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpSellers]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpMoneyChangers]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpOutComeTypes]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpInComeTypes]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpOrderTypes]([EmpId] [int],Id [int])
CREATE TABLE [dbo].[EmpAssets]([EmpId] [int],Id [int])
go

alter TABLE [dbo].EmpBanks add Id [int]
go
update EmpBanks set Id=BankId
go
alter TABLE [dbo].EmpBanks drop column BankId
go

alter TABLE [dbo].EmpSaves add Id [int]
go
update EmpSaves set Id=SaveId
go
alter TABLE [dbo].EmpSaves drop column SaveId
go

GO
DROP FUNCTION dbo.Fn_EmpBanks
DROP FUNCTION dbo.Fn_EmpDebits
DROP FUNCTION dbo.Fn_EmpSaves
GO
