--declare @MainAccNo nvarchar(100)='220601',@BankId bigint=501,@NewBankId bigint=14
--declare @MainAccNo nvarchar(100)='220602',@BankId bigint=502,@NewBankId bigint=15
--declare @MainAccNo nvarchar(100)='220603',@BankId bigint=503,@NewBankId bigint=16
--declare @MainAccNo nvarchar(100)='22040201',@BankId bigint=2040201,@NewBankId bigint=17
--declare @MainAccNo nvarchar(100)='22040202',@BankId bigint=2040202,@NewBankId bigint=18
--declare @MainAccNo nvarchar(100)='22040203',@BankId bigint=2040203,@NewBankId bigint=19
--declare @MainAccNo nvarchar(100)='22040204',@BankId bigint=2040204,@NewBankId bigint=20
--declare @MainAccNo nvarchar(100)='22040205',@BankId bigint=2040205,@NewBankId bigint=21
--declare @MainAccNo nvarchar(100)='210401',@BankId bigint=8020233,@NewBankId bigint=22
--declare @MainAccNo nvarchar(100)='210402',@BankId bigint=8020234,@NewBankId bigint=23
--declare @MainAccNo nvarchar(100)='210404',@BankId bigint=8020235,@NewBankId bigint=24
--declare @MainAccNo nvarchar(100)='210405',@BankId bigint=8020236,@NewBankId bigint=25
--declare @MainAccNo nvarchar(100)='210406',@BankId bigint=8020237,@NewBankId bigint=26
--declare @MainAccNo nvarchar(100)='210201',@BankId bigint=8020225,@NewBankId bigint=27
--declare @MainAccNo nvarchar(100)='210202',@BankId bigint=8020226,@NewBankId bigint=28
--declare @MainAccNo nvarchar(100)='210203',@BankId bigint=8020227,@NewBankId bigint=29
--declare @MainAccNo nvarchar(100)='210204',@BankId bigint=8020228,@NewBankId bigint=30
--declare @MainAccNo nvarchar(100)='210205',@BankId bigint=8020229,@NewBankId bigint=31
--declare @MainAccNo nvarchar(100)='210206',@BankId bigint=8020230,@NewBankId bigint=32



update BankCash_G2 set MainLinkFile=4,BankId=@NewBankId where MainLinkFile=6 and BankId=@BankId
update BankCash_G2 set LinkFile=4,SubAccNo=@NewBankId where LinkFile=6 and SubAccNo=@BankId

update EntryDt set SubAccNo=@NewBankId where MainAccNo=@MainAccNo and SubAccNo=@BankId
update Entry2 set SubAccNo1=@NewBankId where MainAccNo1=@MainAccNo and SubAccNo1=@BankId
update Entry2 set SubAccNo2=@NewBankId where MainAccNo2=@MainAccNo and SubAccNo2=@BankId

update BankCash_G3 set FromLinkFile=4,FromSubAccNo=@NewBankId where FromSubAccNo=@BankId
update BankCash_G3 set ToLinkFile=4,ToSubAccNo=@NewBankId where ToSubAccNo=@BankId

insert Credits([Id],[Name],[Bal0],[UserName],[MyGetDate],[AccNo],[Address],[Tel],[Mobile],[CurrencyId],[ApplyCurrencyCycle],[MainBal0],[Exchange])
select @NewBankId,[Name],[Bal0],[UserName],[MyGetDate],[AccNo],[Address],[Tel],[Mobile],[CurrencyId],[ApplyCurrencyCycle],[MainBal0],[Exchange]
from Banks
where Id=@BankId

delete from Banks
where Id=@BankId

update chart
set LinkFile=4 where id=@MainAccNo