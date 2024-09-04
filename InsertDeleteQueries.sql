use Project1;
--here the insertion must be done in this order, appointment's insertion can be moved below its current location but not above as it will violate refrential integrity
Insert into Address_Info values
(11, 'Room 22', '215 George St', 'Cleveland', 'OH', 45123),
(12, 'Suite 205', '123 High St', 'Columbus','OH',43210);
Select  * from Address_Info where LocationID=11 or LocationID=12;

Insert into Person values
(30, 'Krish', 'Patel', 789456123, '2004-11-01','M', 'Single', 'Full-Time', 'Asian', 'Asian', 1234567894, 'patel.4933@osu.edu', 'Patient',11),
(40, 'Bob', 'Builder', 794613258, '2000-01-01','M', 'Married', 'None', 'Caucasian', 'White', 9876543210, 'bobthebuilder@gmail.com', 'Patient' , 12);
Select * from Person where PersonId = 30 or PersonID= 40;

Insert into Medical_History values
(6, 'None', 'None', 'None', 'None', 'None', 'None'),
(7, 'Jaw Dislocation','None', 'None', 'None', 'None', 'None') ;
Select* from Medical_History where MedHisID=6 or MedHisID=7;

Insert into Patient values
(30, 'N', 'Ram Patel', 'Brother', 1891561235, '2024-06-01', '2024-06-01', null, 'Google', 'Dental Plan B', 'Krish Patel', 10, 6),
(40, 'N', 'Boby Builder', 'Parent', 1569478645, '2024-06-01', '2024-06-01', null, 'Google', 'Dental Plan B', 'Krish Patel', 10, 7);
Select*from Patient where PatientID=30 or PatientID= 40;

Insert into Appointment values
(14, 'Checkup', '2024-07-12', '11:00:00', 30, 'Completed', 'Roomn 1', 'Equipment A', 10, 111, 30),
(15, 'Checkup', '2024-07-13', '11:00:00', 30, 'Completed', 'Roomn 1', 'Equipment A', 10, 111, 40);
Select* from Appointment where AppointmentID=14 or AppointmentID=15;

Insert into Payment values
(1006, 150, 50, 'Partial', '2024-07-12', 'Cash'),
(1007, 150, 0, 'Paid', '2024-07-13', 'Cash');
Select* from Payment where InvoiceNumber=1006 or InvoiceNumber=1007;

Insert into Billing_Record values
(6, '2024-07-12', 'Dr.Smith', 12, 1006, 10, 150),
(7, '2024-07-12', 'Dr.Smith', 11, 1007, 10, 150);
Select * from  Billing_Record where BillingRecordID=6 or BillingRecordID=7;

Insert into Billing_Patient values
(30, 6, 'Partial'),
(40, 7,  'Partial');
Select * from Billing_Patient where (BillingRecordID=6 and PatientID=30) or (BillingRecordID=7 and PatientID=40);

--here appointment can be deleted early because it does not violate any referential integrity constarints as nothing refernces AppointmentID in the entered data
delete from Appointment where AppointmentID=14;
delete from Appointment where AppointmentID=15;
Select* from Appointment where AppointmentID=14 or AppointmentID=15;

--from here the deletion must be in this order otherwise it would violate referntial integrity

Delete from Billing_Patient where PatientID=30 and BillingRecordID=6;
Delete from Billing_Patient where PatientID=40 and BillingRecordID=7;
Select * from Billing_Patient where (BillingRecordID=6 and PatientID=30) or (BillingRecordID=7 and PatientID=40);

Delete from Billing_Record where BillingRecordID=6;
Delete from Billing_Record where BillingRecordID=7;
Select * from  Billing_Record where BillingRecordID=6 or BillingRecordID=7;

Delete from Payment where InvoiceNumber=1006;
Delete from Payment where InvoiceNumber=1007;
Select* from Payment where InvoiceNumber=1006 or InvoiceNumber=1007;


Delete from Patient where PatientID=30;
Delete from Patient where PatientID=40;
Select*from Patient where PatientID=30 or PatientID= 40;

Delete from Medical_History where MedHisID=6;
Delete from Medical_History where MedHisID=7;
Select* from Medical_History where MedHisID=6 or MedHisID=7;

Delete from Person where PersonID=30;
Delete from Person where PersonID=40;
Select * from Person where PersonId = 30 or PersonID= 40;

Delete from Address_Info where LocationID=11;
Delete from Address_Info where LocationID=12;
Select  * from Address_Info where LocationID=11 or LocationID=12;