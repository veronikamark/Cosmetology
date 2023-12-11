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
    d.LastName AS 'Doctor Last Name',
    t.TreatmentID,
    t.Name AS 'Treatment Name',
    t.Duration,
    t.Price
FROM
    Visit v
JOIN Patient p ON v.PatientID = p.PatientID
LEFT JOIN Treatment t ON v.TreatmentID = t.TreatmentID
LEFT JOIN Doctor d ON v.DoctorID = d.DoctorID
WHERE
    v.VisitDate BETWEEN '2023-01-01' AND '2023-01-31'
ORDER BY v.VisitDate, v.VisitTime;