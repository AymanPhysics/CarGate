CREATE TABLE [dbo].[Cases2](
	[Id] [int] NOT NULL,
	[ArName] [nvarchar](100) NULL,
	[Image] [image] NULL,
	[Gender] [int] NULL,
	[SSN] [nvarchar](100) NULL,
	[CityId] [int] NULL,
	[AreaId] [int] NULL,
	[TownId] [int] NULL,
	[ReligionId] [int] NULL,
	[Address] [nvarchar](1000) NULL,
	[DateOfBirth] [datetime] NULL,
	[JobId] [int] NULL,
	[Notes] [nvarchar](1000) NULL,
	[Manager] [int] NULL,
	[SystemUser] [int] NULL,
	[BankAccount] [nvarchar](100) NULL,
	[NationalId] [nvarchar](100) NULL,
	[HomePhone] [nvarchar](100) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](1000) NULL,
	[EnName] [nvarchar](100) NULL,
	[LevelId] [int] NULL,
	[Instractor] [int] NULL,
	[Supervisor] [int] NULL,
	[SalaryType] [int] NULL,
	[hh] [int] NULL,
	[mm] [int] NULL,
	[GeneralManager] [int] NULL,
	[HeadofDepartment] [int] NULL,
	[DepartmentId] [int] NULL,
	[Branch] [int] NULL,
	[HasAttendance] [int] NULL,
	[BasicSalary] [float] NULL,
	[Stopped] [int] NULL,
	[Accountant] [varchar](1) NULL,
	[Board] [varchar](1) NULL,
	[LastConnect] [datetime] NULL,
	[HiringDate] [datetime] NULL,
	[Cashier] [int] NULL,
	[Waiter] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Deliveryman] [int] NULL,
CasePaymentTypeId int,
 Case2TypeId int, 
 DisionNo nvarchar(100), 
 DisionDate datetime, 

 CONSTRAINT [PK_Cases2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


