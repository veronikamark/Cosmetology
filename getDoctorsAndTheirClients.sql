USE Cosmetology;

SELECT d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName
FROM Doctor d
JOIN Visit v ON d.DoctorID = v.DoctorID
JOIN Patient p ON v.PatientID = p.PatientID;