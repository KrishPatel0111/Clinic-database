--creating  
Create database Project1
use Project1

  --creating tables

create table Address_Info ( 

LocationID integer not null, 

ApptNo nvarchar(10), 

StreetAddress nvarchar(30) not null, 

City nvarchar(35) not null, 

State nvarchar(25) not null, 

Zipcode integer not null, 

primary key (LocationID)) 

  

  

create table Person ( 

PersonID integer not null, 

FirstName nvarchar(20) not null, 

LastName nvarchar(30) not null, 

SSN nvarchar(9) not null, 

DOB nvarchar(10), 

Sex nvarchar(1), 

MaritalStatus nvarchar(10), 

StudentStatus nvarchar(20), 

Ethnicity nvarchar(20), 

Race nvarchar(10) not null, 

PersonPhone bigint, 

PersonEmailAddress nvarchar(65), 

PersonType nvarchar(30), 

LocationID integer, 

primary key (PersonID), 

foreign key (LocationID) references Address_Info(LocationID)) 

  

  

create table Employee ( 

EmployeeID integer not null, 

Salary decimal, 

foreign key (EmployeeID) references Person(PersonID)) 

  

create table Legal_Guardian ( 

LegalGuardianID integer, 

Relationship nvarchar(50) not null, 

foreign key (LegalGuardianID) references Person(PersonID)) 

  

  

create table Employer ( 

EmployerName nvarchar(40), 

EmployerPhone bigint, 

EmployerAddress nvarchar(75), 

Status nvarchar(50), 

primary key (EmployerName)) 

  

create table Receptionist ( 

EmployeeID integer not null, 

foreign key (EmployeeID) references Person(PersonID)) 

  

  

create table Accepted_Insurance ( 

PolicyName nvarchar(50), 

Provider nvarchar(75), 

CoverageDetails nvarchar(20), 

CoverageType nvarchar(50), 

primary key (PolicyName)) 

  

  

create table Payment ( 

InvoiceNumber integer not null, 

TotalCharge decimal, 

RemainingDue decimal, 

PaymentStatus nvarchar(10), 

PaymentDate nvarchar(10), 

PaymentType nvarchar(10), 

primary key (InvoiceNumber)) 

  

  

create table Billing_Record ( 

BillingRecordID integer not null, 

BillingDate nvarchar(10) not null, 

SupervisingDoctor nvarchar(40) not null, 

DaysPast integer, 

InvoiceNumber integer not null, 

SecretaryID integer not null, 

PerUnitProcedure decimal, 

primary key (BillingRecordID), 

foreign key (InvoiceNumber) references Payment(InvoiceNumber), 

foreign key (SecretaryID) references Person(PersonID)) 

  

  

create table Medical_History ( 

MedHisID integer not null, 

HeadInjuries nvarchar(50), 

Surgery nvarchar(50), 

MajorDiagnosis nvarchar(50), 

GeneticDisorders nvarchar(50), 

MissingLooseTeeth nvarchar(50), 

AllergyInformation nvarchar(50), 

primary key (MedHisID)) 

  

create table Patient ( 

PatientID integer not null, 

RegistrationOnFile char(1), 

ECName nvarchar(50), 

Relationship nvarchar(15), 

PhoneNumber bigint, 

DateSigned date, 

LastXRayDate date, 

LegalGuardianID integer, 

EmployerName nvarchar(40), 

PolicyName nvarchar(50), 

SubscriberName nvarchar(50), 

ReceptionistID integer, 

MedHisID integer, 

primary key (PatientID), 

foreign key (PatientID) references Person(PersonID), 

foreign key (LegalGuardianID) references Person(PersonID), 

foreign key (EmployerName) references Employer(EmployerName), 

foreign key (PolicyName) references Accepted_Insurance(PolicyName), 

foreign key (ReceptionistID) references Person(PersonID), 

foreign key (MedHisID) references Medical_History(MedHisID)) 

  

create table Medication ( 

PatientID integer, 

MedicationName nvarchar(20), 

Dosage nvarchar(20), 

DatePrescribed date,

Foreign key (PatientID) references Person(PersonID)) 

  

create table Patient_Policy ( 

PolicyName nvarchar(50), 

GroupName nvarchar(25), 

PolicyID integer, 

InsuranceCarrierName nvarchar(50) 

Foreign key (PolicyName) references Accepted_Insurance(PolicyName) )

  

create table Billing_Patient ( 

PatientID integer, 

BillingRecordID integer, 

InsuranceCoverage nvarchar(20), 

Foreign key (BillingRecordID) references Person(personID), 

Foreign key (PatientID) references Person(PersonID)) 

  

create table Licensed_Employee ( 

LicenseNumber integer not null, 

EmployeeID integer not null, 

primary key (LicenseNumber), 

foreign key (EmployeeID) references Person(PersonID)) 

  

create table Dentist ( 

LicenseNumber integer not null, 

foreign key (LicenseNumber) references Licensed_Employee(LicenseNumber)) 

  

create table Hygienist ( 

LicenseNumber integer not null, 

foreign key (LicenseNumber) references Licensed_Employee(LicenseNumber)) 

  

create table Dental_Assistant ( 

LicenseNumber integer not null, 

foreign key (LicenseNumber) references Licensed_Employee(LicenseNumber)) 

  

create table Secretary ( 

EmployeeID integer not null, 

foreign key (EmployeeID) references Person(PersonID)) 

  

create table Standard_Dental_Procedure ( 

ProcedureType nvarchar(50) not null, 

Cost decimal, 

TypeofLicensedEmployee nvarchar(20) not null, 

primary key (ProcedureType)) 

  

create table CheckID ( 

InvoiceNumber integer not null, 

CheckingNo integer not null, 

RoutingNo integer not null, 

foreign key (InvoiceNumber) references Payment(InvoiceNumber)) 

  

create table Cash ( 

InvoiceNumber integer not null, 

foreign key (InvoiceNumber) references Payment(InvoiceNumber)) 

  

create table Card_Info ( 

CardNumber bigint, 

ExpDate nvarchar(10) not null, 

CVV integer not null, 

primary key (CardNumber)) 

  

create table Card ( 

InvoiceNumber integer not null, 

CardNumber bigint not null, 

foreign key (InvoiceNumber) references Payment(InvoiceNumber), 

foreign key (CardNumber) references Card_Info(CardNumber)) 

  

create table Appointment ( 

AppointmentID integer not null, 

Reason nvarchar(50), 

Date nvarchar(10), 

Time time, 

Duration integer, 

Status nvarchar(20), 

Rooms nvarchar(20), 

Equipment nvarchar(20), 

ReceptionistID integer not null, 

LicenseNumber integer not null, 

PatientID integer not null, 

primary key (AppointmentID), 

foreign key (ReceptionistID) references Person(PersonID), 

foreign key (LicenseNumber) references Licensed_Employee(LicenseNumber), 

foreign key (PatientID) references Person(PersonID)) 

  

create table Performs ( 

LicenseNumber integer,  

ProcedureType nvarchar(50), 

primary key (LicenseNumber, ProcedureType), 

foreign key (LicenseNumber) references Licensed_Employee(LicenseNumber), 

foreign key (ProcedureType) references Standard_Dental_Procedure(ProcedureType) )

  

create table HasCoverage ( 

ProcedureType nvarchar(50), 

PolicyName nvarchar(50), 

PerUnitChargeForInsurance decimal, 

primary key (ProcedureType, PolicyName), 

foreign key (ProcedureType) references Standard_Dental_Procedure(ProcedureType), 

foreign key (PolicyName) references Accepted_Insurance(PolicyName)) 

  

create table Completed ( 

AppointmentID integer not null, 

ProcedureType nvarchar(50) not null, 

ProcedureName nvarchar(50), 

primary key (AppointmentID, ProcedureType), 

foreign key (AppointmentID) references Appointment(AppointmentID), 

foreign key (ProcedureType) references Standard_Dental_Procedure(ProcedureType)) 

  

create table Generates ( 

ProcedureType nvarchar(50) not null, 

BillingRecordID integer not null, 

primary key (ProcedureType, BillingRecordID), 

foreign key (ProcedureType) references Standard_Dental_Procedure(ProcedureType), 

foreign key (BillingRecordID) references Billing_Record(BillingRecordID)) 
