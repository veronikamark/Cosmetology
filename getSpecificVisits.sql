USE Cosmetology;

SELECT
    v.VisitID,
    v.VisitDate,
    v.VisitTime,
    v.VisitStatus,
    p.PatientID,
    p.FirstName AS 'Patient First Name',
    p.LastName AS 'Patient Last Name',
    d.DoctorID,
    d.FirstName AS 'Doctor First Name',
    d.LastName AS 'Doctor Last Name'
FROM
    Visit v
JOIN Patient p ON v.PatientID = p.PatientID
LEFT JOIN Treatment t ON v.TreatmentID = t.TreatmentID
LEFT JOIN Doctor d ON v.DoctorID = d.DoctorID
ORDER BY v.VisitDate;
