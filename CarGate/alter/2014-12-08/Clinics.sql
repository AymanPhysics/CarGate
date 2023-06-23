drop TABLE Clinics
go
CREATE TABLE Clinics(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	
	ConsultationPrice float, 
	DetectionPrice float,
	
	[hh] [int] NULL,
	[mm] [int] NULL,
	
	[Duration] [int] NULL,
	[Cnt] [int] NULL,
	[Saturday] [int] NULL,
	[Sunday] [int] NULL,
	[Monday] [int] NULL,
	[Tuesday] [int] NULL,
	[Wednesday] [int] NULL,
	[Thursday] [int] NULL,
	[Friday] [int] NULL,
	
	[hh2] [int] NULL,
	[hh3] [int] NULL,
	[hh4] [int] NULL,
	[hh5] [int] NULL,
	[hh6] [int] NULL,
	[hh7] [int] NULL,
	[mm2] [int] NULL,
	[mm3] [int] NULL,
	[mm4] [int] NULL,
	[mm5] [int] NULL,
	[mm6] [int] NULL,
	[mm7] [int] NULL,
 	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
CONSTRAINT [PK_Clinics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
go

drop TABLE OperationsRooms
go
CREATE TABLE OperationsRooms(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	
	ConsultationPrice float, 
	DetectionPrice float,
	
	[hh] [int] NULL,
	[mm] [int] NULL,
	
	[Duration] [int] NULL,
	[Cnt] [int] NULL,
	[Saturday] [int] NULL,
	[Sunday] [int] NULL,
	[Monday] [int] NULL,
	[Tuesday] [int] NULL,
	[Wednesday] [int] NULL,
	[Thursday] [int] NULL,
	[Friday] [int] NULL,
	
	[hh2] [int] NULL,
	[hh3] [int] NULL,
	[hh4] [int] NULL,
	[hh5] [int] NULL,
	[hh6] [int] NULL,
	[hh7] [int] NULL,
	[mm2] [int] NULL,
	[mm3] [int] NULL,
	[mm4] [int] NULL,
	[mm5] [int] NULL,
	[mm6] [int] NULL,
	[mm7] [int] NULL,
 	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
CONSTRAINT [PK_OperationsRooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
go

