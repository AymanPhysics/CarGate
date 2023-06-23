CREATE TABLE [dbo].[CasePaymentTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_CasePaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)
go
insert [CasePaymentTypes] select 1,'ﬁÊ„”ÌÊ‰ ÿ»Ï',1,null
insert [CasePaymentTypes] select 2,' √„Ì‰ ’ÕÏ',1,null
insert [CasePaymentTypes] select 3,'‰ﬁœÏ',1,null