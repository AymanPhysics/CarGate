 --SONAC ONLY
/*
update Employees set DefaultStore=0

update Statics set 
S_AccNo1='',S_AccType1=0,
S_AccNo2='',S_AccType2=0,
S_AccNo3='',S_AccType3=0,
P_AccNo1='',P_AccType1=0,
P_AccNo2='',P_AccType2=0,
P_AccNo3='',P_AccType3=0,
PoneComment='',PoneHeader='',
OutPatientAccNo='',OutPatientSubAccNo=0,
InPatientAccNo='',InPatientSubAccNo=0,
OperationAccNo='',OperationSubAccNo=0,OperationSubAccNo2=0,
BankCash_G2_Flag1_DedAcc='',BankCash_G2_Flag2_DedAcc='',
YearProfitAccNo='21040000',PrevYearProfitAccNo='21030000',
TaxAcc='',LabServiceGroupId=0,AppartementsAccNo='',
S_AccNo='',R_S_AccNo='',P_AccNo='',R_P_AccNo=''


delete omega2017.dbo.CostCenterSubs
insert omega2017.dbo.CostCenterSubs(Id,Name)
select * from cctypes

*/