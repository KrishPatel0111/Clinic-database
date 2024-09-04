
 use Project1;

-- Insert data into Address_Info table  

INSERT INTO Address_Info VALUES  

  (1, 'Apt 101', '2214 High St', 'Columbus', 'OH', 43215), 

  (2, 'Apt 202', '2104 Woodruff Ave', 'Columbus', 'OH', 43210), 

  (3, 'Suite 303', '123 Maple Ave', 'Dublin', 'OH', 43017), 

  (4, 'Unit 404', '456 Oak St', 'Hilliard', 'OH', 43026), 

  (5, 'Room 505', '789 Pine Ln', 'Westerville', 'OH', 43081), 

  (6, 'Apt 606', '321 Birch Rd', 'Grove City', 'OH', 43123), 

  (7, 'Apt 707', '654 Cedar Dr', 'Gahanna', 'OH', 43230), 

  (8, 'Apt 808', '987 Elm St', 'Reynoldsburg', 'OH', 43068), 

  (9, 'Suite 909', '135 Spruce Blvd', 'Pickerington', 'OH', 43147), 

  (10, 'Unit 1010', '246 Main St', 'Canal Winchester', 'OH', 43110); 

  

-- Insert data into Person table  

INSERT INTO Person VALUES  

  (1, 'David', 'Anderson', '123456789', '1990-05-15', 'M', 'Single', 'Full-Time', 'Caucasian', 'White', 6145551234, 'david.anderson@example.com', 'Employee', 1), 

  (2, 'Emily', 'Smith', '987654321', '1985-08-20', 'F', 'Married', 'Part-Time', 'Asian', 'Asian', 6145555678, 'emily.smith@example.com', 'Patient', 2), 

  (3, 'John', 'Johnson', '234567890', '1978-12-01', 'M', 'Divorced', 'Full-Time', 'Hispanic', 'Hispanic', 6145557890, 'john.johnson@example.com', 'Patient', 3), 

  (4, 'Sarah', 'Brown', '345678901', '1995-03-10', 'F', 'Single', 'Full-Time', 'African American', 'Black', 6145552345, 'sarah.brown@example.com', 'Patient', 4), 

  (5, 'Michael', 'Davis', '456789012', '1980-07-25', 'M', 'Married', 'Full-Time', 'Caucasian', 'White', 6145556789, 'michael.davis@example.com', 'Employee', 5), 

  (6, 'Jessica', 'Wilson', '567890123', '1992-09-30', 'F', 'Single', 'Part-Time', 'Asian', 'Asian', 6145553456, 'jessica.wilson@example.com', 'Patient', 6), 

  (7, 'Daniel', 'Martinez', '678901234', '1987-04-12', 'M', 'Married', 'Full-Time', 'Hispanic', 'Hispanic', 6145554567, 'daniel.martinez@example.com', 'Patient', 7), 

  (8, 'Laura', 'Garcia', '789012345', '1983-11-18', 'F', 'Divorced', 'Full-Time', 'Hispanic', 'Hispanic', 6145558765, 'laura.garcia@example.com', 'Patient', 8), 

  (9, 'Christopher', 'Lee', '890123456', '1975-06-05', 'M', 'Single', 'Full-Time', 'Asian', 'Asian', 6145559876, 'christopher.lee@example.com', 'Employee', 9), 

  (10, 'Megan', 'Miller', '901234567', '1998-02-28', 'F', 'Single', 'Part-Time', 'Caucasian', 'White', 6145557654, 'megan.miller@example.com', 'Patient', 10); 

  INSERT INTO Person VALUES  
  (11, 'Michael', 'Taylor', '123123123', '1975-05-05', 'M', 'Married', 'None', 'Non-Hispanic', 'White', 5678901234, 'michael.taylor@example.com', 'Patient', 5),
(12, 'Jessica', 'Martinez', '321321321', '1988-06-06', 'F', 'Single', 'None', 'Hispanic', 'White', 6789012345, 'jessica.martinez@example.com', 'Employee', 6),
(13, 'William', 'Anderson', '789789789', '1992-07-07', 'M', 'Single', 'Full-time', 'Non-Hispanic', 'Black', 7890123456, 'william.anderson@example.com', 'Legal Guardian', 7),
(14, 'Sarah', 'Thomas', '456456456', '1995-08-08', 'F', 'Married', 'Part-time', 'Non-Hispanic', 'Asian', 8901234567, 'sarah.thomas@example.com', 'Patient', 8),
(15, 'David', 'Jackson', '654654654', '2000-09-09', 'M', 'Single', 'Student', 'Hispanic', 'White', 9012345678, 'david.jackson@example.com', 'Patient', 9),
(16, 'Linda', 'White', '147147147', '1970-10-10', 'F', 'Married', 'None', 'Non-Hispanic', 'White', 2345678901, 'linda.white@example.com', 'Patient', 10);

-- Insert data into Employee table  

INSERT INTO Employee VALUES  

  (1, 60000.00), 

  (5, 70000.00), 

  (9, 55000.00); 

  

-- Insert data into Legal_Guardian table  

INSERT INTO Legal_Guardian VALUES  

  (2, 'Parent'), 

  (3, 'Sibling'), 

  (4, 'Grandparent'); 

  

-- Insert data into Employer table  

INSERT INTO Employer VALUES  

  ('Microsoft', 4255556789, 'One Microsoft, WayRedmond, WA', 'Active'), 

  ('Google', 6505551234, '1600 Amphitheatre Parkway, Mountain View, CA', 'Active'), 

  ('Apple', 4085554321, '1 Apple Park Way, Cupertino, CA', 'Active'); 

  

-- Insert data into Receptionist table  

INSERT INTO Receptionist VALUES  

  (10), 

  (7), 

  (3); 

  

-- Insert data into Accepted_Insurance table  

INSERT INTO Accepted_Insurance VALUES  

  ('Health Plan A', 'Anthem Blue Cross Blue Shield', 'Full coverage', 'Medical'), 

  ('Dental Plan B', 'Delta Dental', 'Basic coverage', 'Dental'), 

  ('Dental Plan C', 'VSP Dental Care', 'Full coverage', 'Dental'); 

  

-- Insert data into Payment table  

INSERT INTO Payment VALUES  

  (1001, 150.00, 50.00, 'Partial', '2023-07-10', 'Card'), 

  (1002, 200.00, 0.00, 'Paid', '2023-07-12', 'Cash'), 

  (1003, 300.00, 150.00, 'Partial', '2023-07-15', 'Check'); 

  

-- Insert data into Billing_Record table  

INSERT INTO Billing_Record VALUES  

  (1, '2023-07-01', 'Dr. Smith', 30, 1001, 10, 150.00), 

  (2, '2023-07-05', 'Dr. Johnson', 15, 1002, 7, 200.00), 

  (3, '2023-07-10', 'Dr. Williams', 20, 1003, 3, 300.00); 

  

-- Insert data into Medical_History table  

INSERT INTO Medical_History VALUES  

  (1, 'None', 'Appendectomy', 'None', 'None', 'None', 'Peanuts'), 

  (2, 'Head trauma', 'Knee surgery', 'Diabetes', 'None', 'None', 'Latex allergy'), 

  (3, 'None', 'None', 'High blood pressure', 'Celiac disease', 'None', 'None'),
  
  (4, 'Skull Fracture', 'None', 'None', 'Low blood pressure', 'None', 'None'),
  
  (5,  'None', 'None', 'None', 'None', 'None', 'None'); 

  

-- Insert data into Patient table  

INSERT INTO Patient VALUES  

  (2, 'Y', 'James Anderson', 'Spouse', 6145538901, '2024-01-01', '2023-06-01', 2, 'Microsoft', 'Health Plan A', 'Emily Anderson', 10, 1), 

  (4, 'N', 'Sophia Brown', 'Child', 6145552345, '2024-02-15', '2023-05-01', 4, 'Apple', 'Dental Plan B', 'Michael Davis', 7, 2), 

  (6, 'Y', 'Olivia Wilson', 'Child', 6145553456, '2024-03-20', '2023-04-15', 6, 'Google', 'Dental Plan C', 'Jessica Wilson', 3, 3), 

  (8, 'N', 'Lucas Garcia', 'Child', 6145558765, '2024-04-10', '2023-03-10', 8, 'Apple', 'Health Plan A', 'Laura Garcia', 7, 4), 

  (10, 'Y', 'Emma Miller', 'Child', 6145557654, '2024-05-05', '2023-02-05', 10, 'Microsoft', 'Dental Plan B', 'Megan Miller', 10, 5); 

  

-- Insert data into Medication table  

INSERT INTO Medication VALUES  

  (2, 'Aspirin', '100mg', '2023-02-05'), 
   (2, 'Xyzal', '100mg', '2023-02-05'),

  (4, 'Ibuprofen', '200mg', '2023-01-05'), 

  (6, 'Amoxicillin', '250mg', '2023-02-28'), 

  (8, 'Allegra', '180mg', '2023-02-11'), 

  (10, 'Tylenol', '500mg', '2023-11-05'); 

  

-- Insert data into Patient_Policy table  

INSERT INTO Patient_Policy VALUES  

  ('Health Plan A', 'Family', 1, 'Anthem Blue Cross Blue Shield'), 

  ('Dental Plan B', 'Individual', 2, 'Delta Dental'), 

  ('Dental Plan C', 'Family', 3, 'VSP Dental Care'); 

  

-- Insert data into Billing_Patient table  

INSERT INTO Billing_Patient VALUES  

  (2, 1, '80% coverage'), 

  (4, 2, '50% coverage'), 

  (6, 3, '70% coverage'), 

  (8, 1, '90% coverage'), 

  (10, 2, '60% coverage'); 

  

-- Insert data into Licensed_Employee table  

INSERT INTO Licensed_Employee VALUES  

  (101, 1), 

  (102, 5), 

  (103, 9),
  (104, 11), 

  (105, 12), 

  (106, 13),
  (107, 14), 

  (108, 15), 

  (109, 16);

  

-- Insert data into Dentist table  

INSERT INTO Dentist VALUES  

  (101), 

  (102), 

  (103); 

  

-- Insert data into Hygienist table  

INSERT INTO Hygienist VALUES  

  (104), 

  (105), 

  (106); 

  

-- Insert data into Dental_Assistant table  

INSERT INTO Dental_Assistant VALUES  

  (107), 

  (108), 

  (109); 

  

-- Insert data into Standard_Dental_Procedure table  

INSERT INTO Standard_Dental_Procedure VALUES  

  ('Cleaning', 100.00, 'Hygienist'), 

  ('Extraction', 300.00, 'Dentist'), 

  ('Fillings', 200.00, 'Dental Assistant'), 

  ('Root Canal', 500.00, 'Dentist'), 

  ('X-Ray', 50.00, 'Hygienist'), 

  ('Whitening', 150.00, 'Dental Assistant'), 

  ('Dental Implant', 1000.00, 'Dentist'), 

  ('Orthodontics', 1500.00, 'Dentist'), 

  ('Crown', 800.00, 'Dentist'), 

  ('Bridge', 1200.00, 'Dentist'); 

  
  INSERT INTO Secretary VALUES
  (7)

-- Insert data into CheckID table  

INSERT INTO CheckID VALUES  

  (1001, 11111111, 22222222), 

  (1002, 33333333, 44444444), 

  (1003, 55555555, 66666666); 

  

-- Insert data into Cash table  

INSERT INTO Cash VALUES  

  (1001), 

  (1002), 

  (1003); 

  

-- Insert data into Card_Info table  

INSERT INTO Card_Info VALUES  

  (1234567890123456, '2025-12', 123), 

  (9876543210987654, '2024-10', 456), 

  (1111222233334444, '2023-08', 789); 

  

-- Insert data into Card table  

INSERT INTO Card VALUES  

  (1001, 1234567890123456), 

  (1002, 9876543210987654), 

  (1003, 1111222233334444); 

  

-- Insert data into Appointment table  

INSERT INTO Appointment VALUES  

  (1, 'Checkup', '2023-08-01', '10:00:00', 30, 'Scheduled', 'Room 1', 'Equipment A', 10, 101, 2), 

  (2, 'Extraction', '2023-08-02', '11:00:00', 60, 'Scheduled', 'Room 2', 'Equipment B', 7, 102, 4), 

  (3, 'Cleaning', '2023-08-03', '12:00:00', 45, 'Scheduled', 'Room 3', 'Equipment C', 3, 103, 6), 

  (4, 'Fillings', '2023-08-04', '13:00:00', 75, 'Scheduled', 'Room 4', 'Equipment D', 7, 101, 8), 

  (5, 'Root Canal', '2023-08-05', '14:00:00', 90, 'Scheduled', 'Room 5', 'Equipment E', 10, 102, 10), 

  (6, 'X-Ray', '2023-08-06', '15:00:00', 15, 'Scheduled', 'Room 6', 'Equipment F', 3, 103, 1), 

  (7, 'Whitening', '2023-08-07', '16:00:00', 30, 'Scheduled', 'Room 7', 'Equipment G', 7, 101, 3), 

  (8, 'Dental Implant', '2023-08-08', '17:00:00', 120, 'Scheduled', 'Room 8', 'Equipment H', 10, 102, 5), 

  (9, 'Orthodontics', '2023-08-09', '18:00:00', 180, 'Scheduled', 'Room 9', 'Equipment I', 3, 103, 7), 

  (10, 'Crown', '2023-08-10', '19:00:00', 90, 'Scheduled', 'Room 10', 'Equipment J', 7, 101, 9); 

  

-- Insert data into Performs table  

INSERT INTO Performs VALUES  

  (101, 'Cleaning'), 

  (102, 'Extraction'), 

  (103, 'Fillings'), 

  (101, 'Root Canal'), 

  (102, 'X-Ray'), 

  (103, 'Whitening'), 

  (101, 'Dental Implant'), 

  (102, 'Orthodontics'), 

  (103, 'Crown'), 

  (101, 'Bridge'); 

  

-- Insert data into HasCoverage table  

INSERT INTO HasCoverage VALUES  

  ('Cleaning', 'Health Plan A', 80.00), 

  ('Extraction', 'Dental Plan B', 70.00), 

  ('Fillings', 'Dental Plan B', 60.00), 

  ('Root Canal', 'Health Plan A', 75.00), 

  ('X-Ray', 'Health Plan A', 90.00), 

  ('Whitening', 'Dental Plan C', 50.00), 

  ('Dental Implant', 'Dental Plan B', 80.00), 

  ('Orthodontics', 'Health Plan A', 60.00), 

  ('Crown', 'Dental Plan B', 70.00), 

  ('Bridge', 'Health Plan A', 85.00); 

  

-- Insert data into Completed table  

INSERT INTO Completed VALUES  

  (2, 'Extraction', 'Tooth Extraction'), 

  (3, 'Cleaning', 'Teeth Cleaning'), 

  (4, 'Fillings', 'Dental Fillings'), 

  (5, 'Root Canal', 'Root Canal Treatment'), 

  (6, 'X-Ray', 'Dental X-Ray'), 

  (7, 'Whitening', 'Teeth Whitening'), 

  (8, 'Dental Implant', 'Dental Implant Surgery'), 

  (9, 'Orthodontics', 'Orthodontic Treatment'), 

  (10, 'Crown', 'Dental Crown Procedure'); 

  

-- Insert data into Generates table  

INSERT INTO Generates VALUES  

  ('Cleaning', 1), 

  ('Extraction', 2), 

  ('Fillings', 3)

  --More data for testing queries
  INSERT INTO Person (PersonID, FirstName, LastName, SSN, DOB, Sex, MaritalStatus, StudentStatus, Ethnicity, Race, PersonPhone, PersonEmailAddress, PersonType, LocationID) VALUES
(20, 'Alex', 'Smilow', '987654321', '1965-12-25', 'M', 'Married', 'None', 'Non-Hispanic', 'White', 1234567890, 'alex.smilow@example.com', 'Doctor', 1);


INSERT INTO Employee (EmployeeID, Salary) VALUES
(20, 120000);

INSERT INTO Licensed_Employee (LicenseNumber, EmployeeID) VALUES
(111, 20);


INSERT INTO Dentist (LicenseNumber) VALUES
(111);


INSERT INTO Appointment (AppointmentID, Reason, Date, Time, Duration, Status, Rooms, Equipment, ReceptionistID, LicenseNumber, PatientID) VALUES
(11, 'Cleaning', '2024-06-01', '10:00:00', 30, 'Completed', 'Room5', 'Ultrasonic Scaler', 10, 111, 6),
(12, 'Fillings', '2024-06-02', '11:00:00', 45, 'Completed', 'Room5', 'Drill', 10, 111, 2),
(13, 'Root Canal', '2024-06-03', '12:00:00', 60, 'Completed', 'Room5', 'X-ray', 10, 111, 4);


INSERT INTO Completed (AppointmentID, ProcedureType, ProcedureName) VALUES
(11, 'Cleaning', 'Tooth Cleaning'),
(12, 'Fillings', 'Dental Filling'),
(13, 'Root Canal', 'Root Canal Treatment');

INSERT INTO Payment (InvoiceNumber, TotalCharge, RemainingDue, PaymentStatus, PaymentDate, PaymentType) VALUES
(1004, 500.00, 100.00, 'Pending', '2024-05-01', 'Credit'),
(1005, 600.00, 50.00, 'Pending', '2024-04-01', 'Credit'); 

INSERT INTO Billing_Record (BillingRecordID, BillingDate, SupervisingDoctor, DaysPast, InvoiceNumber, SecretaryID, PerUnitProcedure) VALUES
(4, '2024-05-10', 'Dr. Smilow', 45, 1004, 7, 100.00),
(5, '2024-04-10', 'Dr. Smilow', 75, 1005, 7, 50.00); 

INSERT INTO Billing_Patient (PatientID, BillingRecordID, InsuranceCoverage) VALUES
(4, 5, 'Full'),
(5, 4, 'Partial');

INSERT INTO Person (PersonID, FirstName, LastName, SSN, DOB, Sex, MaritalStatus, StudentStatus, Ethnicity, Race, PersonPhone, PersonEmailAddress, PersonType, LocationID) VALUES
(100, 'John', 'Smith', '123456789', '1980-01-01', 'M', 'Single', 'None', 'Caucasian', 'White', 1234567890, 'john.smith@example.com', 'Receptionist', 1);

INSERT INTO Receptionist VALUES
(100);

INSERT INTO Employee VALUES
(100, 50000);