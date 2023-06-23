
select * from Items
select * from [dbo].ItemsTemp
where [ ßæÏ ÇáÕäİ] in(26300002,26300003,26300004,26300005) 
order by [ ßæÏ ÇáÕäİ]

delete Items
insert Items
select [ ßæÏ ÇáÕäİ]
      ,[ÇÓã ÇáÕäİ]
	  ,[ÇáãÌãæÚå]
      ,[ÇáäæÚ]
      ,0,0,u.Name,1,0,0,0,0,[ÇáæÍÏå],null,'',1,null,0,0,0,0,0,0,0,0,0,0,0,'',0,0,'',0,0,0,0
      ,[äæÚ ÇáÕäİ] 
      ,''
from ItemsTemp t
left join ItemUnits u on(u.Id=[ÇáæÍÏå])
where [ ßæÏ ÇáÕäİ] is not null


