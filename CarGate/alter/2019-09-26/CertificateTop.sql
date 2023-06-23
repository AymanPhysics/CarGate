alter table conferences add CertificateLeft  int,CertificateTop int
go
update conferences set CertificateLeft  =0,CertificateTop =0 where CertificateTop is null
go
alter table customers add SponsorId bigint
go
alter table conferences add IDLeft  int,IDTop int
go
update conferences set IDLeft  =0,IDTop =0 where IDTop is null
go
