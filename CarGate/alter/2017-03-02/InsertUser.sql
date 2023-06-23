
alter table [SalesMaster] add InsertUser int
alter table [DeletedSalesMaster] add InsertUser int


alter table entry add InsertUser int
alter table [Deletedentry] add InsertUser int

alter table entry2 add InsertUser int
alter table [Deletedentry2] add InsertUser int

alter table BankCash add InsertUser int
alter table [Deletedbankcash] add InsertUser int

alter table bankcash2 add InsertUser int
alter table [Deletedbankcash2] add InsertUser int

alter table bankcash3 add InsertUser int
alter table [Deletedbankcash3] add InsertUser int

alter table bankcash4 add InsertUser int
alter table [Deletedbankcash4] add InsertUser int

alter table bankcash_G add InsertUser int
alter table [Deletedbankcash_G] add InsertUser int

alter table bankcash_G2 add InsertUser int
alter table [Deletedbankcash_G2] add InsertUser int

alter table bankcash_G3 add InsertUser int
alter table [Deletedbankcash_G3] add InsertUser int

go

ctr 'SalesMaster'
go
ctr 'entry'
go
ctr 'entry2'
go
ctr 'BankCash'
go
ctr 'bankcash2'
go
ctr 'bankcash3'
go
ctr 'bankcash4'
go
ctr 'bankcash_G'
go
ctr 'bankcash_G2'
go
ctr 'bankcash_G3'
go
