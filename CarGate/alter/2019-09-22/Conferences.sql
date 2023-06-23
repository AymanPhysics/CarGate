ct 'Universities'
go
ct 'Specialties'
go
CTSub 'SubSpecialties','SpecialtyId'
go
ct Degrees
go
ct Titles
go
ct Conferences
go
alter table Conferences add IsActive int
go
ct RegistrationTypes
go
ct AttendanceTypes
go
ct Sponsors
go
ctsub 'Workshops','ConferenceId'
go
ct 'Hotels'
go
ct 'RoomTypes'
go
ct 'RoomUpgradeTypes'
go

