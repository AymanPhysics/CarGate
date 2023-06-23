alter table  Statics add gmail nvarchar(100),gmailPassword nvarchar(100)
alter table  Statics add twilioUserName nvarchar(1000),twilioPassword nvarchar(1000)


go

update Statics set gmail ='',gmailPassword ='',twilioUserName ='',twilioPassword =''