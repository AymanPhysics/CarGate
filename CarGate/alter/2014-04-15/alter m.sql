alter table cases add Remarks1a nvarchar(1000),Remarks1b nvarchar(1000),
y1 int,y2 int,y3 int,y4 int,y5 int,y6 int,y7 int,y8 int,y9 int,y10 int
go
update cases set Remarks1a ='',Remarks1b ='',
y1 =0,y2 =0,y3 =0,y4 =0,y5 =0,y6 =0,y7 =0,y8 =0,y9 =0,y10 =0
go
alter table cases add y11 int,y12 int,y13 int
go
update cases set y11 =0,y12 =0,y13 =0
go
