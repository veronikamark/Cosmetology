USE Cosmetology;

SELECT
    p.PatientID,
    p.FirstName AS 'Patient First Name',
    p.LastName AS 'Patient Last Name',
    v.VisitID,
    v.VisitDate,
    v.VisitTime,
    v.VisitStatus,
    d.DoctorID,
    d.FirstName AS 'Doctor First Name',
    d.LastName AS 'Doctor Last Name'
FROM
    Patient p
JOIN Visit v ON p.PatientID = v.PatientID
JOIN Doctor d ON v.DoctorID = d.DoctorID
ORDER BY p.PatientID, v.VisitDate;
