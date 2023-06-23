
CREATE TABLE CustomersTemp(
	[Id] [int] NOT NULL,
	
	P1[nvarchar](100),
	 P2[nvarchar](100), 
	 P3[nvarchar](100), 
	 P4[nvarchar](100), 
	 P5[nvarchar](100), 
	 P6[nvarchar](100), 
	 ItemName[nvarchar](100), 
	 Total float, 
	 DayDate datetime , 
	 DownPayment float, 
	 InstallCount float, 
	 InstallValue  float,
	
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_CustomersTemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)
go
alter TABLE CustomersTemp add Notes nvarchar(1000)
alter TABLE CustomersTemp add CustId int
go
update Customers set NationalId='' where NationalId is null