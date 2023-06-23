
CREATE TABLE [dbo].CaseInvoices(
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	CaseId bigint,
	
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	
 CONSTRAINT [PK_CaseInvoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


alter table CaseInvoices add Total1 float, Total2 float, Total3 float, Total4 float, Perc float
alter table CaseInvoices add Total float