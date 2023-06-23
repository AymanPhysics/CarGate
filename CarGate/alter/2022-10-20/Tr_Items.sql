 
CREATE TRIGGER Tr_Items
   ON  Items
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	
	insert DeletedItems(DeletedDate,UserDelete,LastLine,State,Id,Name,GroupId,TypeId,PrintingGroupId,StoreId,Unit,UnitCount,PurchasePrice,PurchasePriceSub,SalesPrice,SalesPriceSub,
ItemType,Image,UnitSub,UserName,MyGetDate,Adding,IsTables,IsTakeAway,IsDelivary,UnitCount2,PurchasePriceSub2,
SalesPriceSub2,UnitSub2,Limit,SizeId,ColorId,Barcode,IsStopped,Flag,EnName,ImportPrice,ImportPriceSub,ImportPriceSub2,
IsKidneysWash,ItemUnitId,CodeOnPackage,IsService,CountryId,AllowEditSalesPrice,Bonus,Target,LimitSub,Maximum,MaximumSub,
Stopped,IsHiddenFromLimit,SystemUser,UpdateDate,Notes,BoardId,SubjectLevelId,SubjectId,TeacherId,itemCode,TaxApi_UnitTypeId,TaxApi_UnitTypeQty)
	select getdate(),0,0,'AutomaticDeleted',Id,Name,GroupId,TypeId,PrintingGroupId,StoreId,Unit,UnitCount,PurchasePrice,PurchasePriceSub,SalesPrice,SalesPriceSub,
ItemType,null Image,UnitSub,UserName,MyGetDate,Adding,IsTables,IsTakeAway,IsDelivary,UnitCount2,PurchasePriceSub2,
SalesPriceSub2,UnitSub2,Limit,SizeId,ColorId,Barcode,IsStopped,Flag,EnName,ImportPrice,ImportPriceSub,ImportPriceSub2,
IsKidneysWash,ItemUnitId,CodeOnPackage,IsService,CountryId,AllowEditSalesPrice,Bonus,Target,LimitSub,Maximum,MaximumSub,
Stopped,IsHiddenFromLimit,SystemUser,UpdateDate,Notes,BoardId,SubjectLevelId,SubjectId,TeacherId,itemCode,TaxApi_UnitTypeId,TaxApi_UnitTypeQty
	from Deleted
	
	insert DeletedItems(DeletedDate,UserDelete,LastLine,State,Id,Name,GroupId,TypeId,PrintingGroupId,StoreId,Unit,UnitCount,PurchasePrice,PurchasePriceSub,SalesPrice,SalesPriceSub,
ItemType,Image,UnitSub,UserName,MyGetDate,Adding,IsTables,IsTakeAway,IsDelivary,UnitCount2,PurchasePriceSub2,
SalesPriceSub2,UnitSub2,Limit,SizeId,ColorId,Barcode,IsStopped,Flag,EnName,ImportPrice,ImportPriceSub,ImportPriceSub2,
IsKidneysWash,ItemUnitId,CodeOnPackage,IsService,CountryId,AllowEditSalesPrice,Bonus,Target,LimitSub,Maximum,MaximumSub,
Stopped,IsHiddenFromLimit,SystemUser,UpdateDate,Notes,BoardId,SubjectLevelId,SubjectId,TeacherId,itemCode,TaxApi_UnitTypeId,TaxApi_UnitTypeQty)
	select getdate(),0,0,'Automaticinserted',Id,Name,GroupId,TypeId,PrintingGroupId,StoreId,Unit,UnitCount,PurchasePrice,PurchasePriceSub,SalesPrice,SalesPriceSub,
ItemType,null Image,UnitSub,UserName,MyGetDate,Adding,IsTables,IsTakeAway,IsDelivary,UnitCount2,PurchasePriceSub2,
SalesPriceSub2,UnitSub2,Limit,SizeId,ColorId,Barcode,IsStopped,Flag,EnName,ImportPrice,ImportPriceSub,ImportPriceSub2,
IsKidneysWash,ItemUnitId,CodeOnPackage,IsService,CountryId,AllowEditSalesPrice,Bonus,Target,LimitSub,Maximum,MaximumSub,
Stopped,IsHiddenFromLimit,SystemUser,UpdateDate,Notes,BoardId,SubjectLevelId,SubjectId,TeacherId,itemCode,TaxApi_UnitTypeId,TaxApi_UnitTypeQty
	from inserted
END
GO
