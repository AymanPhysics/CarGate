CREATE TYPE [dbo].[Type_Conferences] AS TABLE(
FullName	 nvarchar(1000),
MobileNumber nvarchar(1000),	
Sponser nvarchar(1000)
)
GO


create table PrintIDsHistory(ConferenceId bigint,CustomerId bigint,Mygetdate datetime not null default(getdate()))
go
create table PrintCertificatesHistory(ConferenceId bigint,CustomerId bigint,Mygetdate datetime not null default(getdate()))
go





ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR NationalId
GO


update Customers set NationalId=ISNULL(NationalId,'')