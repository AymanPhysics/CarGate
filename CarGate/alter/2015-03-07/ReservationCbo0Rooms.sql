alter table ReservationCbo0Rooms add IsCurrent int

alter table ReservationCbo1Rooms add IsCurrent int
alter table ReservationCbo2Rooms add IsCurrent int

alter table ReservationCbo3Rooms add IsCurrent int
alter table ReservationRaysRooms add IsCurrent int
alter table CaseAttachments2Rooms add IsCurrent int
go
update ReservationCbo0Rooms set IsCurrent =1
update ReservationCbo1Rooms set IsCurrent =1
update ReservationCbo2Rooms set IsCurrent =1
update ReservationCbo3Rooms set IsCurrent =1
update ReservationRaysRooms set IsCurrent =1
update CaseAttachments2Rooms set IsCurrent =1