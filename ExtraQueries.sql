use Project1;
--List the names of Employers and how many Patients are employer by them.
SELECT Employer.EmployerName, count(PatientID) as NoOfPatientsEmployed FROM Employer
LEFT JOIN Patient ON Employer.EmployerName=Patient.EmployerName
GROUP BY Employer.EmployerName
ORDER BY NoOfPatientsEmployed DESC;

--List the details of a legal guardian if they have one, and report their relationship an contact information
SELECT PersonID, Legal_Guardian.Relationship, PersonPhone, PersonEmailAddress FROM Person, Legal_Guardian
LEFT JOIN Patient ON Patient.LegalGuardianID=Legal_Guardian.LegalGuardianID
WHERE Person.PersonID=Legal_Guardian.LegalGuardianID;


--Count the total number of patients verified by receptionist with LastName Smith
SELECT count(PatientID) AS PatientsVerified FROM Patient
JOIN Person ON Patient.ReceptionistID=Person.PersonID
AND LastName='Smith'; --results in 0 as no such patient exists




