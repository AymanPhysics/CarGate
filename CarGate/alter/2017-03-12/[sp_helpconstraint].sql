EXECUTE [dbo].[sp_helpconstraint] 'Customers'
EXECUTE [dbo].[sp_helpconstraint] 'Suppliers'
EXECUTE [dbo].[sp_helpconstraint] 'Debits'
EXECUTE [dbo].[sp_helpconstraint] 'Credits'
EXECUTE [dbo].[sp_helpconstraint] 'Saves'
EXECUTE [dbo].[sp_helpconstraint] 'Banks'
EXECUTE [dbo].[sp_helpconstraint] 'Sellers'
EXECUTE [dbo].[sp_helpconstraint] 'MoneyChangers'
EXECUTE [dbo].[sp_helpconstraint] 'OutComeTypes'
EXECUTE [dbo].[sp_helpconstraint] 'InComeTypes'
EXECUTE [dbo].[sp_helpconstraint] 'OrderTypes'
EXECUTE [dbo].[sp_helpconstraint] 'Assets'
EXECUTE [dbo].[sp_helpconstraint] 'Cases'

alter table Customers drop constraint DF__Customers__Curre__0A096455
alter table Debits drop constraint DF__Debits__Currency__0268428D
alter table Credits drop constraint DF__Credits__Currenc__035C66C6
alter table Saves drop constraint DF__Saves__CurrencyI__04508AFF
alter table Banks drop constraint DF__Banks__CurrencyI__0544AF38
alter table Sellers drop constraint DF__Sellers__Currenc__0638D371
alter table MoneyChangers drop constraint DF__MoneyChan__Curre__072CF7AA
alter table OutComeTypes drop constraint DF__OutComeTy__Curre__1FF8A574
alter table InComeTypes drop constraint DF__InComeTyp__Curre__22D5121F
alter table OrderTypes drop constraint DF__OrderType__Curre__1DE63FD0
alter table Assets drop constraint DF__Assets__Currency__67D51339
alter table Cases drop constraint DF__Cases__CurrencyI__645E4C1A



update Assets set CurrencyId =1 where CurrencyId =0
update Banks set CurrencyId =1 where CurrencyId =0
update Cases set CurrencyId =1 where CurrencyId =0
update Credits set CurrencyId =1 where CurrencyId =0
update Customers set CurrencyId =1 where CurrencyId =0
update Debits set CurrencyId =1 where CurrencyId =0
update InComeTypes set CurrencyId =1 where CurrencyId =0
update MoneyChangers set CurrencyId =1 where CurrencyId =0
update OrderTypes set CurrencyId =1 where CurrencyId =0
update OutComeTypes set CurrencyId =1 where CurrencyId =0
update Saves set CurrencyId =1 where CurrencyId =0
update Sellers set CurrencyId =1 where CurrencyId =0
update Suppliers set CurrencyId =1 where CurrencyId =0



ALTER TABLE Customers ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Suppliers ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Debits ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Credits ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Saves ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Banks ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Sellers ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE MoneyChangers ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE OutComeTypes ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE InComeTypes ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE OrderTypes ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Assets ADD  DEFAULT ((1)) FOR currencyid
ALTER TABLE Cases ADD  DEFAULT ((1)) FOR currencyid
