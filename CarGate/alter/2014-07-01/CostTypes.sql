CREATE TABLE CostTypes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_CostTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


insert CostTypes select 1,'„’«—Ì› ≈œ«—Ì…',1,null
insert CostTypes select 2,'„’«—Ì› ÿ·»Ì…',1,null
insert CostTypes select 3,'„’«—Ì› ⁄·Ï —”«·…',1,null
insert CostTypes select 4,'„’«—Ì› ⁄·Ï ›« Ê—…',1,null