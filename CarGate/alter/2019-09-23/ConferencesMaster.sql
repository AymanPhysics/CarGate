ct PCsTemp
go


alter table Customers drop constraint PK_Customers

alter table Customers alter column Id bigint not null

alter table Customers add constraint PK_Customers primary key CLUSTERED (Id)


alter table Customers add code bigint 

go
drop TABLE ConferencesMaster
go
CREATE TABLE ConferencesMaster(
	ConferenceId[int] NOT NULL,
	[InvoiceNo] bigint NOT NULL,
	[DayDate] [datetime] NULL,
	Username int,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	
	Value float,
	Canceled int,
	CustomerId bigint,
	RegistrationTypeId int,
	AttendanceTypeId int,
	SponsorId int,
	HotelId int,
	RoomTypeId int,
	RoomUpgradeTypeId int,
	Conference int,
	Sponsored int,
	Payment float,
	FacultyMember int,
	Nursing int,
	Student int,
	InvitedVIP int,
	Syndicate int,
	Lunch int,
	GalaDinner int,
	CheckIn datetime,
	CheckOut datetime,
	Payment2 float,
	EarlyCheckIn int,
	LateCheckOut int,
	TwoConnectedRooms int,
	SeaView int,
	PoolView int,
	GroundFloor int,
	ExtraBed int,
	ExtraMeal int,
	ExtraNight int,
	ShuttelBuss int,
	Transportation int
	

 CONSTRAINT [PK_ConferencesMaster] PRIMARY KEY CLUSTERED 
(
	ConferenceId ASC,
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF,STATISTICS_NORECOMPUTE  = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS  = ON,ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


drop TABLE ConferencesDetails
go
CREATE TABLE ConferencesDetails(
	ConferenceId[int] NOT NULL,
	[InvoiceNo] bigint NOT NULL,
	WorkShopId int
 CONSTRAINT [PK_ConferencesDetails] PRIMARY KEY CLUSTERED 
(
	ConferenceId ASC,
	[InvoiceNo] ASC,
	WorkShopId
)WITH (PAD_INDEX  = OFF,STATISTICS_NORECOMPUTE  = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS  = ON,ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




create table PL_CheckInOut(ConferenceId int,Flag int,CustomerId bigint,DayDate datetime)