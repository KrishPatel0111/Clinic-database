use Project1;

;

go
CREATE VIEW [PatientBillSummary] AS
SELECT 
    Person.PersonID,
    CONCAT(Person.FirstName, ' ', Person.LastName) AS PatientName,
    SUM(Payment.TotalCharge) AS TotalCharges,
    SUM(Payment.RemainingDue) AS ReaminingDue,
    (SUM(Payment.TotalCharge) - SUM(Payment.RemainingDue)) AS TotalChargesPaid
FROM 
    Person
JOIN 
    Patient ON Person.PersonID = patient.PatientID
JOIN 
   Billing_Patient ON Patient.PatientID = Billing_Patient.PatientID
JOIN 
    Billing_Record  ON Billing_Patient.BillingRecordID = Billing_Record.BillingRecordID
JOIN 
    Payment ON Billing_Record.InvoiceNumber = Payment.InvoiceNumber
GROUP BY 
    Person.PersonID, Person.FirstName, Person.LastName;
go 

select * from PatientBillSummary;

go
CREATE VIEW EmployeeAppointmentTimeSheet AS
SELECT 
    Employee.EmployeeID,
    CONCAT(Person.FirstName, ' ', Person.LastName) AS EmployeeName,
    COUNT(Appointment.AppointmentID) AS TotalAppointments,
    SUM(Appointment.Duration) AS TotalAppointmentDuration
FROM 
    Employee
JOIN 
    Person  ON Employee.EmployeeID = Person.PersonID
JOIN 
    Licensed_Employee  ON Employee.EmployeeID = Licensed_Employee.EmployeeID
JOIN 
    Appointment ON Licensed_Employee.LicenseNumber=Appointment.LicenseNumber

GROUP BY 
    Employee.EmployeeID, Person.FirstName, Person.LastName;
go
select * from EmployeeAppointmentTimeSheet

-- Verify invoice exists 

IF EXISTS (SELECT 1 FROM Payment WHERE InvoiceNumber = 1001) 
BEGIN 
    --Insert the payment details into Payment table 
    INSERT INTO Payment (InvoiceNumber, TotalCharge, RemainingDue, PaymentStatus, PaymentDate, PaymentType) 
    VALUES (1001, 150.00, 150.00 - 50.00, 'Processed', '2023-07-25', 'Cash'); 
	-- Record the payment details based on PaymentType 
    IF 'Cash' = 'Check' 
    BEGIN 
        INSERT INTO CheckID (InvoiceNumber, CheckingNo, RoutingNo) 
        VALUES (1001, 12345678, 987654321); 
    END 
    ELSE IF 'Cash' = 'Cash' 
    BEGIN 
        INSERT INTO Cash (InvoiceNumber)
        VALUES (1001); 
    END 
    ELSE IF 'Cash' = 'Card' 
    BEGIN 
        INSERT INTO Card (InvoiceNumber, CardNumber) 
        VALUES (1001, 123456789000);
    END 
   --  Commit transaction 
    COMMIT; 
END 
ELSE 
BEGIN 
    -- Rollback the transaction if invoice does not exist 
    ROLLBACK; 
    PRINT 'Invoice does not exist.'; 
END 

BEGIN TRANSACTION INSERT_FIRST_APPOINMENT

-- Read from the PERSON table to check if the PersonID already exists
IF NOT EXISTS (SELECT 1 FROM PERSON WHERE PersonID = 1001)
BEGIN
    -- Insert into PERSON table
    INSERT INTO PERSON (PersonID, FirstName, LastName, SSN, DOB, Sex, MaritalStatus, StudentStatus, Ethnicity, Race, PersonPhone, PersonEmailAddress, PersonType, LocationID)
    VALUES (1002, 'John', 'Doe', '123456789', '1985-05-15', 'M', 'Single', 'No', 'Non-Hispanic', 'White', 1234567890, 'john.doe@example.com', 'Patient', 9);
	IF error THEN GO TO UNDO; END IF;

    -- Insert into PATIENT table
    INSERT INTO PATIENT (PatientID, RegistrationOnFile, ECName, Relationship, PhoneNumber, DateSigned, LastXRayDate, LegalGuardianID, EmployerName, PolicyName, SubscriberName, ReceptionistID, MedHisID)
    VALUES (1002, 'Y', 'Jane Doe', 'Spouse',1234567809, '2024-25-07', NULL, NULL, 'Acme Corp', 'HealthPlus', 'John Doe', 201, 301);
	IF error THEN GO TO UNDO; END IF;

    -- Insert into APPOINTMENT table
    INSERT INTO APPOINTMENT (AppointmentID, Reason, Date, Time, Duration, Status, Rooms, Equipment, ReceptionistID, LicenseNumber, PatientID)
    VALUES (501, 'Initial Checkup', '2024-07-01', '10:00:00', 30, 'Scheduled', 'Room1', 'Standard', 201, 111, 1002);
	IF error THEN GO TO UNDO; END IF;

	COMMIT; 

	GOTO FINISH;

	UNDO:
	 ROLLBACK;

	 FINISH:
      END ;


 BEGIN TRANSACTION  UpdateBillInfo;

 IF NOT EXISTS (SELECT 1 FROM PAYMENT WHERE InvoiceNumber = 701)
 BEGIN
-- Insert into PAYMENT table
INSERT INTO PAYMENT (InvoiceNumber, TotalCharge, RemainingDue, PaymentStatus, PaymentDate, PaymentType, PolicyName, AmountPaidByProvider)
VALUES (701, 150.00, 0.00, 'Paid', '2024-07-25', 'Card', 'HealthPlus', 150.00);
IF error THEN GO TO UNDO; END IF;

-- Update BILLING_RECORD table
UPDATE BILLING_RECORD
SET Billing_Record.RemainingDue = 0.00, PaymentStatus = 'Paid'
WHERE BillingRecordID = 601;
IF error THEN GO TO UNDO; END IF;

COMMIT;

BEGIN TRANSACTION NEXT_APPT_UPDATE_MEDICALHIS;

-- Read from the PERSON table to check if the PatientID exists
IF EXISTS (SELECT 1 FROM PERSON WHERE PersonID = 1002)
BEGIN
    -- Insert a new appointment for the patient
    INSERT INTO APPOINTMENT (AppointmentID, Reason, Date, Time, Duration, Status, Rooms, Equipment, ReceptionistID, LicenseNumber, PatientID)
    VALUES (502, 'Follow-up Checkup', '2024-08-15', '11:00:00', 45, 'Scheduled', 'Room2', 'Standard', 202, 402, 1002);
	IF error THEN GO TO UNDO; END IF;

    -- Update the patient's medical history to indicate the follow-up
    UPDATE MEDICAL_HISTORY
    SET MEDIcal_History.MissingLooseTeeth = '1 tooth fell'
    WHERE MedHisID = (SELECT MedHisID FROM PATIENT WHERE PatientID = 1002);
	IF error THEN GO TO UNDO; END IF;
COMMIT; 

	GOTO FINISH;

	UNDO:
	 ROLLBACK;

	 FINISH:
      END ;
