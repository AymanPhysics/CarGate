 

CREATE TABLE [dbo].InvestorsProfits(
	[InvoiceNo] [int] NOT NULL, 
	[DayDate] [datetime] NULL, 
	
	Perc1 [float] NULL, 
	Perc2 [float] NULL, 
	Val1 [float] NULL, 
	Val2 [float] NULL, 
	Total1 [float] NULL, 
	Total2 [float] NULL, 
	
	Id [int] NULL,
	Name nvarchar(1000) NULL,
	
	Bal [float] NULL, 
	Perc [float] NULL, 
	Value [float] NULL, 
	
	[Notes] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL, 
	[Line] [bigint] IDENTITY(1,1) NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUser] [int] NULL, 
) ON [PRIMARY]

GO
 
 alter table  InvestorsProfits add IsRound int