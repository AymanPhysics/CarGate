

CREATE TABLE Appartements(
	AccNo [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	Discription [nvarchar](1000) NULL,
	Floor [nvarchar](100) NULL,
	Area decimal(20,0),
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO




CREATE TABLE AppartementsSales(
	AccNo [int] NOT NULL,
	[Id] [int] NOT NULL,
	
	DayDate datetime,
	 CustomerId int, 
	 Price decimal(20,2), 
	 Finishing decimal(20,2), 
	 Transport decimal(20,2), 
	 ElectricityAndWater decimal(20,2), 
	 OtherCosts decimal(20,2), 
	 Total decimal(20,2), 
	 Payed decimal(20,2), 
	 Remaining decimal(20,2),
	
	
	Notes [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


