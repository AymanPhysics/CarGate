
alter table statics add BankCash_G2_Flag1_DedAcc nvarchar(100),BankCash_G2_Flag2_DedAcc nvarchar(100)
go
--update statics set BankCash_G2_Flag1_DedAcc ='321',BankCash_G2_Flag2_DedAcc ='421' where BankCash_G2_Flag2_DedAcc  is null
update statics set BankCash_G2_Flag1_DedAcc ='420301',BankCash_G2_Flag2_DedAcc ='320201' where BankCash_G2_Flag2_DedAcc  is null
go
alter table BankCash_G2 add MainValue2Ded float,Value2Ded float
go
update BankCash_G2 set MainValue2Ded =0,Value2Ded =0 where Value2Ded  is null
