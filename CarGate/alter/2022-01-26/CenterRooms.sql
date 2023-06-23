exec CTSub 'CenterRooms','StoreId'
go
alter table BankCash6 add IsClosed int, StoreId int, RoomId int
alter table deletedBankCash6 add IsClosed int, StoreId int, RoomId int