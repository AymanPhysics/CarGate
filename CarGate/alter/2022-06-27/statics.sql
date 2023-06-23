alter table statics add StopProfiler int not null default 0
alter table statics add HideSubAccNo int not null default 0
alter table statics add ShowSalaries int not null default 0
alter table statics add ShowCostCenter int not null default 0
alter table statics add ShowCostCenterSub int not null default 0
alter table statics add ShowAnalysis int not null default 0
alter table statics add ShowBanks int not null default 1
alter table statics add ShowBarcode int not null default 0
alter table statics add ShowItemSerialNo int not null default 0
alter table statics add ShowColorAndSize int not null default 0
alter table statics add ShowGridAccCombo int not null default 0
alter table statics add ShowShifts int not null default 0
alter table statics add ShowShiftForEveryStore int not null default 0
alter table statics add ShowQtySub int not null default 1
alter table statics add ShowPriceLists int not null default 0
alter table statics add ShowCurrency int not null default 0
alter table statics add ShowTaxETA int not null default 0
alter table statics add AllowMultiCurrencyPerSubAcc int not null default 0
alter table statics add ShowBankCash_G int not null default 0
alter table statics add ShowBankCash_G2 int not null default 0
alter table statics add ShowStoresMotionsEditing int not null default 0
alter table statics add ShowBankCashMotionsEditing int not null default 0
alter table statics add ShowGridAccNames int not null default 1
alter table statics add ShowBankCash_GAccNo_Not_LinkFile int not null default 0
alter table statics add EditPrices int not null default 0
alter table statics add UserSeeSalesPrice int not null default 0
alter table statics add UserSeePurchasesPrice int not null default 0
alter table statics add UserSeeImportPrice int not null default 0
alter table statics add UserCanRptExportButton int not null default 0
alter table statics add RptFromToday int not null default 0
alter table statics add UserCanRecieve1 int not null default 0
alter table statics add UserCanRecieve2 int not null default 0
alter table statics add ShowChat int not null default 0
alter table statics add AllowPreviousYearsForNonManager int not null default 1


--RivieraCenter
update statics set RptFromToday = 1

--ProjectType.ContractRaggal, ProjectType.ClinicPublicElSadaka, ProjectType.TransportationShawkat, ProjectType.Clothes, ProjectType.PLAccounts, ProjectType.AsebAcc, ProjectType.RivieraCenter, ProjectType.X2, ProjectType.El7ariry, ProjectType.Installments
update statics set ShowCostCenter = 1

		
--ProjectType.APS
update statics set AllowPreviousYearsForNonManager = 0



--ProjectType.RivieraCenter
update statics set ShowAnalysis = 1


--ProjectType.ContractRaggal, ProjectType.ZohorOLDXXXXX
update statics set ShowBanks = 0


--ProjectType.Clothes, ProjectType.X3, ProjectType.Perfume, ProjectType.MarketWithShifts, ProjectType.Market, ProjectType.X4, ProjectType.AsebAcc, ProjectType.StoresOnly, ProjectType.APS, ProjectType.PremiumMedicalSupplies, ProjectType.El7ariry, ProjectType.Installments, ProjectType.RivieraCenter, ProjectType.X1, ProjectType.ZohorOLDXXXXX, ProjectType.AboHamza
update statics set ShowBarcode = 1

		
--ProjectType.Installments
update statics set ShowItemSerialNo = 1

		
--ProjectType.Clothes
update statics set ShowColorAndSize = 1

		
ProjectType.Clothes, ProjectType.MarketWithShifts, ProjectType.El7ariry
update statics set ShowShifts = 1

		
--ProjectType.Clothes, ProjectType.El7ariry
update statics set ShowShiftForEveryStore = 1

		
--ProjectType.Clothes, ProjectType.X3
update statics set ShowQtySub = 0

		
--ProjectType.RivieraCenter, ProjectType.PremiumMedicalSupplies, ProjectType.El7ariry, ProjectType.Eagle, ProjectType.X1
update statics set ShowPriceLists = 1


--ProjectType.AlSafwaTrading, ProjectType.X2, ProjectType.PLAccounts, ProjectType.X1
update statics set ShowCurrency = 1

		
		
--ProjectType.TaxETA, ProjectType.Market
update statics set ShowTaxETA = 0

		
		
--ProjectType.X3, ProjectType.ContractRaggal, ProjectType.Eagle, ProjectType.PLAccounts, ProjectType.X4, ProjectType.AlSafwaTrading, ProjectType.APS, ProjectType.AsebAcc, ProjectType.RivieraCenter, ProjectType.X2, ProjectType.PremiumMedicalSupplies, ProjectType.El7ariry, ProjectType.Installments, ProjectType.X1, ProjectType.AboHamza, ProjectType.ZohorOLDXXXXX, ProjectType.Market, ProjectType.MarketWithShifts
update statics set ShowBankCash_G = 1


--Md.MyProjectType = ProjectType.AlSafwaTrading OrElse Md.MyProjectType = ProjectType.PremiumMedicalSupplies OrElse Md.MyProjectType = ProjectType.Eagle OrElse Md.MyProjectType = ProjectType.PLAccounts
update statics set ShowBankCash_G2 = 1

		
ProjectType.X3, ProjectType.ClinicPublicElSadaka, ProjectType.APSD, ProjectType.APS, ProjectType.X4
update statics set ShowStoresMotionsEditing = 1
update statics set ShowBankCashMotionsEditing = 1



ProjectType.PCs
update statics set ShowGridAccNames = 0



		
--ProjectType.ClinicPublicElSadaka, ProjectType.APSD, ProjectType.APS, ProjectType.Clothes, ProjectType.X3, ProjectType.X4, ProjectType.RivieraCenter, ProjectType.El7ariry, ProjectType.Installments, ProjectType.X1
update statics set ShowSalaries = 1


--ProjectType.RivieraCenter
update statics set ShowChat = 1
