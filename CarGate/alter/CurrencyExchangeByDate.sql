--1	Ã‰ÌÂ „’—Ì
--2	œÊ·«— √„Ì—ÌﬂÌ
--3	ÌÊ—Ê
--4	RMB
--5	·Ì—Â  —ﬂÌ

delete CurrencyExchangeByDate

insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 3,'2015-01-21',9.6
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 1,'2015-01-21',7.6
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 1,'2015-01-21',7.6
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 1,'2015-11-21',7.6

insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 2,'2015-04-23',7.6447
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 2,'2015-05-13',7.6624
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 4,'2015-03-24',1.2435
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 4,'2015-04-06',1.2350
insert CurrencyExchangeByDate(CurrencyId ,DayDate ,Exchange )select 3,'2015-11-01',8.79809


select * from CurrencyExchangeByDate
order by CurrencyId ,DayDate