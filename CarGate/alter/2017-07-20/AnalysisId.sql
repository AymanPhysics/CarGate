alter table BankCash add AnalysisId bigint default 0,CostCenterSubId bigint default 0
alter table BankCash_G add AnalysisId bigint default 0,CostCenterSubId bigint default 0
alter table BankCash_G2 add AnalysisId bigint default 0,CostCenterSubId bigint default 0
alter table BankCash2 add AnalysisId bigint default 0,CostCenterSubId bigint default 0
alter table Buildings add AnalysisId bigint default 0,CostCenterSubId bigint default 0
alter table EntryDt add AnalysisId bigint default 0,CostCenterSubId bigint default 0

go

update BankCash set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
update BankCash_G set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
update BankCash_G2 set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
update BankCash2 set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
update Buildings set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
update EntryDt set AnalysisId =0,CostCenterSubId =0 where CostCenterSubId  is null
