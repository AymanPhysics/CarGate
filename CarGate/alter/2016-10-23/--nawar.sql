--nawar

select * from ItemComponants
where MainItemId in(select It.Id from Items It)
and ItemId not in(select It.Id from Items It)

select * from ItemComponants
where MainItemId not in(select It.Id from Items It)
