CREATE TABLE BankCash_G2Types(
	Flag [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	FromInvoiceNo int,
	ToInvoiceNo int,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_BankCash_G2Types] PRIMARY KEY CLUSTERED 
(
	Flag,[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


