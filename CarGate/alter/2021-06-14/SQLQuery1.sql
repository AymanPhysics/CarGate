alter table statics add whatsmateINSTANCE_ID nvarchar(1000) not null default ''
alter table statics add whatsmateCLIENT_ID nvarchar(1000) not null default ''
alter table statics add whatsmateCLIENT_SECRET nvarchar(1000) not null default ''


go


--update statics set whatsmateINSTANCE_ID = '23'
--update statics set whatsmateCLIENT_ID = 'raghdasaad@plevents.org'
--update statics set whatsmateCLIENT_SECRET ='cab1be3c3134423b8f49e680fc67943f'