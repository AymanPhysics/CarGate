alter table Cases add 
Protocole nvarchar(1000),Remarks nvarchar(1000)
,LMP datetime,EDD datetime,G nvarchar(1000),P nvarchar(1000),A nvarchar(1000)
,Other nvarchar(1000),SurgicalHistory nvarchar(1000),ObstetricalHistory nvarchar(1000)


alter table Reservations add
Utras nvarchar(1000),Cervix nvarchar(1000),Ovaries nvarchar(1000),Valva nvarchar(1000),Vagina nvarchar(1000)
,E2 nvarchar(1000),HMG nvarchar(1000),FSH nvarchar(1000),Against nvarchar(1000)
,Antagonist nvarchar(1000),RT nvarchar(1000),LT nvarchar(1000),EEnd nvarchar(1000),RRemarks nvarchar(1000)
,PB nvarchar(1000),Remarks1 nvarchar(1000),Remarks2 nvarchar(1000),NextVisitDate datetime
,Investigations nvarchar(1000)



alter table Employees add C7 int, C8 int, C9 int
