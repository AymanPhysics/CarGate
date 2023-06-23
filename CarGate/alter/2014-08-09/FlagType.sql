alter table salesdetails add FlagType int,SerialNo int default(0)
alter table deletedsalesdetails add FlagType int,SerialNo int default(0)
go
update salesdetails set FlagType=0,SerialNo=0
update deletedsalesdetails set FlagType=0,SerialNo=0

go

alter table salesdetails add SalesInvoiceNo int
alter table deletedsalesdetails add SalesInvoiceNo int
go
update salesdetails set SalesInvoiceNo=0
update deletedsalesdetails set SalesInvoiceNo=0

go


alter table ItemCollectionMotionDetails add SerialNo int default(0)
go
update ItemCollectionMotionDetails set SerialNo=0

go


alter table statics add SalesSerialNoCount int
go
update statics set SalesSerialNoCount =4