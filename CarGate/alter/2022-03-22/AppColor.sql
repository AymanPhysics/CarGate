alter table statics add AppColor nvarchar(100) 
go
update statics set AppColor ='#FF0967A8'
--update statics set AppColor ='#992A99'



select AppColor from Statics