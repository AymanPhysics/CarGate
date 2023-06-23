drop TABLE SalesFlags
go
CREATE TABLE SalesFlags(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	Title [nvarchar](100) NULL,
	Cashier [nvarchar](100) NULL,
	ItemInOut float,
	ItemIn float,
	ItemOut float,
	FlagValue float,
 CONSTRAINT [PK SalesFlags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
) ON [PRIMARY]

GO
insert SalesFlags select 1,'ÃÑÕÏÉ ÇİÊÊÇÍíÉ','','ÇáãÓÊáã',1,1,0,1
insert SalesFlags select 2,'ÅÖÇİÉ','','ÇáãÓÊáã',1,1,0,1
insert SalesFlags select 3,'ÊÓæíÉ ÅÖÇİÉ','','ÇáãÓÊáã',1,1,0,1
insert SalesFlags select 4,'ÕÑİ','','ÇáãÓÊáã',-1,0,1,-1
insert SalesFlags select 5,'ÊÓæíÉ ÕÑİ','','ÇáãÓÊáã',-1,0,1,-1
insert SalesFlags select 6,'åÏÇíÇ','','ÇáãÓÊáã',-1,0,1,-1
insert SalesFlags select 7,'åÇáß','','ÇáãÓÊáã',-1,0,1,-1
insert SalesFlags select 8,'ÊÍæíá Åáì ãÎÒä','ÇáãÎÒä ÇáãÍæá Åáíå','ÇáãÓÊáã',-1,0,1,-1
insert SalesFlags select 9,'ãÔÊÑíÇÊ','ÇáãæÑÏ','ÇáØÇáÈ',1,1,0,1
insert SalesFlags select 10,'ãÑÏæÏÇÊ ãÔÊÑíÇÊ','ÇáãæÑÏ','ÇáØÇáÈ',-1,0,1,-1
insert SalesFlags select 11,'ãÈíÚÇÊ ÇáÕÇáÉ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1
insert SalesFlags select 12,'ãÑÏæÏÇÊ ãÈíÚÇÊ ÇáÕÇáÉ','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1
insert SalesFlags select 13,'ÇáãÈíÚÇÊ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1
insert SalesFlags select 14,'ãÑÏæÏÇÊ ÇáãÈíÚÇÊ','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1
insert SalesFlags select 15,'ãÈíÚÇÊ ÇáÊæÕíá','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1
insert SalesFlags select 16,'ãÑÏæÏÇÊ ãÈíÚÇÊ ÇáÊæÕíá','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1
insert SalesFlags select 17,'ÇáãÓÊåáßÇÊ','ÇáãÑíÖ','ÇáããÑÖÉ',-1,0,1,1
insert SalesFlags select 18,'ãÑÏæÏÇÊ ÇáãÓÊåáßÇÊ','ÇáãÑíÖ','ÇáããÑÖÉ',1,1,0,-1
insert SalesFlags select 19,'ÇáÇÓÊíÑÇÏ','ÇáãæÑÏ','ÇáØÇáÈ',1,1,0,1
insert SalesFlags select 20,'ãÑÏæÏÇÊ ÇáÇÓÊíÑÇÏ','ÇáãæÑÏ','ÇáØÇáÈ',-1,0,1,-1
insert SalesFlags select 21,'ãÈíÚÇÊ ÇáÌãáÉ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1
insert SalesFlags select 22,'ãÑÏæÏÇÊ ãÈíÚÇÊ ÇáÌãáÉ','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1
insert SalesFlags select 23,'ãÈíÚÇÊ äÕİ ÇáÌãáÉ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,1
insert SalesFlags select 24,'ãÑÏæÏÇÊ ãÈíÚÇÊ äÕİ ÇáÌãáÉ','ÇáÚãíá','ÇáÈÇÆÚ',1,1,0,-1
insert SalesFlags select 25,'ÚíäÇÊ','ÇáÚãíá','ÇáÈÇÆÚ',-1,0,1,-1
