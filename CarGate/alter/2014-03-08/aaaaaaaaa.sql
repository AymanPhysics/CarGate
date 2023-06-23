alter table CasesComplaint add Mykey int
alter table CasesComplaint add MyFlag nvarchar(100)
alter table Investigations add Mykey int
alter table Investigations add MyFlag nvarchar(100)


drop table MyImages
create table MyImages
(k1 nvarchar(100),
k2 nvarchar(100),
k3 nvarchar(100),
Notes nvarchar(1000),
Img1 image,
Img2 image,
Img3 image,
Img4 image
)


select * from MyImages