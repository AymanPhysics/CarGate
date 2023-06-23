CREATE TABLE KidneysWashMotion(
	InvoiceNo [bigint] NOT NULL,
	[DayDate] [datetime] NULL,
	
	"Notes" [varchar](1000) NULL, 
	"Canceled" bigint, 
	"CaseId" bigint, 
	"CasePaymentTypeId" bigint, 
	"Value" float,
	
	[UserName] [bigint] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_KidneysWashMotion] PRIMARY KEY CLUSTERED 
(
	InvoiceNo ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE KidneysWashMotionDetails(
	InvoiceNo [bigint] NULL,
	
	ItemId bigint,
	ItemName nvarchar(100),
    Qty float,
        
	[UserName] [bigint] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

