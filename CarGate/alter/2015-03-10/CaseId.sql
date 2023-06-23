alter table ReservationCbo0Rooms add CaseId int
go
update ReservationCbo0Rooms set CaseId =(
select CaseId from RoomsData
where RoomsData.RoomId=ReservationCbo0Rooms.RoomId and RoomsData.IsCurrent=ReservationCbo0Rooms.IsCurrent and RoomsData.Id=ReservationCbo0Rooms.ReservId
)
