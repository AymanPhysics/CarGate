alter table statics 
add
clientIdPreProd nvarchar(1000),ClientSecretPreProd nvarchar(1000),ClientSecret2PreProd nvarchar(1000),
clientId nvarchar(1000),ClientSecret nvarchar(1000),ClientSecret2 nvarchar(1000)

go

update statics set  
clientIdPreProd='b3a8be1b-849e-4919-88cb-05de549db994',
ClientSecretPreProd='45842940-64f3-4793-9186-747f3ed67a26',
ClientSecret2PreProd='63f32ca9-66b4-4294-93c8-1954a66d9609'

go

alter table items add itemCode nvarchar(100) not null default ''