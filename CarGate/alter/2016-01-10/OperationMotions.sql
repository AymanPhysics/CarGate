drop TABLE OperationMotions
go
CREATE TABLE OperationMotions(
	InvoiceNo int NOT NULL,
	DayDate datetime NULL,
	DrId1 int NULL,
	DrId2 int NULL,
	DrId3 int NULL,
	AnesthetistId int NULL,
	RoomValue float NULL,
	Dr1Value float NULL,
	Dr2Value float NULL,
	Dr3Value float NULL,
	AnesthetistValue float NULL,
	CsValue float NULL,
	CoValue float NULL,
	Value float NULL,
	OperationTypeId int NULL,
	CaseId int NULL,
	Canceled int NULL,
	Notes nvarchar(1000) NULL,
	UserName int NULL,
	MyGetDate datetime NULL,
	SerialId int NULL,
	Payed float NULL,
	Remaining float NULL,
	Done int NULL,
	RemainingDate datetime NULL,
	EmpIdReservation int NULL,
	EmpIdRemaining int NULL,
	EmpIdCanceled int NULL,
	CanceledDate datetime NULL,
	SerialId2 int NULL,
	Returned int NULL,
	ReturnedDate datetime NULL,
	EmpIdReturned int NULL,
	IsEditing int NULL,
	MyLine int IDENTITY(1,1) NOT NULL,
 CONSTRAINT PK_OperationMotions PRIMARY KEY CLUSTERED 
(
	InvoiceNo ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) 
)

GO


