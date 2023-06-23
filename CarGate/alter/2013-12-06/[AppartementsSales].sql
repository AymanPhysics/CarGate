IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppartementsSales]') AND type in (N'U'))
DROP TABLE [dbo].[AppartementsSales]
GO

CREATE TABLE [dbo].[AppartementsSales](
	[Id] nvarchar(1000) NOT NULL,
	[DayDate] [datetime] NULL,
	[CustomerId] [int] NULL,
	[Price] float,
	[Finishing] float,
	[Transport] float,
	[ElectricityAndWater] float,
	[OtherCosts] float,
	[Total] float,
	[Payed] float,
	[Remaining] float,
	[Notes] [nvarchar](1000) NULL,
	
	
CustName[nvarchar](1000) , 
Floor [nvarchar](10) , 
Area float, 
BuildingName[nvarchar](1000) , 
Sample[nvarchar](1000) , 
UnitNo float, 
PriceBefore float, 
Tel[nvarchar](1000) ,
 Mobile[nvarchar](1000) ,
  Email[nvarchar](1000) ,
   FinishingTypeId int,

	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


