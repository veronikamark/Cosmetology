USE Cosmetology;

SELECT d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, 
       p1.FirstName AS PatientFirstName, p1.LastName AS PatientLastName
FROM Doctor d
JOIN Visit v ON d.DoctorID = v.DoctorID
JOIN Treatment t ON v.TreatmentID = t.TreatmentID
JOIN Patient p1 ON v.PatientID = p1.PatientID
WHERE t.Name = 'Facial Treatment';