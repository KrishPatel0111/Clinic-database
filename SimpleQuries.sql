use Project1;

--a
SELECT LastName, MEDICATION.PatientID, MedicationName, Dosage, DatePrescribed FROM PATIENT, PERSON, MEDICATION
WHERE PATIENT.PatientID=PERSON.PersonID
AND PATIENT.PatientID= MEDICATION.PatientID
ORDER BY LastName, MedicationName;

--b
SELECT Patient.PatientID, FirstName, LastName, RegistrationOnFile, ECName, Relationship, PhoneNumber,DateSigned, LastXRayDate, LegalGuardianID, EmployerName, Patient_Policy.PolicyName, SubscriberName, MedHisID   FROM Patient, Person, Patient_Policy
WHERE InsuranceCarrierName = 'Delta Dental' 
AND PATIENT.PatientID=PERSON.PersonID
AND PATIENT.PolicyName=Patient_Policy.PolicyName;

--c
SELECT EmployeeID, LastName, Date, ProcedureType FROM Person, Licensed_Employee, Appointment, Completed
WHERE EmployeeID = Person.PersonID
AND LastName='Smilow'
AND Completed.AppointmentID = Appointment.AppointmentID
AND Appointment.LicenseNumber=Licensed_Employee.LicenseNumber;

--d
SELECT Payment.InvoiceNumber, PatientID, DaysPast, RemainingDue, PersonPhone, PersonEmailAddress  From Payment, Person, Billing_Record, Billing_Patient
WHERE DaysPast>30
AND Billing_Record.InvoiceNumber=Payment.InvoiceNumber
AND Billing_Patient.BillingRecordID=Billing_Record.BillingRecordID
AND Person.PersonID=Billing_Patient.PatientID
AND RemainingDue>10


--e
SELECT PatientID, sum(TotalCharge) AS TotalRevenueGenerated FROM Billing_Patient, Billing_Record, Payment
WHERE Billing_Patient.BillingRecordID=Billing_Record.BillingRecordID
AND Billing_Record.InvoiceNumber=Payment.InvoiceNumber
GROUP BY PatientID


--f
SELECT EmployeeID, FirstName, LastName, Appointment.LicenseNumber, Count(ProcedureType) AS TotalProcedure FROM Person, Appointment, Licensed_Employee, Completed
WHERE Person.PersonID=Licensed_Employee.EmployeeID
AND Completed.AppointmentID=Appointment.AppointmentID
AND Appointment.LicenseNumber=Licensed_Employee.LicenseNumber
GROUP BY EmployeeID, FirstName, LastName, Appointment.LicenseNumber
HAVING COUNT(ProcedureType)<5

--g
SELECT Standard_Dental_Procedure.ProcedureType, max(Cost) AS maxCost, count(AppointmentID) AS NoOfTimesPerformed FROM Standard_Dental_Procedure, Completed
WHERE Standard_Dental_Procedure.ProcedureType=Completed.ProcedureType
GROUP BY Standard_Dental_Procedure.ProcedureType
ORDER BY max(Cost) DESC;

--h
SELECT PaymentType, count(InvoiceNumber) as TimesUsed, sum(TotalCharge) as TotalChargedSum FROM Payment
GROUP BY PaymentType;


--i
SELECT TOP 1 PolicyName, count(PatientID) AS PatientCount FROM Patient
GROUP BY PolicyName
ORDER BY PatientCount DESC

