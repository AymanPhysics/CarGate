select * from SalesFlags


delete SalesFlags where id in(37,38)
insert SalesFlags  select 37,	'„” Â·ﬂ«  «·œ«Œ·Ì',	'«·„—Ì÷',	'«·„„—÷…',	-1,	0,	1,	1,	'ﬂ‘› Õ”«»'
insert SalesFlags  select 38,	'„—œÊœ«  „” Â·ﬂ«  «·œ«Œ·Ì',	'«·„—Ì÷',	'«·„„—÷…',	1,	1,	0,	-1,	'ﬂ‘› Õ”«»'

update SalesFlags set Cashier='«· „—Ì÷' where Cashier='«·„„—÷…'