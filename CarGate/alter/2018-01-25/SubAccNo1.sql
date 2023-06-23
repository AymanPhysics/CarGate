alter table SalesMaster add SubAccNo1 bigint not null default(0), SubAccNo2 bigint not null default(0), SubAccNo3 bigint not null default(0), SubAccNo4 bigint not null default(0)
alter table deletedSalesMaster add SubAccNo1 bigint not null default(0), SubAccNo2 bigint not null default(0), SubAccNo3 bigint not null default(0), SubAccNo4 bigint not null default(0)


go
/*
if nawar
update SalesMaster set SubAccNo1=1 where AccNo1='3401'
update SalesMaster set SubAccNo2=1 where AccNo2='3401'
update SalesMaster set SubAccNo3=1 where AccNo3='3401'
update SalesMaster set SubAccNo4=1 where AccNo4='3401'
*/
