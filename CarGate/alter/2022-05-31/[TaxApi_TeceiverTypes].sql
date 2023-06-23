delete [TaxApi_TeceiverTypes]
insert [TaxApi_TeceiverTypes] select 'B','√⁄„«·'
insert [TaxApi_TeceiverTypes] select 'F','√Ã‰»Ì'
insert [TaxApi_TeceiverTypes] select 'P','‘Œ’'

go

ALTER TABLE customers  DROP CONSTRAINT  DF__Customers__recei__56D5A18A
ALTER TABLE customers DROP CONSTRAINT  DF__Customers__recei__57C9C5C3
ALTER TABLE customers DROP CONSTRAINT  DF__Customers__recei__58BDE9FC
ALTER TABLE customers DROP CONSTRAINT  DF__Customers__recei__59B20E35
ALTER TABLE customers DROP CONSTRAINT  DF__Customers__recei__5AA6326E
ALTER TABLE customers DROP constraint DF__Customers__recei__5B9A56A7
ALTER TABLE customers DROP constraint DF__Customers__recei__5C8E7AE0
ALTER TABLE customers DROP constraint DF__Customers__recei__5D829F19
ALTER TABLE customers DROP constraint DF__Customers__recei__5E76C352
ALTER TABLE customers DROP constraint DF__Customers__recei__5F6AE78B
ALTER TABLE customers DROP constraint DF__Customers__recei__605F0BC4
ALTER TABLE customers DROP constraint DF__Customers__recei__61532FFD
ALTER TABLE customers DROP constraint DF__Customers__recei__62475436
ALTER TABLE customers DROP constraint DF__Customers__recei__633B786F


go
alter table customers
ADD CONSTRAINT df_receiver_type
DEFAULT 'P' FOR [receiver_type]


SELECT * FROM sys.tables
WHERE name = 'customers'

SELECT * FROM sys.objects  
         WHERE type = 'D'
		 and parent_object_id='325576198'







ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_branchID]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_country]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_governate]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_regionCity]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_street]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_buildingNumber]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_postalCode]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_floor]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_room]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_landmark]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_address_additionalInformation]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('P') FOR [receiver_type]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_id]
GO

ALTER TABLE [dbo].[Customers] ADD  DEFAULT ('') FOR [receiver_name]
GO


