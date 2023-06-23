alter TABLE [dbo].[Employees]add 
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
	[mm7] [int] NULL
go
update [dbo].[Employees] set
	[hh2] =hh,
	[hh3] =hh,
	[hh4] =hh,
	[hh5] =hh,
	[hh6] =hh,
	[hh7] =hh,
	[mm2] =mm,
	[mm3] =mm,
	[mm4] =mm,
	[mm5] =mm,
	[mm6] =mm,
	[mm7] =mm
go
